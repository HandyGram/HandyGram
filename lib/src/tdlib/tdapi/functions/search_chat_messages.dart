part of '../tdapi.dart';

/// **SearchChatMessages** *(searchChatMessages)* - TDLib function
///
/// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query. (searchSecretMessages must be used instead), or without an enabled message database. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.. A combination of query, sender_id, filter and message_thread_id search criteria is expected to be supported, only if it is required for Telegram official application implementation.
///
/// * [chatId]: Identifier of the chat in which to search messages.
/// * [query]: Query to search for.
/// * [senderId]: Identifier of the sender of messages to search for; pass null to search for messages from any sender. Not supported in secret chats *(optional)*.
/// * [fromMessageId]: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message.
/// * [offset]: Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages.
/// * [limit]: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
/// * [filter]: Additional filter for messages to search; pass null to search for all messages *(optional)*.
/// * [messageThreadId]: If not 0, only messages in the specified thread will be returned; supergroups only.
///
/// [FoundChatMessages] is returned on completion.
final class SearchChatMessages extends TdFunction {
  
  /// **SearchChatMessages** *(searchChatMessages)* - TDLib function
  ///
  /// Searches for messages with given words in the chat. Returns the results in reverse chronological order, i.e. in order of decreasing message_id. Cannot be used in secret chats with a non-empty query. (searchSecretMessages must be used instead), or without an enabled message database. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.. A combination of query, sender_id, filter and message_thread_id search criteria is expected to be supported, only if it is required for Telegram official application implementation.
  ///
  /// * [chatId]: Identifier of the chat in which to search messages.
  /// * [query]: Query to search for.
  /// * [senderId]: Identifier of the sender of messages to search for; pass null to search for messages from any sender. Not supported in secret chats *(optional)*.
  /// * [fromMessageId]: Identifier of the message starting from which history must be fetched; use 0 to get results from the last message.
  /// * [offset]: Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages.
  /// * [limit]: The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
  /// * [filter]: Additional filter for messages to search; pass null to search for all messages *(optional)*.
  /// * [messageThreadId]: If not 0, only messages in the specified thread will be returned; supergroups only.
  ///
  /// [FoundChatMessages] is returned on completion.
  const SearchChatMessages({
    required this.chatId,
    required this.query,
    this.senderId,
    required this.fromMessageId,
    required this.offset,
    required this.limit,
    this.filter,
    required this.messageThreadId,
  });
  
  /// Identifier of the chat in which to search messages
  final int chatId;

  /// Query to search for
  final String query;

  /// Identifier of the sender of messages to search for; pass null to search for messages from any sender. Not supported in secret chats
  final MessageSender? senderId;

  /// Identifier of the message starting from which history must be fetched; use 0 to get results from the last message
  final int fromMessageId;

  /// Specify 0 to get results from exactly the from_message_id or a negative offset to get the specified message and some newer messages
  final int offset;

  /// The maximum number of messages to be returned; must be positive and can't be greater than 100. If the offset is negative, the limit must be greater than -offset.. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  /// Additional filter for messages to search; pass null to search for all messages
  final SearchMessagesFilter? filter;

  /// If not 0, only messages in the specified thread will be returned; supergroups only
  final int messageThreadId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "query": query,
      "sender_id": senderId?.toJson(),
      "from_message_id": fromMessageId,
      "offset": offset,
      "limit": limit,
      "filter": filter?.toJson(),
      "message_thread_id": messageThreadId,
      "@extra": extra,
		};
	}

  
  SearchChatMessages copyWith({
    int? chatId,
    String? query,
    MessageSender? senderId,
    int? fromMessageId,
    int? offset,
    int? limit,
    SearchMessagesFilter? filter,
    int? messageThreadId,
  }) => SearchChatMessages(
    chatId: chatId ?? this.chatId,
    query: query ?? this.query,
    senderId: senderId ?? this.senderId,
    fromMessageId: fromMessageId ?? this.fromMessageId,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
    filter: filter ?? this.filter,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String objectType = 'searchChatMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
