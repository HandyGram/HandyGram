part of '../tdapi.dart';

/// **AnswerCustomQuery** *(answerCustomQuery)* - TDLib function
///
/// Answers a custom query; for bots only.
///
/// * [customQueryId]: Identifier of a custom query.
/// * [data]: JSON-serialized answer to the query.
///
/// [Ok] is returned on completion.
final class AnswerCustomQuery extends TdFunction {
  
  /// **AnswerCustomQuery** *(answerCustomQuery)* - TDLib function
  ///
  /// Answers a custom query; for bots only.
  ///
  /// * [customQueryId]: Identifier of a custom query.
  /// * [data]: JSON-serialized answer to the query.
  ///
  /// [Ok] is returned on completion.
  const AnswerCustomQuery({
    required this.customQueryId,
    required this.data,
  });
  
  /// Identifier of a custom query 
  final int customQueryId;

  /// JSON-serialized answer to the query
  final String data;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "custom_query_id": customQueryId,
      "data": data,
      "@extra": extra,
		};
	}

  
  AnswerCustomQuery copyWith({
    int? customQueryId,
    String? data,
  }) => AnswerCustomQuery(
    customQueryId: customQueryId ?? this.customQueryId,
    data: data ?? this.data,
  );

  static const String objectType = 'answerCustomQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
