/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/services/templates/attachable_box.dart';

class TdlibNetworkTypeService extends TdlibService
    with ServiceWithAttachableBox {
  static const String tag = "TdlibNetworkTypeService";

  void _notifyAboutNetworkChange(List<ConnectivityResult> cr) async {
    late final td.NetworkType nt;
    if (cr.contains(ConnectivityResult.none)) {
      nt = const td.NetworkTypeNone();
    } else if (cr.contains(ConnectivityResult.wifi)) {
      nt = const td.NetworkTypeWiFi();
    } else if (cr.contains(ConnectivityResult.mobile)) {
      final roaming = await HandyNatives().isRoamingEnabled;
      if (roaming) {
        nt = const td.NetworkTypeMobileRoaming();
      } else {
        nt = const td.NetworkTypeMobile();
      }
    } else {
      nt = const td.NetworkTypeOther();
    }
    await box?.invoke(td.SetNetworkType(type: nt));
    l.d(tag, "Type has changed: $nt");
  }

  StreamSubscription? _sub;

  @override
  void attach(TdlibToolbox toolbox) {
    super.attach(toolbox);
    _sub =
        Connectivity().onConnectivityChanged.listen(_notifyAboutNetworkChange);
  }

  @override
  void detach(TdlibToolbox toolbox) {
    super.detach(toolbox);
    _sub?.cancel();
  }
}
