import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:handygram/src/misc/log.dart';

enum NetworkType {
  wifi,
  cellular,
  bluetooth,
  unknown,
}

class NetworkInfo {
  final bool isConnected;
  final bool hasInternetConnection;
  final NetworkType type;

  const NetworkInfo(
    this.type,
    this.isConnected,
    this.hasInternetConnection,
  );
}

class HandyNatives extends ChangeNotifier {
  static const _mc = MethodChannel("ru.tdrk.handygram/native");

  Future<bool?> requestFastNetwork() => _mc.invokeMethod<bool>(
        "requestFastNetwork",
      );
  Future<bool?> stopFastNetwork() => _mc.invokeMethod<bool>(
        "stopFastNetwork",
      );
  Future<bool?> checkIsWearOS() => _mc.invokeMethod<bool>(
        "isWearOS",
      );

  NetworkInfo? networkInfo;

  Future<void> _handleNetworkState(MethodCall call) async {
    Map args = call.arguments;
    l.i("NetworkState", args.toString());
    NetworkType type = switch (args["type"]) {
      "wifi" => NetworkType.wifi,
      "cellular" => NetworkType.cellular,
      "bluetooth" => NetworkType.bluetooth,
      _ => NetworkType.unknown,
    };
    bool isConnected =
        args["state"] == "available" || args["state"] == "changed";
    bool hasInternet = args["internet"] == "true";
    networkInfo = NetworkInfo(type, isConnected, hasInternet);
    notifyListeners();
  }

  Future<void> _handleUnknown(MethodCall call) async {
    l.e("NativeRX", "${call.method} is unknown");
  }

  Future<dynamic> _handleNative(MethodCall call) => switch (call.method) {
        "updateNetworkState" => _handleNetworkState(call),
        _ => _handleUnknown(call),
      };

  HandyNatives() {
    _mc.setMethodCallHandler(_handleNative);
  }
}
