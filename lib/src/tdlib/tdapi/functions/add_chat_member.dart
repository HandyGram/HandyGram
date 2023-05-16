part of '../tdapi.dart';

/// **AddChatMember** *(addChatMember)* - TDLib function
///
/// Adds a new member to a chat. Members can't be added to private or secret chats.
///
/// * [chatId]: Chat identifier.
/// * [userId]: Identifier of the user.
/// * [forwardLimit]: The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels, or if the added user is a bot.
///
/// [Ok] is returned on completion.
final class AddChatMember extends TdFunction {
  
  /// **AddChatMember** *(addChatMember)* - TDLib function
  ///
  /// Adds a new member to a chat. Members can't be added to private or secret chats.
  ///
  /// * [chatId]: Chat identifier.
  /// * [userId]: Identifier of the user.
  /// * [forwardLimit]: The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels, or if the added user is a bot.
  ///
  /// [Ok] is returned on completion.
  const AddChatMember({
    required this.chatId,
    required this.userId,
    required this.forwardLimit,
  });
  
  /// Chat identifier
  final int chatId;

  /// Identifier of the user
  final int userId;

  /// The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels, or if the added user is a bot
  final int forwardLimit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "user_id": userId,
      "forward_limit": forwardLimit,
      "@extra": extra,
		};
	}

  
  AddChatMember copyWith({
    int? chatId,
    int? userId,
    int? forwardLimit,
  }) => AddChatMember(
    chatId: chatId ?? this.chatId,
    userId: userId ?? this.userId,
    forwardLimit: forwardLimit ?? this.forwardLimit,
  );

  static const String objectType = 'addChatMember';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
