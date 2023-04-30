part of '../tdapi.dart';

/// **GetSavedNotificationSounds** *(getSavedNotificationSounds)* - TDLib function
  ///
  /// Returns list of saved notification sounds. If a sound isn't in the list, then default sound needs to be used.
  ///
  /// [NotificationSounds] is returned on completion.
class GetSavedNotificationSounds extends TdFunction {
  
  /// **GetSavedNotificationSounds** *(getSavedNotificationSounds)* - TDLib function
  ///
  /// Returns list of saved notification sounds. If a sound isn't in the list, then default sound needs to be used.
  ///
  /// [NotificationSounds] is returned on completion.
  const GetSavedNotificationSounds();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetSavedNotificationSounds copyWith() => const GetSavedNotificationSounds();

  static const String constructor = 'getSavedNotificationSounds';
  
  @override
  String getConstructor() => constructor;
}
