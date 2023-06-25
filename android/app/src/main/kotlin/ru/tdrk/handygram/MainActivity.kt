package ru.tdrk.handygram

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
import android.net.NetworkInfo
import android.net.NetworkRequest
import android.net.wifi.WifiManager
import android.provider.Telephony
import android.telephony.TelephonyManager
import android.view.MotionEvent
import androidx.annotation.NonNull
import androidx.core.app.ActivityCompat
import com.samsung.wearable_rotary.WearableRotaryPlugin
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel


class MainActivity: FlutterActivity() {
    // Save network to unbind process from it later
    private var lastBoundCallback: ConnectivityManager.NetworkCallback? = null

    // Save MethodChannel
    private lateinit var mc: MethodChannel

    // Re-enable fast network if needed
    private var netWasFast: Boolean = false

    override fun onGenericMotionEvent(event: MotionEvent?): Boolean {
        return when {
            WearableRotaryPlugin.onGenericMotionEvent(event) -> true
            else -> super.onGenericMotionEvent(event)
        }
    }

    override fun onResume() {
        super.onResume()
        if (netWasFast) {
            netWasFast = false
            requestFastNetwork(null)
        }
    }

    override fun onRestart() {
        super.onRestart()
        if (netWasFast) {
            netWasFast = false
            requestFastNetwork(null)
        }
    }

    override fun onStop() {
        super.onStop()
        if (lastBoundCallback != null) {
            netWasFast = true
            stopFastNetwork(null)
        }
    }

    override fun onPause() {
        super.onPause()
        if (lastBoundCallback != null) {
            netWasFast = true
            stopFastNetwork(null)
        }
    }

    private fun stopFastNetwork(result: MethodChannel.Result?) {
        if (lastBoundCallback == null) {
            return
        }

        val connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        connectivityManager.bindProcessToNetwork(null)
        connectivityManager.unregisterNetworkCallback(lastBoundCallback ?: return)
        lastBoundCallback = null

        mc.invokeMethod(
            "updateNetworkState", mapOf<String, String>(
                "state" to "available",
                "type" to "bluetooth",
                "internet" to "true",
            ),
        )

        result?.success(true)
    }

    private fun getNetInfo(network: Network, caps: NetworkCapabilities?): Map<String, String> {
        val type = if (caps != null)
            if (caps.hasTransport(NetworkCapabilities.TRANSPORT_WIFI))
                "wifi"
            else
                "cellular"
        else
            return mapOf(
                "type" to "unknown",
                "internet" to "false",
            )

        return mapOf(
            "type" to type,
            "internet" to caps.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET).toString(),
        )
    }

    private fun getNetInfo(network: Network): Map<String, String> {
        val connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        return getNetInfo(network, connectivityManager.getNetworkCapabilities(network))
    }

    private fun requestFastNetwork(result: MethodChannel.Result?) {
        if (lastBoundCallback != null) {
            result?.success(true)
            return
        }

        val connectivityManager = getSystemService(Context.CONNECTIVITY_SERVICE) as ConnectivityManager
        lastBoundCallback = object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) {
                super.onAvailable(network)
                runOnUiThread {
                    mc.invokeMethod(
                        "updateNetworkState", mapOf<String, String>(
                            "state" to "available",
                        ).plus(getNetInfo(network)),
                    )
                }
                connectivityManager.bindProcessToNetwork(network)
            }

            override fun onCapabilitiesChanged(
                network: Network,
                caps: NetworkCapabilities
            ) {
                super.onCapabilitiesChanged(network, caps)
                runOnUiThread {
                    mc.invokeMethod(
                        "updateNetworkState",
                        mapOf<String, String>(
                            "state" to "changed",
                        ).plus(getNetInfo(network, caps)),
                    )
                }
            }

            override fun onLost(network: Network) {
                super.onLost(network)
                runOnUiThread {
                    mc.invokeMethod(
                        "updateNetworkState",
                        mapOf<String, String>(
                            "state" to "lost",
                        ).plus(getNetInfo(network)),
                    )
                }
            }
        }
        connectivityManager.requestNetwork(
            NetworkRequest.Builder()
                .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
                .addTransportType(NetworkCapabilities.TRANSPORT_CELLULAR)
                .build(),
            lastBoundCallback ?: return,
        )
        result?.success(true)
    }

    private fun checkForWearOS(result: MethodChannel.Result) {
        // WearOS do not have WebView and some other features.
        // Let's assume that device without WebView is default Android one.
        val hasWebView = packageManager.hasSystemFeature(PackageManager.FEATURE_WEBVIEW);
        result.success(!hasWebView)
    }

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        mc = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL);
        mc.setMethodCallHandler {
            call, result ->
            when (call.method) {
                "requestFastNetwork" -> requestFastNetwork(result)
                "stopFastNetwork" -> stopFastNetwork(result)
                "isWearOS" -> checkForWearOS(result)
                else -> result.notImplemented()
            }
        }
    }

    companion object {
        private const val CHANNEL = "ru.tdrk.handygram/native"
    }
}
