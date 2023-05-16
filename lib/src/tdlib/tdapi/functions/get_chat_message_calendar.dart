part of '../tdapi.dart';

/// **GetChatMessageCalendar** *(getChatMessageCalendar)* - TDLib function
///
/// Returns information about the next messages of the specified type in the chat split by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset".
///
/// * [chatId]: Identifier of the chat in which to return information about messages.
/// * [filter]: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function.
/// * [fromMessageId]: The message identifier from which to return information about messages; use 0 to get results from the last message.
///
/// [MessageCalendar] is returned on completion.
final class GetChatMessageCalendar extends TdFunction {
  
  /// **GetChatMessageCalendar** *(getChatMessageCalendar)* - TDLib function
  ///
  /// Returns information about the next messages of the specified type in the chat split by days. Returns the results in reverse chronological order. Can return partial result for the last returned day. Behavior of this method depends on the value of the option "utc_time_offset".
  ///
  /// * [chatId]: Identifier of the chat in which to return information about messages.
  /// * [filter]: Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function.
  /// * [fromMessageId]: The message identifier from which to return information about messages; use 0 to get results from the last message.
  ///
  /// [MessageCalendar] is returned on completion.
  const GetChatMessageCalendar({
    required this.chatId,
    required this.filter,
    required this.fromMessageId,
  });
  
  /// Identifier of the chat in which to return information about messages
  final int chatId;

  /// Filter for message content. Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and searchMessagesFilterUnreadReaction are unsupported in this function
  final SearchMessagesFilter filter;

  /// The message identifier from which to return information about messages; use 0 to get results from the last message
  final int fromMessageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "filter": filter.toJson(),
      "from_message_id": fromMessageId,
      "@extra": extra,
		};
	}

  
  GetChatMessageCalendar copyWith({
    int? chatId,
    SearchMessagesFilter? filter,
    int? fromMessageId,
  }) => GetChatMessageCalendar(
    chatId: chatId ?? this.chatId,
    filter: filter ?? this.filter,
    fromMessageId: fromMessageId ?? this.fromMessageId,
  );

  static const String objectType = 'getChatMessageCalendar';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
