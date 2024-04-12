import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:handy_tdlib/api.dart' as td;
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

    List<td.NotificationGroup> groups = user.providers.notifications.groups;
    if (!user.providers.notifications.initialized) {
      updater:
      await for (final update in user.providers.notifications.updates.timeout(
        const Duration(seconds: 5),
        onTimeout: (sink) => sink.close(),
      )) {
        switch (update) {
          case NotificationsProviderStateUpdate(canCloseTdlib: final canClose):
            if (canClose) break updater;
          case NotificationsProviderGroupsUpdate(groups: final groupsUpdated):
            groups = groupsUpdated;
        }
      }
    }

    try {
      await _showNotifications(groups, user);
    } finally {
      await user.destroy();
    }
  }

  static Future<void> _showNotifications(
    List<td.NotificationGroup> groups,
    TdlibUserManager user,
  ) async {
    await loadLocalizations();

    FlutterLocalNotificationsPlugin notificationsPlugin =
        FlutterLocalNotificationsPlugin();
    notificationsPlugin.initialize(const InitializationSettings(
      android: AndroidInitializationSettings(kLogoIcon),
    ));

    await notificationsPlugin.cancelAll();
    final active = await notificationsPlugin.getActiveNotifications();
    final groupIds = groups.map((e) => e.id);
    active.removeWhere(
      (e) =>
          e.id != null &&
          (groupIds.contains(e.id) || groupIds.contains(e.id! * 1000)),
    );
    for (final id in active.map((e) => e.id)) {
      if (id != null) await notificationsPlugin.cancel(id);
    }

    for (final group in groups) {
      final chat = await user.providers.chats.getChat(group.chatId);
      await notificationsPlugin.show(
        group.id,
        chat.title,
        group.shortDescription,
        NotificationDetails(android: await group.details),
      );
      await notificationsPlugin.show(
        group.id * 1000,
        chat.title,
        group.shortDescription,
        NotificationDetails(android: await group.summaryDetails),
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
      final me = await user.providers.users.getMe();
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
