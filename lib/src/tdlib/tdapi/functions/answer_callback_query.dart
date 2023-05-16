part of '../tdapi.dart';

/// **AnswerCallbackQuery** *(answerCallbackQuery)* - TDLib function
///
/// Sets the result of a callback query; for bots only.
///
/// * [callbackQueryId]: Identifier of the callback query.
/// * [text]: Text of the answer.
/// * [showAlert]: Pass true to show an alert to the user instead of a toast notification.
/// * [url]: URL to be opened.
/// * [cacheTime]: Time during which the result of the query can be cached, in seconds.
///
/// [Ok] is returned on completion.
final class AnswerCallbackQuery extends TdFunction {
  
  /// **AnswerCallbackQuery** *(answerCallbackQuery)* - TDLib function
  ///
  /// Sets the result of a callback query; for bots only.
  ///
  /// * [callbackQueryId]: Identifier of the callback query.
  /// * [text]: Text of the answer.
  /// * [showAlert]: Pass true to show an alert to the user instead of a toast notification.
  /// * [url]: URL to be opened.
  /// * [cacheTime]: Time during which the result of the query can be cached, in seconds.
  ///
  /// [Ok] is returned on completion.
  const AnswerCallbackQuery({
    required this.callbackQueryId,
    required this.text,
    required this.showAlert,
    required this.url,
    required this.cacheTime,
  });
  
  /// Identifier of the callback query
  final int callbackQueryId;

  /// Text of the answer
  final String text;

  /// Pass true to show an alert to the user instead of a toast notification
  final bool showAlert;

  /// URL to be opened
  final String url;

  /// Time during which the result of the query can be cached, in seconds
  final int cacheTime;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "callback_query_id": callbackQueryId,
      "text": text,
      "show_alert": showAlert,
      "url": url,
      "cache_time": cacheTime,
      "@extra": extra,
		};
	}

  
  AnswerCallbackQuery copyWith({
    int? callbackQueryId,
    String? text,
    bool? showAlert,
    String? url,
    int? cacheTime,
  }) => AnswerCallbackQuery(
    callbackQueryId: callbackQueryId ?? this.callbackQueryId,
    text: text ?? this.text,
    showAlert: showAlert ?? this.showAlert,
    url: url ?? this.url,
    cacheTime: cacheTime ?? this.cacheTime,
  );

  static const String objectType = 'answerCallbackQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
