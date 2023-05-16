part of '../tdapi.dart';

/// **GetForumTopic** *(getForumTopic)* - TDLib function
///
/// Returns information about a forum topic.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier of the forum topic.
///
/// [ForumTopic] is returned on completion.
final class GetForumTopic extends TdFunction {
  
  /// **GetForumTopic** *(getForumTopic)* - TDLib function
  ///
  /// Returns information about a forum topic.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  ///
  /// [ForumTopic] is returned on completion.
  const GetForumTopic({
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

  
  GetForumTopic copyWith({
    int? chatId,
    int? messageThreadId,
  }) => GetForumTopic(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'getForumTopic';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
