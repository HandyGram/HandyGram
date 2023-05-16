part of '../tdapi.dart';

/// **GetForumTopics** *(getForumTopics)* - TDLib function
///
/// Returns found forum topics in a forum chat. This is a temporary method for getting information about topic list from the server.
///
/// * [chatId]: Identifier of the forum chat.
/// * [query]: Query to search for in the forum topic's name.
/// * [offsetDate]: The date starting from which the results need to be fetched. Use 0 or any date in the future to get results from the last topic.
/// * [offsetMessageId]: The message identifier of the last message in the last found topic, or 0 for the first request.
/// * [offsetMessageThreadId]: The message thread identifier of the last found topic, or 0 for the first request.
/// * [limit]: The maximum number of forum topics to be returned; up to 100. For optimal performance, the number of returned forum topics is chosen by TDLib and can be smaller than the specified limit.
///
/// [ForumTopics] is returned on completion.
final class GetForumTopics extends TdFunction {
  
  /// **GetForumTopics** *(getForumTopics)* - TDLib function
  ///
  /// Returns found forum topics in a forum chat. This is a temporary method for getting information about topic list from the server.
  ///
  /// * [chatId]: Identifier of the forum chat.
  /// * [query]: Query to search for in the forum topic's name.
  /// * [offsetDate]: The date starting from which the results need to be fetched. Use 0 or any date in the future to get results from the last topic.
  /// * [offsetMessageId]: The message identifier of the last message in the last found topic, or 0 for the first request.
  /// * [offsetMessageThreadId]: The message thread identifier of the last found topic, or 0 for the first request.
  /// * [limit]: The maximum number of forum topics to be returned; up to 100. For optimal performance, the number of returned forum topics is chosen by TDLib and can be smaller than the specified limit.
  ///
  /// [ForumTopics] is returned on completion.
  const GetForumTopics({
    required this.chatId,
    required this.query,
    required this.offsetDate,
    required this.offsetMessageId,
    required this.offsetMessageThreadId,
    required this.limit,
  });
  
  /// Identifier of the forum chat
  final int chatId;

  /// Query to search for in the forum topic's name
  final String query;

  /// The date starting from which the results need to be fetched. Use 0 or any date in the future to get results from the last topic
  final int offsetDate;

  /// The message identifier of the last message in the last found topic, or 0 for the first request
  final int offsetMessageId;

  /// The message thread identifier of the last found topic, or 0 for the first request
  final int offsetMessageThreadId;

  /// The maximum number of forum topics to be returned; up to 100. For optimal performance, the number of returned forum topics is chosen by TDLib and can be smaller than the specified limit
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "query": query,
      "offset_date": offsetDate,
      "offset_message_id": offsetMessageId,
      "offset_message_thread_id": offsetMessageThreadId,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetForumTopics copyWith({
    int? chatId,
    String? query,
    int? offsetDate,
    int? offsetMessageId,
    int? offsetMessageThreadId,
    int? limit,
  }) => GetForumTopics(
    chatId: chatId ?? this.chatId,
    query: query ?? this.query,
    offsetDate: offsetDate ?? this.offsetDate,
    offsetMessageId: offsetMessageId ?? this.offsetMessageId,
    offsetMessageThreadId: offsetMessageThreadId ?? this.offsetMessageThreadId,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getForumTopics';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
