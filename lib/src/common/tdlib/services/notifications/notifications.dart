/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/extensions/notifications/details.dart';
import 'package:handygram/src/common/tdlib/providers/notifications/notifications.dart';
import 'package:handygram/src/common/tdlib/providers/templates/attachable_box.dart';
import 'package:handygram/src/common/tdlib/providers/templates/hive_mixin.dart';
import 'package:handygram/src/common/tdlib/services/notifications/notification_payload.dart';

class TdlibNotificationsService extends TdlibService
    with AttachableBox, PersistentStateMixin {
  static const String tag = "TdlibNotificationsService";

  static const _kDatabaseEntry = "notifications_service";
  static const _kRestoreDefaultValue = {"receivers": []};
  static final _rng = Random();

  @override
  final databaseEntry = _kDatabaseEntry;

  String get _payloadsEntry =>
      "notifications_service_payloads_db${box?.user.databaseId}";

  /// Used for initializing TDLib from a background push.
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

  /// Handle background push message.
  /// TdlibUserManager must be initialized from push message.
  ///
  /// Destroys user.
  Future<void> handleBackgroundPush() async {
    try {
      await _handlePush();
    } finally {
      await box!.user.destroy();
    }
  }

  /// Handle foreground push message.
  /// [payload] must be a valid payload for processPushMessage.
  Future<void> handleForegroundPush(String payload) async {
    await box!.user.providers.notifications.processPush(payload);
    return _handlePush(false);
  }

  /// Save pushReceiverId.
  Future<void> saveReceiverId(int pushReceiverId) async {
    final entry = {
      "databaseId": box!.user.databaseId,
      "receiverId": pushReceiverId.toString(),
    };

    Map data = await restore(_kRestoreDefaultValue);
    final receivers = List<Map>.from(data['receivers'] ?? []);
    final index = receivers.indexWhere(
      (e) => e["databaseId"] == box!.user.databaseId,
    );
    if (index == -1) {
      receivers.add(entry);
    } else {
      receivers[index] = entry;
    }
    await save({
      'receivers': receivers,
    });
  }

  Future<void> _handlePush([bool fromBackground = true]) async {
    if (!Settings().get(SettingsEntries.enableNotifications)) {
      l.d(tag, "Notifications are disabled");
      return;
    }

    final groups = await _getGroups();
    if (groups.isEmpty) {
      l.d(tag, "No notifications to show");
      return;
    }

    try {
      await _showNotifications(groups, fromBackground);
    } catch (e, st) {
      l.e(tag, "Failed to show notifications: $e\n$st");
    }
  }

  Future<List<td.NotificationGroup>> _getGroups() async {
    final notificationsProvider = box!.user.providers.notifications;
    List<td.NotificationGroup> groups = notificationsProvider.groups;

    if (!notificationsProvider.initialized) {
      updater:
      await for (final update in notificationsProvider.updates.timeout(
        const Duration(seconds: 5),
        onTimeout: (sink) => sink.close(),
      )) {
        switch (update) {
          case NotificationsProviderGroupsUpdate(groups: final groupsUpdated):
            groups = groupsUpdated;
          case NotificationsProviderStateUpdate(canCloseTdlib: final canClose):
            l.d(
              tag,
              canClose
                  ? "All notifications have been received"
                  : "Still receiving notifications...",
            );
            if (canClose) break updater;
        }
      }
    }

    l.d(tag, "Groups count: ${groups.length}");
    return groups;
  }

  Future<void> _showNotifications(
    List<td.NotificationGroup> groups, [
    bool fromBackground = true,
  ]) async {
    final user = box!.user;
    final myId = await user.providers.options.getMaybeCached('my_id');

    if (fromBackground) {
      await loadLocalizations().timeout(const Duration(seconds: 1));
    }

    FlutterLocalNotificationsPlugin notificationsPlugin =
        FlutterLocalNotificationsPlugin();
    await notificationsPlugin.initialize(const InitializationSettings(
      android: AndroidInitializationSettings(kLogoIcon),
    ));
    final active = await notificationsPlugin.getActiveNotifications();

    late final Map<int, NotificationPayload> payloads;
    try {
      final jsonPayloads =
          await PersistentStateMixin.restoreStatic(_payloadsEntry, {});
      payloads = jsonPayloads
          .map((k, v) => MapEntry(k, NotificationPayload.fromJson(v)));
    } catch (e, st) {
      l.d(tag, 'Failed to restore notification payloads: $e\n$st');
      payloads = {};
    }
    final newJsonPayloads = <int, Map>{};

    final chatIds = groups.map((e) => e.chatId);
    final activeIds = active.map((e) => e.id!);
    final activeChatIds = <int?>{};
    l.d(tag,
        "[DB${user.databaseId}] Current: $chatIds, active: ${payloads.values.map((e) => e.chatId)}");

    // Remove no longer needed notifications
    for (final entry in activeIds) {
      final payload = payloads[entry];
      if (payload == null ||
          (!chatIds.contains(payload.chatId) && payload.userId != myId)) {
        await notificationsPlugin.cancel(entry);
        payloads.remove(entry);
        l.d(tag, "Cancelled $entry (${payload?.chatId})");
      } else {
        activeChatIds.add(payload.chatId);
      }
    }

    for (final group in groups) {
      l.d(tag, "Working with group ${group.id}...");
      if (await group.isHidden) {
        l.d(tag, "Group ${group.id} is hidden");
        continue;
      }

      final chat = await user.providers.chats.getChat(group.chatId);
      final payload = NotificationPayload(
        userId: myId,
        chatId: group.chatId,
        notificationsCount: group.notifications.length,
        type: group.type,
      );
      final chatId = group.chatId;
      final body = group.shortDescription;
      final title = chat.title;

      int groupId = _rng.nextInt(pow(2, 16).toInt());

      bool playSound = true;
      if (activeChatIds.contains(chatId)) {
        l.d(tag, "Group already exists...");

        final previousEntry = payloads.entries.firstWhere(
          (e) => e.value.chatId == chatId && e.value.userId == myId,
        );
        final previous = active.firstWhere((e) => e.id == previousEntry.key);
        final previousPayload = previousEntry.value;
        groupId = previous.id!;

        if (payload.notificationsCount == 0) {
          await notificationsPlugin.cancel(groupId);
        }

        if (previousPayload == payload) {
          l.d(tag, "Groups are same, skipping update");
          continue;
        } else {
          l.d(tag, "Groups are not same, proceeding...");
          // play sound only if new message was added
          playSound =
              previousPayload.notificationsCount < payload.notificationsCount;
        }
      }

      // 0 new messages :O
      if (payload.notificationsCount == 0) {
        continue;
      }

      final mainDetails = await group.getDetails(playSound: playSound);
      final jsonPayload = payload.toJson();

      await notificationsPlugin.show(
        groupId,
        title,
        body,
        NotificationDetails(android: mainDetails),
        payload: jsonEncode(jsonPayload),
      );

      newJsonPayloads[groupId] = jsonPayload;
    }

    newJsonPayloads.addEntries(
      payloads.entries
          .where((entry) => entry.value.userId != myId)
          .map((e) => MapEntry<int, Map>(e.key, e.value.toJson())),
    );

    await PersistentStateMixin.saveStatic(_payloadsEntry, newJsonPayloads);
  }
}
