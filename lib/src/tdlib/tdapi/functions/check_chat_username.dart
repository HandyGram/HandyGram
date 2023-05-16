part of '../tdapi.dart';

/// **CheckChatUsername** *(checkChatUsername)* - TDLib function
///
/// Checks whether a username can be set for a chat.
///
/// * [chatId]: Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if the chat is being created.
/// * [username]: Username to be checked.
///
/// [CheckChatUsernameResult] is returned on completion.
final class CheckChatUsername extends TdFunction {
  
  /// **CheckChatUsername** *(checkChatUsername)* - TDLib function
  ///
  /// Checks whether a username can be set for a chat.
  ///
  /// * [chatId]: Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if the chat is being created.
  /// * [username]: Username to be checked.
  ///
  /// [CheckChatUsernameResult] is returned on completion.
  const CheckChatUsername({
    required this.chatId,
    required this.username,
  });
  
  /// Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if the chat is being created 
  final int chatId;

  /// Username to be checked
  final String username;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "username": username,
      "@extra": extra,
		};
	}

  
  CheckChatUsername copyWith({
    int? chatId,
    String? username,
  }) => CheckChatUsername(
    chatId: chatId ?? this.chatId,
    username: username ?? this.username,
  );

  static const String objectType = 'checkChatUsername';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
