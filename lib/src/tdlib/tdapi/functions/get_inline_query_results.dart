part of '../tdapi.dart';

/// **GetInlineQueryResults** *(getInlineQueryResults)* - TDLib function
///
/// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
///
/// * [botUserId]: The identifier of the target bot.
/// * [chatId]: Identifier of the chat where the query was sent.
/// * [userLocation]: Location of the user; pass null if unknown or the bot doesn't need user's location *(optional)*.
/// * [query]: Text of the query.
/// * [offset]: Offset of the first entry to return.
///
/// [InlineQueryResults] is returned on completion.
final class GetInlineQueryResults extends TdFunction {
  
  /// **GetInlineQueryResults** *(getInlineQueryResults)* - TDLib function
  ///
  /// Sends an inline query to a bot and returns its results. Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  ///
  /// * [botUserId]: The identifier of the target bot.
  /// * [chatId]: Identifier of the chat where the query was sent.
  /// * [userLocation]: Location of the user; pass null if unknown or the bot doesn't need user's location *(optional)*.
  /// * [query]: Text of the query.
  /// * [offset]: Offset of the first entry to return.
  ///
  /// [InlineQueryResults] is returned on completion.
  const GetInlineQueryResults({
    required this.botUserId,
    required this.chatId,
    this.userLocation,
    required this.query,
    required this.offset,
  });
  
  /// The identifier of the target bot
  final int botUserId;

  /// Identifier of the chat where the query was sent
  final int chatId;

  /// Location of the user; pass null if unknown or the bot doesn't need user's location
  final Location? userLocation;

  /// Text of the query
  final String query;

  /// Offset of the first entry to return
  final String offset;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "chat_id": chatId,
      "user_location": userLocation?.toJson(),
      "query": query,
      "offset": offset,
      "@extra": extra,
		};
	}

  
  GetInlineQueryResults copyWith({
    int? botUserId,
    int? chatId,
    Location? userLocation,
    String? query,
    String? offset,
  }) => GetInlineQueryResults(
    botUserId: botUserId ?? this.botUserId,
    chatId: chatId ?? this.chatId,
    userLocation: userLocation ?? this.userLocation,
    query: query ?? this.query,
    offset: offset ?? this.offset,
  );

  static const String objectType = 'getInlineQueryResults';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
