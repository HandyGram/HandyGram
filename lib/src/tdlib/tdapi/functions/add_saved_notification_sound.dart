part of '../tdapi.dart';

/// **AddSavedNotificationSound** *(addSavedNotificationSound)* - TDLib function
///
/// Adds a new notification sound to the list of saved notification sounds. The new notification sound is added to the top of the list. If it is already in the list, its position isn't changed.
///
/// * [sound]: Notification sound file to add.
///
/// [NotificationSound] is returned on completion.
final class AddSavedNotificationSound extends TdFunction {
  
  /// **AddSavedNotificationSound** *(addSavedNotificationSound)* - TDLib function
  ///
  /// Adds a new notification sound to the list of saved notification sounds. The new notification sound is added to the top of the list. If it is already in the list, its position isn't changed.
  ///
  /// * [sound]: Notification sound file to add.
  ///
  /// [NotificationSound] is returned on completion.
  const AddSavedNotificationSound({
    required this.sound,
  });
  
  /// Notification sound file to add
  final InputFile sound;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "sound": sound.toJson(),
      "@extra": extra,
		};
	}

  
  AddSavedNotificationSound copyWith({
    InputFile? sound,
  }) => AddSavedNotificationSound(
    sound: sound ?? this.sound,
  );

  static const String objectType = 'addSavedNotificationSound';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
