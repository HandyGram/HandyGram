part of '../tdapi.dart';

/// **AnswerPreCheckoutQuery** *(answerPreCheckoutQuery)* - TDLib function
  ///
  /// Sets the result of a pre-checkout query; for bots only.
  ///
  /// * [preCheckoutQueryId]: Identifier of the pre-checkout query.
  /// * [errorMessage]: An error message, empty on success.
  ///
  /// [Ok] is returned on completion.
class AnswerPreCheckoutQuery extends TdFunction {
  
  /// **AnswerPreCheckoutQuery** *(answerPreCheckoutQuery)* - TDLib function
  ///
  /// Sets the result of a pre-checkout query; for bots only.
  ///
  /// * [preCheckoutQueryId]: Identifier of the pre-checkout query.
  /// * [errorMessage]: An error message, empty on success.
  ///
  /// [Ok] is returned on completion.
  const AnswerPreCheckoutQuery({
    required this.preCheckoutQueryId,
    required this.errorMessage,
  });
  
  /// Identifier of the pre-checkout query 
  final int preCheckoutQueryId;

  /// An error message, empty on success
  final String errorMessage;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "pre_checkout_query_id": preCheckoutQueryId,
      "error_message": errorMessage,
      "@extra": extra,
    };
  }
  
  AnswerPreCheckoutQuery copyWith({
    int? preCheckoutQueryId,
    String? errorMessage,
  }) => AnswerPreCheckoutQuery(
    preCheckoutQueryId: preCheckoutQueryId ?? this.preCheckoutQueryId,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  static const String constructor = 'answerPreCheckoutQuery';
  
  @override
  String getConstructor() => constructor;
}
