part of '../tdapi.dart';

/// **SearchSecretMessages** *(searchSecretMessages)* - TDLib function
///
/// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance, the number of returned messages is chosen by TDLib.
///
/// * [chatId]: Identifier of the chat in which to search. Specify 0 to search in all secret chats.
/// * [query]: Query to search for. If empty, searchChatMessages must be used instead.
/// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
/// * [limit]: The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
/// * [filter]: Additional filter for messages to search; pass null to search for all messages *(optional)*.
///
/// [FoundMessages] is returned on completion.
final class SearchSecretMessages extends TdFunction {
  
  /// **SearchSecretMessages** *(searchSecretMessages)* - TDLib function
  ///
  /// Searches for messages in secret chats. Returns the results in reverse chronological order. For optimal performance, the number of returned messages is chosen by TDLib.
  ///
  /// * [chatId]: Identifier of the chat in which to search. Specify 0 to search in all secret chats.
  /// * [query]: Query to search for. If empty, searchChatMessages must be used instead.
  /// * [offset]: Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results.
  /// * [limit]: The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit.
  /// * [filter]: Additional filter for messages to search; pass null to search for all messages *(optional)*.
  ///
  /// [FoundMessages] is returned on completion.
  const SearchSecretMessages({
    required this.chatId,
    required this.query,
    required this.offset,
    required this.limit,
    this.filter,
  });
  
  /// Identifier of the chat in which to search. Specify 0 to search in all secret chats
  final int chatId;

  /// Query to search for. If empty, searchChatMessages must be used instead
  final String query;

  /// Offset of the first entry to return as received from the previous request; use empty string to get the first chunk of results
  final String offset;

  /// The maximum number of messages to be returned; up to 100. For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified limit
  final int limit;

  /// Additional filter for messages to search; pass null to search for all messages
  final SearchMessagesFilter? filter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "query": query,
      "offset": offset,
      "limit": limit,
      "filter": filter?.toJson(),
      "@extra": extra,
		};
	}

  
  SearchSecretMessages copyWith({
    int? chatId,
    String? query,
    String? offset,
    int? limit,
    SearchMessagesFilter? filter,
  }) => SearchSecretMessages(
    chatId: chatId ?? this.chatId,
    query: query ?? this.query,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
    filter: filter ?? this.filter,
  );

  static const String objectType = 'searchSecretMessages';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
