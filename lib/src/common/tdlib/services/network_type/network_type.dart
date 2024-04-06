import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handy_tdlib/api.dart' as td;

class TdlibNetworkTypeService extends TdlibService {
  static const String tag = "TdlibNetworkTypeService";

  StreamSubscription? _sub;
  late final TdlibToolbox _box;

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
    await _box.invoke(td.SetNetworkType(type: nt));
    l.d(tag, "Type has changed: $nt");
  }

  @override
  void attach(TdlibToolbox toolbox) {
    _box = toolbox;
    _sub =
        Connectivity().onConnectivityChanged.listen(_notifyAboutNetworkChange);
  }

  @override
  void detach(TdlibToolbox toolbox) {
    _sub?.cancel();
  }
}