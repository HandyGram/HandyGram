import 'package:flutter/services.dart';
export 'tdlib_utils.dart';

void boostNetwork() {
  const MethodChannel("ru.tdrk.handygram/networkbooster").invokeMethod("boost");
}
