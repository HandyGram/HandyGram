/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/services/firebase/firebase.dart';
import 'package:handygram/src/common/tdlib/services/network_type/network_type.dart';
import 'package:handygram/src/common/tdlib/services/notifications/notifications.dart';
import 'package:handygram/src/common/tdlib/services/options/options.dart';

class TdlibServicesCombine {
  static const String tag = "TdlibServicesCombine";

  final TdlibNetworkTypeService networkType = TdlibNetworkTypeService();
  final TdlibDefaultOptionsService defaultOptions =
      TdlibDefaultOptionsService();
  final TdlibFirebaseService firebase = TdlibFirebaseService();
  final TdlibNotificationsService notifications = TdlibNotificationsService();

  late final List<TdlibService> _services = !isLite
      ? [
          networkType,
          defaultOptions,
          notifications,
          firebase,
        ]
      : [
          defaultOptions,
          notifications,
        ];

  final bool isLite;

  Future<void> attach(TdlibToolbox box) async {
    for (final s in _services) {
      try {
        await s.attach(box);
      } catch (e, st) {
        l.e(tag, "Failed to attach ${s.runtimeType}: $e\n$st");
      }
    }
  }

  Future<void> detach(TdlibToolbox box) async {
    for (final s in _services) {
      try {
        await s.detach(box);
      } catch (e, st) {
        l.e(tag, "Failed to detach ${s.runtimeType}: $e\n$st");
      }
    }
  }

  Future<void> onTdlibReady() async {
    for (final s in _services) {
      try {
        await s.onTdlibReady();
      } catch (e, st) {
        l.e(tag, "Exception on ${s.runtimeType}.onTdlibReady(): $e\n$st");
      }
    }
  }

  Future<void> onAuthorized() async {
    for (final s in _services) {
      try {
        await s.onAuthorized();
      } catch (e, st) {
        l.e(tag, "Exception on ${s.runtimeType}.onAuthorized(): $e\n$st");
      }
    }
  }

  TdlibServicesCombine(this.isLite);
}
