part of '../tdapi.dart';

/// **GetSavedNotificationSound** *(getSavedNotificationSound)* - TDLib function
  ///
  /// Returns saved notification sound by its identifier. Returns a 404 error if there is no saved notification sound with the specified identifier.
  ///
  /// * [notificationSoundId]: Identifier of the notification sound.
  ///
  /// [NotificationSounds] is returned on completion.
class GetSavedNotificationSound extends TdFunction {
  
  /// **GetSavedNotificationSound** *(getSavedNotificationSound)* - TDLib function
  ///
  /// Returns saved notification sound by its identifier. Returns a 404 error if there is no saved notification sound with the specified identifier.
  ///
  /// * [notificationSoundId]: Identifier of the notification sound.
  ///
  /// [NotificationSounds] is returned on completion.
  const GetSavedNotificationSound({
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
  
  GetSavedNotificationSound copyWith({
    int? notificationSoundId,
  }) => GetSavedNotificationSound(
    notificationSoundId: notificationSoundId ?? this.notificationSoundId,
  );

  static const String constructor = 'getSavedNotificationSound';
  
  @override
  String getConstructor() => constructor;
}
