package ru.tdrk.handygram

import android.content.pm.PackageManager
import android.os.Bundle
import android.os.PersistableBundle
import android.view.MotionEvent
import androidx.core.view.InputDeviceCompat
import androidx.core.view.MotionEventCompat
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.pathprovider.PathProviderPlugin
import io.flutter.plugins.firebase.messaging.FlutterFirebaseMessagingPlugin

class MainActivity: FlutterActivity() {
  private var channel: HandyNativesChannel? = null

  override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
    super.onCreate(savedInstanceState, persistentState)
    flutterEngine?.let {
      channel = HandyNativesChannel(
        it.dartExecutor.binaryMessenger,
        this,
        activity.resources.configuration.isScreenRound
      )
    }
  }

  override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
    super.configureFlutterEngine(flutterEngine)
    channel = HandyNativesChannel(
      flutterEngine.dartExecutor.binaryMessenger,
      this,
      activity.resources.configuration.isScreenRound
    )
  }

  override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
    when (requestCode) {
      1 -> {
        channel?.checkRoamingResult(
                grantResults.isNotEmpty() &&
                        grantResults[0] == PackageManager.PERMISSION_GRANTED)
      }
    }
    return super.onRequestPermissionsResult(requestCode, permissions, grantResults)
  }

  override fun onGenericMotionEvent(event: MotionEvent?): Boolean {
    if ((event?.action == MotionEvent.ACTION_SCROLL) && event.isFromSource(InputDeviceCompat.SOURCE_ROTARY_ENCODER)) {
      val delta = -event.getAxisValue(MotionEventCompat.AXIS_SCROLL)
      channel?.notifyAboutRotation(delta)
    }

    return super.onGenericMotionEvent(event)
  }
}
