package ru.tdrk.handygram

import android.Manifest
import android.annotation.SuppressLint
import android.app.Activity
import android.app.usage.StorageStatsManager
import android.content.ContentUris
import android.content.Context
import android.content.pm.PackageManager
import android.media.AudioRecord
import android.os.Build
import android.util.Log
import android.telephony.TelephonyManager
import android.provider.Settings
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkRequest
import android.net.NetworkCapabilities
import android.os.storage.StorageManager
import android.provider.MediaStore
import android.view.ViewConfiguration
import androidx.core.view.ViewConfigurationCompat
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import org.json.JSONArray
import org.json.JSONObject
import java.io.File

class HandyNativesChannel(
    binaryMessenger: BinaryMessenger,
    private val activity: Activity,
    private val isRoundWatch: Boolean
) {
    private val channelName = "ru.tdrk.handygram/natives"
    private val channel: MethodChannel
    private val wearablePackageName = "com.google.android.wearable.app"
    private val appPackageName = activity.packageName
    private val wearableVersion: String?
    private val isWearable: Boolean
    private val appVersion: String
    private val connectivityManager: ConnectivityManager
    private var connCallback: ConnectivityManager.NetworkCallback? = null
    private val scaleFactor: Float
    private val pendingResults: MutableMap<Int, MethodChannel.Result> = mutableMapOf()
    private var opusEncoder: OpusEncoder? = null

    init {
        channel = MethodChannel(binaryMessenger, channelName)
        channel.setMethodCallHandler { c, r ->
            onCall(c, r)
        }
        scaleFactor = ViewConfigurationCompat.getScaledVerticalScrollFactor(
            ViewConfiguration.get(activity), activity
        )
        appVersion = try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU)
                activity.packageManager.getPackageInfo(
                    appPackageName,
                    PackageManager.PackageInfoFlags.of(0)
                )
            else
                activity.packageManager.getPackageInfo(appPackageName, 0)
        } catch (e: PackageManager.NameNotFoundException) {
            null
        }?.versionName?.substring(0, 1) ?: "0"
        val wearableVersion = try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU)
                activity.packageManager.getPackageInfo(
                    wearablePackageName,
                    PackageManager.PackageInfoFlags.of(0)
                )
            else
                activity.packageManager.getPackageInfo(wearablePackageName, 0)
        } catch (e: PackageManager.NameNotFoundException) {
            null
        }?.versionName

        isWearable = wearableVersion != null
        if (isWearable) {
            this.wearableVersion = when (Build.VERSION.SDK_INT) {
                // Wear OS 5.0
                Build.VERSION_CODES.UPSIDE_DOWN_CAKE -> "5.0"

                // Wear OS 4.0
                Build.VERSION_CODES.TIRAMISU -> "4.0"

                // WearOS 3.0 - 3.5
                Build.VERSION_CODES.R -> "3.x"

                // Wear OS 2.x
                Build.VERSION_CODES.P -> "2.x"

                // Wear OS / Android Wear 2.x
                Build.VERSION_CODES.O_MR1 -> "2.x"

                // Android Wear 2.x
                Build.VERSION_CODES.O -> "2.x"
                Build.VERSION_CODES.N_MR1 -> "2.0"

                // Android Wear 1.0 - 1.5
                Build.VERSION_CODES.M -> "1.5"
                Build.VERSION_CODES.LOLLIPOP_MR1 -> "1.3"
                Build.VERSION_CODES.LOLLIPOP -> "1.0"

                else -> "Unknown"
            }
        } else {
            this.wearableVersion = null
        }
        connectivityManager = activity.getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
    }

    fun notifyAboutRotation(value: Float) {
        channel.invokeMethod("bezelWasRotated", value * scaleFactor)
    }

    private fun checkWearOS(result: MethodChannel.Result) {
        result.success(isWearable)
    }

    private fun getWearOSVersion(result: MethodChannel.Result) {
        result.success(wearableVersion)
    }

    private fun getAppVersion(result: MethodChannel.Result) {
        result.success(appVersion)
    }

    private fun getIsRound(result: MethodChannel.Result) {
        result.success(isRoundWatch)
    }

    private fun getStorageStats(result: MethodChannel.Result) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O_MR1) {
            val stats = activity.getSystemService(Context.STORAGE_STATS_SERVICE) as StorageStatsManager
            result.success(mapOf(
                Pair("free", stats.getFreeBytes(StorageManager.UUID_DEFAULT)),
                Pair("total", stats.getTotalBytes(StorageManager.UUID_DEFAULT))
            ))
        } else {
            val data = File("/data")
            result.success(mapOf(
                Pair("free", data.freeSpace),
                Pair("total", data.totalSpace)
            ))
        }
    }

    private fun log(call: MethodCall, result: MethodChannel.Result) {
        val args = call.arguments as List<*>
        val tag = args[0] as String
        val msg = args[1] as String
        val level = args[2] as Int
        Log.println(level, tag, msg)
        result.success(null)
    }

    private fun requestPermissions(permissions: Array<String>, code: Int, result: MethodChannel.Result) {
        if (pendingResults.containsKey(code))
            return

        var granted = true
        for (permission in permissions) {
            if (!granted) break
            if (activity.checkSelfPermission(permission) == PackageManager.PERMISSION_GRANTED) continue
            granted = false
        }
        if (granted) return result.success(true)

        activity.requestPermissions(permissions, code)
        pendingResults[code] = result
    }

    fun onRequestPermissionsResult(requestCode: Int, grantResults: IntArray) {
        val hasPermission = grantResults.fold(true) {
            value, result ->
            if (result != PackageManager.PERMISSION_GRANTED)
                false
            else
                value
        }

        val result = pendingResults[requestCode]
        try {
            when (requestCode) {
                1 -> checkRoamingResult(hasPermission, result)
                2, 3, 4 -> result?.success(hasPermission)
            }
        } finally {
            pendingResults.remove(requestCode)
        }
    }

    @SuppressLint("MissingPermission")
    fun checkRoamingResult(hasPermission: Boolean, result: MethodChannel.Result?)  {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.TIRAMISU) {
            error("WTF")
        }

        if (!hasPermission) {
            result?.success(false)
        } else {
            val tm = activity.getSystemService(Context.TELEPHONY_SERVICE) as TelephonyManager
            result?.success(tm.isDataRoamingEnabled)
        }
    }

    private fun isRoamingEnabled(result: MethodChannel.Result) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            if (!activity.packageManager.hasSystemFeature(PackageManager.FEATURE_TELEPHONY_DATA)) {
                return result.success(false)
            }
            if (activity.checkSelfPermission(Manifest.permission.READ_PHONE_STATE) == PackageManager.PERMISSION_GRANTED) {
                val tm = activity.getSystemService(Context.TELEPHONY_SERVICE) as TelephonyManager
                return result.success(tm.isDataRoamingEnabled)
            }
            requestPermissions(arrayOf(Manifest.permission.READ_PHONE_STATE), 1, result)
        } else {
            return result.success(Settings.Global.getInt(activity.contentResolver, Settings.Global.DATA_ROAMING, 0) != 0)
        }
    }

    private fun requestHighBandwidth(result: MethodChannel.Result) {
        val callback = object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                super.onAvailable(network)
                connectivityManager.bindProcessToNetwork(network)
                result.success(null)
            }
        }
        connectivityManager.requestNetwork(
            NetworkRequest.Builder()
                .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
                .build(),
            callback
        )
        connCallback = callback
    }

    private fun releaseHighBandwidth(result: MethodChannel.Result) {
        connectivityManager.bindProcessToNetwork(null)
        connCallback?.let { connectivityManager.unregisterNetworkCallback(it) }
        result.success(null)
    }

    private fun preparePhotoPicker(result: MethodChannel.Result) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            requestPermissions(
                arrayOf(Manifest.permission.READ_MEDIA_IMAGES),
                2, result)
        } else {
            requestPermissions(
                arrayOf(Manifest.permission.READ_EXTERNAL_STORAGE),
                3, result)
        }
    }

    private fun getLatestPhotos(call: MethodCall, result: MethodChannel.Result) {
        val contentUri =
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q)
                MediaStore.Images.Media.getContentUri(MediaStore.VOLUME_INTERNAL)
            else
                MediaStore.Images.Media.INTERNAL_CONTENT_URI

        val projection = arrayOf(
            MediaStore.Images.Media._ID,
            MediaStore.Images.Media.WIDTH,
            MediaStore.Images.Media.HEIGHT,
            MediaStore.Images.Media.DATE_ADDED,
        )
        val sort = "${MediaStore.Images.Media.DATE_ADDED} ASC"

        val query = activity.contentResolver.query(
            contentUri,
            projection,
            null, null,
            sort,
        );

        val startPos = call.argument<Int>("start_pos") ?: -1

        val photos = JSONArray()
        try {
            query?.use { cursor ->
                val colId = cursor.getColumnIndexOrThrow(MediaStore.Images.Media._ID);
                val widthId = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.WIDTH);
                val heightId = cursor.getColumnIndexOrThrow(MediaStore.Images.Media.HEIGHT);

                cursor.moveToPosition(startPos ?: -1)
                while (cursor.moveToNext()) {
                    val id = cursor.getLong(colId)
                    val width = cursor.getInt(widthId)
                    val height = cursor.getInt(heightId)
                    val position = cursor.position

                    photos.put(mapOf(
                        "uri" to ContentUris.withAppendedId(contentUri, id),
                        "width" to width,
                        "height" to height,
                        "pos" to position,
                    ))

                    if (position >= startPos + 31) break;
                }
            }
        } catch (_ : Exception) {
            return result.error(
                "failedToQuery",
                "Failed to query photos",
                null)
        }

        return result.success(photos.toString())
    }

    private fun prepareRecording(result: MethodChannel.Result) {
        requestPermissions(arrayOf(Manifest.permission.RECORD_AUDIO), 4, result)
    }

    private fun startRecording(call: MethodCall, result: MethodChannel.Result) {
        if (call.argument<Boolean>("resume") != true) {
            try {
                opusEncoder = OpusEncoder(
                    call.argument("output_file")
                        ?: return result.error("no_output_file",
                            "No output file was given",
                            null),
                    activity
                )
            } catch (e : Exception) {
                return result.error("failed_to_init_opusenc",
                    "Failed to init Opus encoder",
                    e.toString())
            }
        }

        try {
            opusEncoder?.start() ?: throw IllegalStateException()
        } catch (e : Exception) {
            return result.error("failed_to_start_opusenc",
                "Failed to start Opus encoder",
                e.toString())
        }

        result.success(null)
    }

    private fun stopRecording(result: MethodChannel.Result) {
        opusEncoder?.let { enc ->
            enc.stop()
            opusEncoder = null
            return result.success(null)
        }

        result.error("no_encoder_found",
            "There was no active recording",
            null)
    }

    private fun pauseRecording(result: MethodChannel.Result) {
        opusEncoder?.let { enc ->
            enc.pause()
            return result.success(null)
        }

        result.error("no_encoder_found",
            "There was no active recording",
            null)
    }

    private fun onCall(call: MethodCall, result: MethodChannel.Result) {
        when (call.method) {
            "isWearOS" -> checkWearOS(result)
            "wearOSVersion" -> getWearOSVersion(result)
            "appVersion" -> getAppVersion(result)
            "isRoundWatch" -> getIsRound(result)
            "log" -> log(call, result)
            "isRoamingEnabled" -> isRoamingEnabled(result)
            "requestHighBandwidth" -> requestHighBandwidth(result)
            "releaseHighBandwidth" -> releaseHighBandwidth(result)
            "getStorageStats" -> getStorageStats(result)
            "preparePhotoPicker" -> preparePhotoPicker(result)
            "getLatestPhotosForPicker" -> getLatestPhotos(call, result)
            "prepareRecording" -> prepareRecording(result)
            "startRecording" -> startRecording(call, result)
            "stopRecording" -> stopRecording(result)
            "pauseRecording" -> pauseRecording(result)
            else -> {}
        }
    }
}
