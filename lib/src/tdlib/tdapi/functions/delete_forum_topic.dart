part of '../tdapi.dart';

/// **DeleteForumTopic** *(deleteForumTopic)* - TDLib function
///
/// Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless the user is creator of the topic, the topic has no messages from other users and has at most 11 messages.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier of the forum topic.
///
/// [Ok] is returned on completion.
final class DeleteForumTopic extends TdFunction {
  
  /// **DeleteForumTopic** *(deleteForumTopic)* - TDLib function
  ///
  /// Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless the user is creator of the topic, the topic has no messages from other users and has at most 11 messages.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  ///
  /// [Ok] is returned on completion.
  const DeleteForumTopic({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// Message thread identifier of the forum topic
  final int messageThreadId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "@extra": extra,
		};
	}

  
  DeleteForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
  }) => DeleteForumTopic(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'deleteForumTopic';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
