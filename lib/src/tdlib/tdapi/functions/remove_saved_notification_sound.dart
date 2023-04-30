part of '../tdapi.dart';

/// **RemoveSavedNotificationSound** *(removeSavedNotificationSound)* - TDLib function
  ///
  /// Removes a notification sound from the list of saved notification sounds.
  ///
  /// * [notificationSoundId]: Identifier of the notification sound.
  ///
  /// [Ok] is returned on completion.
class RemoveSavedNotificationSound extends TdFunction {
  
  /// **RemoveSavedNotificationSound** *(removeSavedNotificationSound)* - TDLib function
  ///
  /// Removes a notification sound from the list of saved notification sounds.
  ///
  /// * [notificationSoundId]: Identifier of the notification sound.
  ///
  /// [Ok] is returned on completion.
  const RemoveSavedNotificationSound({
    required this.notificationSoundId,
  });
  
  /// Identifier of the notification sound
  final int notificationSoundId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "notification_sound_id": notificationSoundId,
      "@extra": extra,
    };
  }
  
  RemoveSavedNotificationSound copyWith({
    int? notificationSoundId,
  }) => RemoveSavedNotificationSound(
    notificationSoundId: notificationSoundId ?? this.notificationSoundId,
  );

  static const String constructor = 'removeSavedNotificationSound';
  
  @override
  String getConstructor() => constructor;
}
