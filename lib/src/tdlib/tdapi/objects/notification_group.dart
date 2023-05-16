part of '../tdapi.dart';

/// **NotificationGroup** *(notificationGroup)* - basic class
///
/// Describes a group of notifications.
///
/// * [id]: Unique persistent auto-incremented from 1 identifier of the notification group.
/// * [type]: Type of the group.
/// * [chatId]: Identifier of a chat to which all notifications in the group belong.
/// * [totalCount]: Total number of active notifications in the group.
/// * [notifications]: The list of active notifications.
final class NotificationGroup extends TdObject {
  
  /// **NotificationGroup** *(notificationGroup)* - basic class
  ///
  /// Describes a group of notifications.
  ///
  /// * [id]: Unique persistent auto-incremented from 1 identifier of the notification group.
  /// * [type]: Type of the group.
  /// * [chatId]: Identifier of a chat to which all notifications in the group belong.
  /// * [totalCount]: Total number of active notifications in the group.
  /// * [notifications]: The list of active notifications.
  const NotificationGroup({
    required this.id,
    required this.type,
    required this.chatId,
    required this.totalCount,
    required this.notifications,
  });
  
  /// Unique persistent auto-incremented from 1 identifier of the notification group
  final int id;

  /// Type of the group
  final NotificationGroupType type;

  /// Identifier of a chat to which all notifications in the group belong
  final int chatId;

  /// Total number of active notifications in the group
  final int totalCount;

  /// The list of active notifications
  final List<Notification> notifications;
  
  /// Parse from a json
  factory NotificationGroup.fromJson(Map<String, dynamic> json) => NotificationGroup(
    id: json['id'],
    type: NotificationGroupType.fromJson(json['type']),
    chatId: json['chat_id'],
    totalCount: json['total_count'],
    notifications: List<Notification>.from((json['notifications'] ?? []).map((item) => Notification.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "type": type.toJson(),
      "chat_id": chatId,
      "total_count": totalCount,
      "notifications": notifications.map((i) => i.toJson()).toList(),
		};
	}

  
  NotificationGroup copyWith({
    int? id,
    NotificationGroupType? type,
    int? chatId,
    int? totalCount,
    List<Notification>? notifications,
  }) => NotificationGroup(
    id: id ?? this.id,
    type: type ?? this.type,
    chatId: chatId ?? this.chatId,
    totalCount: totalCount ?? this.totalCount,
    notifications: notifications ?? this.notifications,
  );

  static const String objectType = 'notificationGroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
