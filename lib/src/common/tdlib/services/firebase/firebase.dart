/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/client/management/multi_manager.dart';
import 'package:handygram/src/common/tdlib/client/management/rx/client.dart';
import 'package:handygram/src/common/tdlib/client/management/user_manager.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/extensions/notifications/details.dart';
import 'package:handygram/src/common/tdlib/providers/notifications/notifications.dart';
import 'package:handygram/src/common/tdlib/providers/templates/hive_mixin.dart';
import 'package:handygram/src/common/tdlib/runner/runner.dart';

enum FirebaseStatus {
  loading,
  unsupported,
  noPermissions,
  error,
  running,
}

class TdlibFirebaseService extends TdlibService with PersistentStateMixin {
  static const String tag = "TdlibFirebaseService";

  StreamSubscription? _sub, _tokenSub;
  late final TdlibToolbox _box;

  static FirebaseStatus status = FirebaseStatus.loading;
  static final StreamController<FirebaseStatus> _statuses =
      StreamController.broadcast();
  static final Stream<FirebaseStatus> statuses = _statuses.stream;

  static const _kDatabaseEntry = "firebase_service";
  static const _kRestoreDefaultValue = {"receivers": []};

  @override
  final databaseEntry = _kDatabaseEntry;

  @pragma('vm:entry-point')
  static Future<void> backgroundHandler(
    RemoteMessage message,
  ) async {
    const tag = "TdlibFirebaseService-BG";
    l.d(tag, "Received FCM message", true);
    late final TdlibUserManager? user;
    try {
      user = await TdlibRunner.fromFirebase(message);
      if (user == null) {
        l.e(tag, "Couldn't start TDLib", true);
        await TdlibReceiveManager.instance.dispose();
        return;
      }
    } catch (e, st) {
      l.e(tag, "Failed to init user: $e\n$st");
      return;
    }

    final groups = await _getGroups(user);
    await loadLocalizations();
    try {
      await _showNotifications(groups, user);
    } catch (e, st) {
      l.e(tag, "Failed to show notifications: $e\n$st");
    } finally {
      await user.destroy();
    }
  }

  Future<void> _foregroundHandler(
    RemoteMessage message,
  ) async {
    final payload = TdlibRunner.getPayload(message);
    await CurrentAccount.providers.notifications.processPush(payload);

    final groups = await _getGroups(CurrentAccount.instance.user);
    try {
      await _showNotifications(groups, CurrentAccount.instance.user);
    } catch (e, st) {
      l.e(tag, "Failed to show notifications: $e\n$st");
    }
  }

  static Future<List<td.NotificationGroup>> _getGroups(
      TdlibUserManager user) async {
    List<td.NotificationGroup> groups = user.providers.notifications.groups;
    if (!user.providers.notifications.initialized) {
      updater:
      await for (final update in user.providers.notifications.updates.timeout(
        const Duration(seconds: 5),
        onTimeout: (sink) => sink.close(),
      )) {
        switch (update) {
          case NotificationsProviderGroupsUpdate(groups: final groupsUpdated):
            groups = groupsUpdated;
            break updater;
          default:
            break;
        }
      }
    }
    l.d(tag, "Groups count: ${groups.length}");
    return groups;
  }

  static Future<void> _showNotifications(
    List<td.NotificationGroup> groups,
    TdlibUserManager user,
  ) async {
    FlutterLocalNotificationsPlugin notificationsPlugin =
        FlutterLocalNotificationsPlugin();
    notificationsPlugin.initialize(const InitializationSettings(
      android: AndroidInitializationSettings(kLogoIcon),
    ));

    await notificationsPlugin.cancelAll();
    final active = await notificationsPlugin.getActiveNotifications();

    final activeIds = active.where((e) => e.id != null).map((e) => e.id!);
    final expectedIds = [
      for (final group in groups) ...[group.id, group.id * 1000]
    ];

    // Remove no longer needed notifications
    final removedIds = activeIds.where((id) => !expectedIds.contains(id));
    for (final id in removedIds) {
      notificationsPlugin.cancel(id);
    }

    for (final group in groups) {
      if (await group.isHidden) continue;

      final chat = await user.providers.chats.getChat(group.chatId);
      final mainId = group.id, summaryId = group.id * 1000;
      final mainDetails = await group.details,
          summaryDetails = await group.summaryDetails;
      final body = group.shortDescription;
      final title = chat.title;

      if (activeIds.contains(mainId) && activeIds.contains(summaryId)) {
        final previous = active.firstWhere((n) => n.id == mainId);

        // this is barely enough to check if notifications are the same
        if (previous.title == title &&
            previous.body == body &&
            previous.channelId == mainDetails.channelId) {
          continue;
        }
      }

      await notificationsPlugin.show(
        group.id,
        title,
        body,
        NotificationDetails(android: mainDetails),
      );
      await notificationsPlugin.show(
        group.id * 1000,
        title,
        body,
        NotificationDetails(android: summaryDetails),
      );
    }
  }

  static Future<int?> getDatabaseId(td.PushReceiverId pushReceiverId) async {
    final data = await PersistentStateMixin.restoreStatic(
      _kDatabaseEntry,
      _kRestoreDefaultValue,
    );
    final receivers = List<Map>.from(data['receivers']);
    return receivers
        .where((e) => e["receiverId"] == pushReceiverId.id.toString())
        .firstOrNull?["databaseId"];
  }

  Future<void> _registerFCM() async {
    if (!await FirebaseMessaging.instance.isSupported()) {
      l.e(tag, "Firebase is unsupported on this device");
      status = FirebaseStatus.unsupported;
      return;
    }

    final permissions = await FirebaseMessaging.instance.requestPermission();
    if (permissions.authorizationStatus == AuthorizationStatus.denied ||
        permissions.authorizationStatus == AuthorizationStatus.notDetermined) {
      l.w(tag, "User had denied app to send notifications");
      status = FirebaseStatus.noPermissions;
      return;
    }
    l.d(
      tag,
      "Notifications permission: ${permissions.authorizationStatus.name}",
    );

    String? token = await FirebaseMessaging.instance.getToken();
    if (token == null) {
      l.e(tag, "Failed to get Firebase token");
      status = FirebaseStatus.error;
      return;
    }

    _tokenSub = FirebaseMessaging.instance.onTokenRefresh.listen(
      _onFCMTokenChange,
    );

    _registerFCMToken(token);
  }

  void _onFCMTokenChange(String token) async {
    try {
      l.i(tag, "FCM token was changed");
      await _registerFCMToken(token);
    } catch (e) {
      l.e(tag, "Failed to update FCM token: $e");
    }
  }

  Future<void> _registerFCMToken(String token) async {
    List<int> ids = [];
    for (final clientId in TdlibMultiManager.instance.clientIds) {
      if (clientId == _box.clientId) continue;
      final user = TdlibMultiManager.instance.fromClientId(clientId);
      if (user == null) continue;
      final td.User me;
      try {
        me = await user.providers.users.getMe();
      } on TdlibCoreException {
        // may be uninitialized yet
        return;
      }
      ids.add(me.id);
    }

    final receiver = await _box.invoke(
      td.RegisterDevice(
        deviceToken: td.DeviceTokenFirebaseCloudMessaging(
          token: token,
          encrypt: true,
        ),
        otherUserIds: ids,
      ),
      timeout: const Duration(seconds: 30),
    );

    if (receiver is td.TdError) {
      l.e(tag, "Failed to register device: ${receiver.message}");
      status = FirebaseStatus.error;
      return;
    } else if (receiver == null) {
      l.e(tag, "No PushReceiverId. Is your GCM API key right?");
      status = FirebaseStatus.error;
      return;
    } else if (receiver is! td.PushReceiverId) {
      l.e(tag, "Wrong object ${receiver.runtimeType}, expected PushReceiverId");
      status = FirebaseStatus.error;
      return;
    }

    final entry = {
      "databaseId": _box.user.databaseId,
      "receiverId": receiver.id.toString(),
    };

    Map data = await restore(_kRestoreDefaultValue);
    final receivers = List<Map>.from(data['receivers'] ?? []);
    final index = receivers.indexWhere(
      (e) => e["databaseId"] == _box.user.databaseId,
    );
    if (index == -1) {
      receivers.add(entry);
    } else {
      receivers[index] = entry;
    }
    await save({
      'receivers': receivers,
    });

    FirebaseMessaging.onMessage.listen(_foregroundHandler);

    status = FirebaseStatus.running;
    l.d(
      tag,
      "Registered Firebase with receiver ID ${receiver.id} / token $token",
    );
  }

  @override
  Future<void> onAuthorized() async {
    await _registerFCM();
  }

  @override
  Future<void> attach(TdlibToolbox toolbox) async {
    await super.attach(toolbox);
    _box = toolbox;
  }

  @override
  void detach(TdlibToolbox toolbox) {
    _sub?.cancel();
    _tokenSub?.cancel();
  }
}
