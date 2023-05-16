part of '../tdapi.dart';

/// **RemoveNotification** *(removeNotification)* - TDLib function
///
/// Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user.
///
/// * [notificationGroupId]: Identifier of notification group to which the notification belongs.
/// * [notificationId]: Identifier of removed notification.
///
/// [Ok] is returned on completion.
final class RemoveNotification extends TdFunction {
  
  /// **RemoveNotification** *(removeNotification)* - TDLib function
  ///
  /// Removes an active notification from notification list. Needs to be called only if the notification is removed by the current user.
  ///
  /// * [notificationGroupId]: Identifier of notification group to which the notification belongs.
  /// * [notificationId]: Identifier of removed notification.
  ///
  /// [Ok] is returned on completion.
  const RemoveNotification({
    required this.notificationGroupId,
    required this.notificationId,
  });
  
  /// Identifier of notification group to which the notification belongs 
  final int notificationGroupId;

  /// Identifier of removed notification
  final int notificationId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "notification_group_id": notificationGroupId,
      "notification_id": notificationId,
      "@extra": extra,
		};
	}

  
  RemoveNotification copyWith({
    int? notificationGroupId,
    int? notificationId,
  }) => RemoveNotification(
    notificationGroupId: notificationGroupId ?? this.notificationGroupId,
    notificationId: notificationId ?? this.notificationId,
  );

  static const String objectType = 'removeNotification';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
