part of '../tdapi.dart';

/// **SetChatLocation** *(setChatLocation)* - TDLib function
///
/// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use.
///
/// * [chatId]: Chat identifier.
/// * [location]: New location for the chat; must be valid and not null.
///
/// [Ok] is returned on completion.
final class SetChatLocation extends TdFunction {
  
  /// **SetChatLocation** *(setChatLocation)* - TDLib function
  ///
  /// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use.
  ///
  /// * [chatId]: Chat identifier.
  /// * [location]: New location for the chat; must be valid and not null.
  ///
  /// [Ok] is returned on completion.
  const SetChatLocation({
    required this.chatId,
    required this.location,
  });
  
  /// Chat identifier 
  final int chatId;

  /// New location for the chat; must be valid and not null
  final ChatLocation location;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "location": location.toJson(),
      "@extra": extra,
		};
	}

  
  SetChatLocation copyWith({
    int? chatId,
    ChatLocation? location,
  }) => SetChatLocation(
    chatId: chatId ?? this.chatId,
    location: location ?? this.location,
  );

  static const String objectType = 'setChatLocation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
