import 'package:flutter/services.dart';
import 'package:handygram/src/misc/settings_db.dart';
export 'tdlib_utils.dart';

void boostNetwork() {
  const MethodChannel("ru.tdrk.handygram/networkbooster").invokeMethod("boost");
}

double scaleText(double prevSize) => prevSize * settingsStorage.textScale;
