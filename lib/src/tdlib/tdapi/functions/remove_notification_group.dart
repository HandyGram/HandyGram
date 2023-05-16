part of '../tdapi.dart';

/// **RemoveNotificationGroup** *(removeNotificationGroup)* - TDLib function
///
/// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user.
///
/// * [notificationGroupId]: Notification group identifier.
/// * [maxNotificationId]: The maximum identifier of removed notifications.
///
/// [Ok] is returned on completion.
final class RemoveNotificationGroup extends TdFunction {
  
  /// **RemoveNotificationGroup** *(removeNotificationGroup)* - TDLib function
  ///
  /// Removes a group of active notifications. Needs to be called only if the notification group is removed by the current user.
  ///
  /// * [notificationGroupId]: Notification group identifier.
  /// * [maxNotificationId]: The maximum identifier of removed notifications.
  ///
  /// [Ok] is returned on completion.
  const RemoveNotificationGroup({
    required this.notificationGroupId,
    required this.maxNotificationId,
  });
  
  /// Notification group identifier 
  final int notificationGroupId;

  /// The maximum identifier of removed notifications
  final int maxNotificationId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "notification_group_id": notificationGroupId,
      "max_notification_id": maxNotificationId,
      "@extra": extra,
		};
	}

  
  RemoveNotificationGroup copyWith({
    int? notificationGroupId,
    int? maxNotificationId,
  }) => RemoveNotificationGroup(
    notificationGroupId: notificationGroupId ?? this.notificationGroupId,
    maxNotificationId: maxNotificationId ?? this.maxNotificationId,
  );

  static const String objectType = 'removeNotificationGroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
