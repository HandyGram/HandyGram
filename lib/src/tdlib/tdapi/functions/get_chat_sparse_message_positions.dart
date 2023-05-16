part of '../tdapi.dart';

/// **GetChatSparseMessagePositions** *(getChatSparseMessagePositions)* - TDLib function
///
/// Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll implementation. Returns the results in reverse chronological order (i.e., in order of decreasing message_id).. Cannot be used in secret chats or with searchMessagesFilterFailedToSend filter without an enabled message database.
///
/// * [chatId]: Identifier of the chat in which to return information about message positions.
/// * [filter]: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function.
/// * [fromMessageId]: The message identifier from which to return information about message positions.
/// * [limit]: The expected number of message positions to be returned; 50-2000. A smaller number of positions can be returned, if there are not enough appropriate messages.
///
/// [MessagePositions] is returned on completion.
final class GetChatSparseMessagePositions extends TdFunction {
  
  /// **GetChatSparseMessagePositions** *(getChatSparseMessagePositions)* - TDLib function
  ///
  /// Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll implementation. Returns the results in reverse chronological order (i.e., in order of decreasing message_id).. Cannot be used in secret chats or with searchMessagesFilterFailedToSend filter without an enabled message database.
  ///
  /// * [chatId]: Identifier of the chat in which to return information about message positions.
  /// * [filter]: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function.
  /// * [fromMessageId]: The message identifier from which to return information about message positions.
  /// * [limit]: The expected number of message positions to be returned; 50-2000. A smaller number of positions can be returned, if there are not enough appropriate messages.
  ///
  /// [MessagePositions] is returned on completion.
  const GetChatSparseMessagePositions({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
    required this.limit,
  });
  
  /// Identifier of the chat in which to return information about message positions
  final int chatId;

  /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function
  final SearchMessagesFilter filter;

  /// The message identifier from which to return information about message positions
  final int fromMessageId;

  /// The expected number of message positions to be returned; 50-2000. A smaller number of positions can be returned, if there are not enough appropriate messages
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "from_message_id": fromMessageId,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetChatSparseMessagePositions copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    int? fromMessageId,
    int? limit,
  }) => GetChatSparseMessagePositions(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    fromMessageId: fromMessageId ?? this.fromMessageId,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getChatSparseMessagePositions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
