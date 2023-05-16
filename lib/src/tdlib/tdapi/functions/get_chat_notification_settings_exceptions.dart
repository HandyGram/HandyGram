part of '../tdapi.dart';

/// **GetChatNotificationSettingsExceptions** *(getChatNotificationSettingsExceptions)* - TDLib function
///
/// Returns list of chats with non-default notification settings.
///
/// * [scope]: If specified, only chats from the scope will be returned; pass null to return chats from all scopes *(optional)*.
/// * [compareSound]: Pass true to include in the response chats with only non-default sound.
///
/// [Chats] is returned on completion.
final class GetChatNotificationSettingsExceptions extends TdFunction {
  
  /// **GetChatNotificationSettingsExceptions** *(getChatNotificationSettingsExceptions)* - TDLib function
  ///
  /// Returns list of chats with non-default notification settings.
  ///
  /// * [scope]: If specified, only chats from the scope will be returned; pass null to return chats from all scopes *(optional)*.
  /// * [compareSound]: Pass true to include in the response chats with only non-default sound.
  ///
  /// [Chats] is returned on completion.
  const GetChatNotificationSettingsExceptions({
    this.scope,
    required this.compareSound,
  });
  
  /// If specified, only chats from the scope will be returned; pass null to return chats from all scopes
  final NotificationSettingsScope? scope;

  /// Pass true to include in the response chats with only non-default sound
  final bool compareSound;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "scope": scope?.toJson(),
      "compare_sound": compareSound,
      "@extra": extra,
		};
	}

  
  GetChatNotificationSettingsExceptions copyWith({
    NotificationSettingsScope? scope,
    bool? compareSound,
  }) => GetChatNotificationSettingsExceptions(
    scope: scope ?? this.scope,
    compareSound: compareSound ?? this.compareSound,
  );

  static const String objectType = 'getChatNotificationSettingsExceptions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
