part of '../tdapi.dart';

/// **GetChatMessagePosition** *(getChatMessagePosition)* - TDLib function
///
/// Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the chat. Cannot be used in secret chats.
///
/// * [chatId]: Identifier of the chat in which to find message position.
/// * [messageId]: Message identifier.
/// * [filter]: Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function.
/// * [messageThreadId]: If not 0, only messages in the specified thread will be considered; supergroups only.
///
/// [Count] is returned on completion.
final class GetChatMessagePosition extends TdFunction {
  
  /// **GetChatMessagePosition** *(getChatMessagePosition)* - TDLib function
  ///
  /// Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the chat. Cannot be used in secret chats.
  ///
  /// * [chatId]: Identifier of the chat in which to find message position.
  /// * [messageId]: Message identifier.
  /// * [filter]: Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function.
  /// * [messageThreadId]: If not 0, only messages in the specified thread will be considered; supergroups only.
  ///
  /// [Count] is returned on completion.
  const GetChatMessagePosition({
    required this.chatId,
    required this.messageId,
    required this.filter,
    required this.messageThreadId,
  });
  
  /// Identifier of the chat in which to find message position
  final int chatId;

  /// Message identifier
  final int messageId;

  /// Filter for message content; searchMessagesFilterEmpty, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and searchMessagesFilterFailedToSend are unsupported in this function
  final SearchMessagesFilter filter;

  /// If not 0, only messages in the specified thread will be considered; supergroups only
  final int messageThreadId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "filter": filter.toJson(),
      "message_thread_id": messageThreadId,
      "@extra": extra,
		};
	}

  
  GetChatMessagePosition copyWith({
    int? chatId,
    int? messageId,
    SearchMessagesFilter? filter,
    int? messageThreadId,
  }) => GetChatMessagePosition(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    filter: filter ?? this.filter,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'getChatMessagePosition';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
