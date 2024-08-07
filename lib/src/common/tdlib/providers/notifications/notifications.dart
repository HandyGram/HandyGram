/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class NotificationGroupFilled {}

sealed class NotificationsProviderUpdate {
  const NotificationsProviderUpdate();
}

final class NotificationsProviderStateUpdate
    extends NotificationsProviderUpdate {
  final bool canCloseTdlib;
  const NotificationsProviderStateUpdate(this.canCloseTdlib);
}

final class NotificationsProviderGroupsUpdate
    extends NotificationsProviderUpdate {
  final List<td.NotificationGroup> groups;

  const NotificationsProviderGroupsUpdate(this.groups);
}

class NotificationsProvider
    extends TdlibDataUpdatesProvider<NotificationsProviderUpdate> {
  static const String tag = "NotificationsProvider";

  final List<td.NotificationGroup> _groups = [];
  bool _initialized = false;

  bool get initialized => _initialized;
  List<td.NotificationGroup> get groups => _groups;

  @override
  bool get isSync => true;

  Future<void> _updateNotificationInGroup(
    int groupId,
    td.Notification notification,
  ) async {
    final groupIndex = _groups.indexWhere((e) => e.id == groupId);
    if (groupIndex == -1) return;

    final notifIndex = _groups[groupIndex]
        .notifications
        .indexWhere((e) => e.id == notification.id);
    if (notifIndex == -1) return;

    _groups[groupIndex].notifications[notifIndex] = notification;
    update(NotificationsProviderGroupsUpdate(_groups));
  }

  Future<void> _updateNotificationGroup(
    td.UpdateNotificationGroup update,
  ) async {
    final groupIndex =
        _groups.indexWhere((e) => e.id == update.notificationGroupId);
    if (groupIndex == -1) return;

    _groups[groupIndex] = td.NotificationGroup(
      chatId: update.chatId,
      id: update.notificationGroupId,
      type: update.type,
      totalCount: update.totalCount,
      notifications: _groups[groupIndex].notifications
        ..addAll(update.addedNotifications)
        ..removeWhere(
          (e) => update.removedNotificationIds.contains(e.id),
        )
        ..sort((p, n) => p.id.compareTo(n.id)),
    );
    this.update(NotificationsProviderGroupsUpdate(_groups));
  }

  Future<void> _updatePendingNotifications(
    bool delayed,
    bool unreceived,
  ) async {
    _initialized = !delayed && !unreceived;
    update(NotificationsProviderStateUpdate(initialized));
  }

  Future<void> _updateActiveNotifications(
      List<td.NotificationGroup> groups) async {
    _groups.clear();
    _groups.addAll(groups);
    update(NotificationsProviderGroupsUpdate(groups));
  }

  Future<void> removeNotificationGroup(int groupId) async {
    final group = _groups.where((e) => e.id == groupId).firstOrNull;
    if (group == null) return;
    await box?.invoke(
      td.RemoveNotificationGroup(
        notificationGroupId: group.id,
        maxNotificationId: group.notifications.fold(
          group.notifications.first.id,
          (i, n) => n.id > i ? n.id : i,
        ),
      ),
    );
  }

  Future<void> removeNotification(int groupId, int id) async {
    final obj = await box?.invoke(
      td.RemoveNotification(
        notificationGroupId: groupId,
        notificationId: id,
      ),
    );
    if (obj is td.TdError) {
      l.e(tag, "Failed to remove notification $groupId:$id - ${obj.message}");
    }
  }

  Future<bool> processPush(String payload) async {
    final obj = await box?.invoke(
      td.ProcessPushNotification(
        payload: payload,
      ),
    );
    if (obj is td.TdError) {
      l.e(tag, "Failed to process push: ${obj.message}");
      if (obj.code == 406) {
        return false;
      } else {
        // TODO: loc_key error handling
        return false;
      }
    }
    return obj != null;
  }

  @override
  Future<void> updatesListener(td.TdObject obj) async {
    switch (obj) {
      case td.UpdateNotification(
          notificationGroupId: final groupId,
          notification: final notification,
        ):
        return _updateNotificationInGroup(groupId, notification);
      case td.UpdateNotificationGroup():
        return _updateNotificationGroup(obj);
      case td.UpdateHavePendingNotifications(
          haveDelayedNotifications: final haveDelayed,
          haveUnreceivedNotifications: final haveUnreceived,
        ):
        return _updatePendingNotifications(haveDelayed, haveUnreceived);
      case td.UpdateActiveNotifications(groups: final groups):
        return _updateActiveNotifications(groups);
      default:
        break;
    }
  }
}
