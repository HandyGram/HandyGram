part of '../tdapi.dart';

/// **GetForumTopicLink** *(getForumTopicLink)* - TDLib function
///
/// Returns an HTTPS link to a topic in a forum chat. This is an offline request.
///
/// * [chatId]: Identifier of the chat.
/// * [messageThreadId]: Message thread identifier of the forum topic.
///
/// [MessageLink] is returned on completion.
final class GetForumTopicLink extends TdFunction {
  
  /// **GetForumTopicLink** *(getForumTopicLink)* - TDLib function
  ///
  /// Returns an HTTPS link to a topic in a forum chat. This is an offline request.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageThreadId]: Message thread identifier of the forum topic.
  ///
  /// [MessageLink] is returned on completion.
  const GetForumTopicLink({
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

  
  GetForumTopicLink copyWith({
    int? chatId,
    int? messageThreadId,
  }) => GetForumTopicLink(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'getForumTopicLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
