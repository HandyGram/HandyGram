/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handy_tdlib/client.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/client/management/multi_manager.dart';
import 'package:handygram/src/common/tdlib/client/management/rx/client.dart';
import 'package:handygram/src/common/tdlib/client/management/user_manager.dart';
import 'package:handygram/src/common/tdlib/client/td/parameters.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_states.dart';
import 'package:handygram/src/common/tdlib/services/firebase/firebase.dart';

class TdlibRunner {
  static const String tag = "TdlibRunner";
  static const debug = false;

  static Future<void> _restoreSessions() async {
    final ver = HandyNatives().appVersion;
    l.i(tag, "Welcome to HandyGram v$ver!");

    await _setVerbosityLevel();

    if (!TdlibReceiveManager.instance.active) {
      final result = await TdlibReceiveManager.instance.subscribe();
      if (!result) {
        throw const TdlibCoreException(tag, "Failed to start RxWorker");
      }
    }

    final m = TdlibMultiManager();
    final ids = await m.restoreDatabaseIds();

    await _closeRedundantSessions(ids.length);

    if (ids.isEmpty) {
      await Directory(await TdlibParameters.getDatabasesRoot()).create(
        recursive: true,
      );

      /// First start or logout with single account.
      await m.create(0);
    } else {
      for (final id in ids) {
        await m.create(id);
      }
    }
  }

  static Future<void> _setVerbosityLevel() async {
    return Isolate.run(() async {
      await TdPlugin.initialize();
      TdPlugin.instance.tdExecute(
        jsonEncode(
          const td.SetLogVerbosityLevel(
            newVerbosityLevel: debug ? 8 : 1,
          ).toJson(),
        ),
      );
    });
  }

  static Future<void> _closeRedundantSessionsWorker(
      (ReceivePort, int, bool) data) async {
    await TdPlugin.initialize();
    final clientId = TdPlugin.instance.tdCreateClientId();
    final stream = data.$1;
    final count = data.$2;
    final closeAll = data.$3;
    l.i(tag, "Sample client ID is $clientId", true);

    final bs = stream.asBroadcastStream();
    final startId = min(
      clientId,
      max(1, closeAll ? 1 : clientId - count),
    );
    for (int i = startId; i <= clientId; i++) {
      TdPlugin.instance.tdSend(i, jsonEncode(const td.Close().toJson(1234)));
      await for (final obj in bs) {
        if (obj is! td.TdObject) continue;
        if (obj.clientId != i) continue;

        if (obj is td.UpdateAuthorizationState) {
          if (obj.authorizationState is td.AuthorizationStateClosing) {
            l.i(tag, "Almost done with closing session $i...", true);
            continue;
          } else if (obj.authorizationState is td.AuthorizationStateClosed) {
            l.i(tag, "Closed session $i", true);
            break;
          }
        }

        if (obj.extra != 1234) continue;
        if (obj is td.TdError) {
          l.w(tag, "Failed to close session $i: ${obj.message}", true);
          break;
        } else if (obj is td.Ok) {
          l.i(tag, "Closing session $i...", true);
        }
      }
    }

    return;
  }

  static Future<void> _closeRedundantSessions(int dbsCount,
      {bool closeAll = false}) async {
    ReceivePort rx = ReceivePort();
    await Isolate.spawn(
      (data) async {
        final ReceivePort rx = ReceivePort();
        final tx = data.$1;
        final count = data.$2;
        final closeAll = data.$3;
        tx.send(rx.sendPort);
        try {
          await _closeRedundantSessionsWorker((rx, count, closeAll));
        } catch (e, st) {
          l.e(tag, "Failed to clean up sessions: $e\n$st", true);
        }
        tx.send(null);
        rx.close();
      },
      (rx.sendPort, dbsCount, closeAll),
    );
    StreamSubscription? sub;
    SendPort? tx;
    await for (final data in rx) {
      if (data is SendPort) {
        tx = data;
        sub = TdlibReceiveManager.instance.objects.listen(
          (d) => tx?.send(d),
        );
      } else if (data == null) {
        sub?.cancel();
        rx.close();
        return;
      }
    }
  }

  static Future<void> fromUIThread() async {
    // Restore databases list if we have no active clients
    // In case of no databases, it lovely creates a blank one
    if (TdlibMultiManager.instance.clientIds.isEmpty) {
      l.d(tag, "Loading TDLib...");
      await _restoreSessions();
    }

    // Skip TDLib setup if CurrentAccount is already set
    // In case of logout, it'll be set to -1 or first available database
    if (CurrentAccount.instance.clientId != -1) return;

    // Load last database or use a blank one, then start user manager for it
    l.d(tag, "Setting up TDLib...");
    final lastDb = Settings().get(SettingsEntries.lastDatabaseId);
    late final TdlibUserManager user;
    if (lastDb != null) {
      l.d(tag, "Loading last database: $lastDb");
      try {
        user = TdlibMultiManager().fromDatabaseId(lastDb)!;
      } catch (e) {
        l.e(tag, "Error while loading DB: $e");
        Settings().put(SettingsEntries.lastDatabaseId, 0);

        // TODO: rework. this is dangerous.
        l.d(tag, "Cleaning up databases...");
        await Directory(await TdlibParameters.getDatabasesRoot()).delete(
          recursive: true,
        );
        await Directory(await TdlibParameters.getDatabasesRoot()).create(
          recursive: true,
        );

        l.d(tag, "Creating DB 0...");

        /// First start or logout with single account.
        await TdlibMultiManager.instance.create(0);
        user = TdlibMultiManager().fromDatabaseId(0)!;
      }
    } else {
      l.d(tag, "Loading brand new database: 0");
      user = TdlibMultiManager().fromDatabaseId(0)!;
    }

    l.d(tag, "Client ID: ${user.clientId} / ${user.databaseId}");
    CurrentAccount.instance.clientId = user.clientId;
    Settings().put(SettingsEntries.lastDatabaseId, user.databaseId);
  }

  static bool _initialized = false;
  static Future<void> _initThings() async {
    if (_initialized) return;
    await TdPlugin.initialize();
    await Settings.start();
    await HandyNatives().init();
    _initialized = true;
  }

  /// Get payload from Firebase notification
  static String getPayload(RemoteMessage message) {
    final payload = <String, dynamic>{
      "google.sent_time": message.sentTime?.millisecondsSinceEpoch,
    };
    final sound = message.notification?.android?.sound;
    if (sound != null) {
      payload["google.notification.sound"] = sound;
    }
    payload.addAll(message.data);
    return jsonEncode(payload);
  }

  /// Lite TDLib runner. Requires clientId and databaseId.
  static Future<TdlibUserManager> fromBackground({
    required int clientId,
    required int databaseId,
  }) async {
    // This runner should be ran from BG thread, which doesn't have any
    // HandyGram things initialized.
    await _initThings();
    await _setVerbosityLevel();

    if (!TdlibReceiveManager.instance.active) {
      final result = await TdlibReceiveManager.instance.subscribe();
      if (!result) {
        throw const TdlibCoreException(tag, "Failed to start RxWorker");
      }
    }

    final user = await TdlibMultiManager.instance.createLite(
      databaseId,
      clientId,
    );
    CurrentAccount.instance.clientId = user;
    try {
      final ver = await CurrentAccount.providers.options.get("version");
      l.i(tag, "Running with TDLib $ver");
    } catch (e, st) {
      l.e(tag, "Error while getting version: $e\n$st");
      rethrow;
    }

    return CurrentAccount.instance.user;
  }

  /// Lite TDLib runner. Runs only one client, retrieved from push
  static Future<TdlibUserManager?> fromFirebase(
    RemoteMessage message,
  ) async {
    // This runner should be ran from BG thread, which doesn't have any
    // HandyGram things initialized.
    await _initThings();

    final payload = getPayload(message);
    late final td.TdObject? pushReceiverId;
    try {
      pushReceiverId = td.convertJsonToObject(
        TdPlugin.instance.tdExecute(jsonEncode(
          td.GetPushReceiverId(
            payload: payload,
          ).toJson(),
        )),
      );
    } catch (e) {
      l.e(tag, "Failed to get PushReceiverId: $e");
      return null;
    }
    if (pushReceiverId == null) {
      l.e(tag, "Notification's PushReceiverId is null! Payload: $payload",
          true);
      return null;
    }
    if (pushReceiverId is! td.PushReceiverId) {
      if (pushReceiverId is td.TdError) {
        l.e(
          tag,
          "Error while getting push receiver ID: ${pushReceiverId.message}",
          true,
        );
      }
      return null;
    }

    final databaseId = await TdlibFirebaseService.getDatabaseId(pushReceiverId);
    if (databaseId == null) {
      l.e(tag, "No receiverId ${pushReceiverId.id}", true);
      return null;
    }

    final clientId = TdPlugin.instance.tdCreateClientId();
    TdlibUserManager? user = await fromBackground(
      databaseId: databaseId,
      clientId: clientId,
    );

    // ProcessPushNotification requires initialized TDLib instance
    try {
      await user.providers.authorizationState
          .waitForState<AuthorizationStateReady>(
        const Duration(seconds: 2),
      );
    } catch (e, st) {
      l.e(tag, "Error on TDLib initialization: $e\n$st", true);
      TdlibMultiManager.instance.destroy(databaseId: databaseId);
      return null;
    }

    try {
      final result = await user.providers.notifications.processPush(payload);
      if (!result) {
        await TdlibMultiManager.instance.destroy(databaseId: user.databaseId);
        return null;
      }
    } on TdlibCoreException {
      await TdlibMultiManager.instance.destroy(databaseId: user.databaseId);
      return null;
    }

    l.i(tag, "Running from push");
    return user;
  }
}
