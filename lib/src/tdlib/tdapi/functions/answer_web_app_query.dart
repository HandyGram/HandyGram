part of '../tdapi.dart';

/// **AnswerWebAppQuery** *(answerWebAppQuery)* - TDLib function
///
/// Sets the result of interaction with a Web App and sends corresponding message on behalf of the user to the chat from which the query originated; for bots only.
///
/// * [webAppQueryId]: Identifier of the Web App query.
/// * [result]: The result of the query.
///
/// [SentWebAppMessage] is returned on completion.
final class AnswerWebAppQuery extends TdFunction {
  
  /// **AnswerWebAppQuery** *(answerWebAppQuery)* - TDLib function
  ///
  /// Sets the result of interaction with a Web App and sends corresponding message on behalf of the user to the chat from which the query originated; for bots only.
  ///
  /// * [webAppQueryId]: Identifier of the Web App query.
  /// * [result]: The result of the query.
  ///
  /// [SentWebAppMessage] is returned on completion.
  const AnswerWebAppQuery({
    required this.webAppQueryId,
    required this.result,
  });
  
  /// Identifier of the Web App query
  final String webAppQueryId;

  /// The result of the query
  final InputInlineQueryResult result;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "web_app_query_id": webAppQueryId,
      "result": result.toJson(),
      "@extra": extra,
		};
	}

  
  AnswerWebAppQuery copyWith({
    String? webAppQueryId,
    InputInlineQueryResult? result,
  }) => AnswerWebAppQuery(
    webAppQueryId: webAppQueryId ?? this.webAppQueryId,
    result: result ?? this.result,
  );

  static const String objectType = 'answerWebAppQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
