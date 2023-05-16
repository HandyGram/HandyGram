part of '../tdapi.dart';

/// **AnswerInlineQuery** *(answerInlineQuery)* - TDLib function
///
/// Sets the result of an inline query; for bots only.
///
/// * [inlineQueryId]: Identifier of the inline query.
/// * [isPersonal]: Pass true if results may be cached and returned only for the user that sent the query. By default, results may be returned to any user who sends the same query.
/// * [results]: The results of the query.
/// * [cacheTime]: Allowed time to cache the results of the query, in seconds.
/// * [nextOffset]: Offset for the next inline query; pass an empty string if there are no more results.
/// * [switchPmText]: If non-empty, this text must be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter.
/// * [switchPmParameter]: The parameter for the bot start message.
///
/// [Ok] is returned on completion.
final class AnswerInlineQuery extends TdFunction {
  
  /// **AnswerInlineQuery** *(answerInlineQuery)* - TDLib function
  ///
  /// Sets the result of an inline query; for bots only.
  ///
  /// * [inlineQueryId]: Identifier of the inline query.
  /// * [isPersonal]: Pass true if results may be cached and returned only for the user that sent the query. By default, results may be returned to any user who sends the same query.
  /// * [results]: The results of the query.
  /// * [cacheTime]: Allowed time to cache the results of the query, in seconds.
  /// * [nextOffset]: Offset for the next inline query; pass an empty string if there are no more results.
  /// * [switchPmText]: If non-empty, this text must be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter.
  /// * [switchPmParameter]: The parameter for the bot start message.
  ///
  /// [Ok] is returned on completion.
  const AnswerInlineQuery({
    required this.inlineQueryId,
    required this.isPersonal,
    required this.results,
    required this.cacheTime,
    required this.nextOffset,
    required this.switchPmText,
    required this.switchPmParameter,
  });
  
  /// Identifier of the inline query
  final int inlineQueryId;

  /// Pass true if results may be cached and returned only for the user that sent the query. By default, results may be returned to any user who sends the same query
  final bool isPersonal;

  /// The results of the query
  final List<InputInlineQueryResult> results;

  /// Allowed time to cache the results of the query, in seconds
  final int cacheTime;

  /// Offset for the next inline query; pass an empty string if there are no more results
  final String nextOffset;

  /// If non-empty, this text must be shown on the button that opens a private chat with the bot and sends a start message to the bot with the parameter switch_pm_parameter
  final String switchPmText;

  /// The parameter for the bot start message
  final String switchPmParameter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "inline_query_id": inlineQueryId,
      "is_personal": isPersonal,
      "results": results.map((i) => i.toJson()).toList(),
      "cache_time": cacheTime,
      "next_offset": nextOffset,
      "switch_pm_text": switchPmText,
      "switch_pm_parameter": switchPmParameter,
      "@extra": extra,
		};
	}

  
  AnswerInlineQuery copyWith({
    int? inlineQueryId,
    bool? isPersonal,
    List<InputInlineQueryResult>? results,
    int? cacheTime,
    String? nextOffset,
    String? switchPmText,
    String? switchPmParameter,
  }) => AnswerInlineQuery(
    inlineQueryId: inlineQueryId ?? this.inlineQueryId,
    isPersonal: isPersonal ?? this.isPersonal,
    results: results ?? this.results,
    cacheTime: cacheTime ?? this.cacheTime,
    nextOffset: nextOffset ?? this.nextOffset,
    switchPmText: switchPmText ?? this.switchPmText,
    switchPmParameter: switchPmParameter ?? this.switchPmParameter,
  );

  static const String objectType = 'answerInlineQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
