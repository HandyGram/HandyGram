part of '../tdapi.dart';

/// **SetChatDescription** *(setChatDescription)* - TDLib function
///
/// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right.
///
/// * [chatId]: Identifier of the chat.
/// * [description]: New chat description; 0-255 characters.
///
/// [Ok] is returned on completion.
final class SetChatDescription extends TdFunction {
  
  /// **SetChatDescription** *(setChatDescription)* - TDLib function
  ///
  /// Changes information about a chat. Available for basic groups, supergroups, and channels. Requires can_change_info administrator right.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [description]: New chat description; 0-255 characters.
  ///
  /// [Ok] is returned on completion.
  const SetChatDescription({
    required this.chatId,
    required this.description,
  });
  
  /// Identifier of the chat 
  final int chatId;

  /// New chat description; 0-255 characters
  final String description;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "description": description,
      "@extra": extra,
		};
	}

  
  SetChatDescription copyWith({
    int? chatId,
    String? description,
  }) => SetChatDescription(
    chatId: chatId ?? this.chatId,
    description: description ?? this.description,
  );

  static const String objectType = 'setChatDescription';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
