part of '../tdapi.dart';

/// **AnswerShippingQuery** *(answerShippingQuery)* - TDLib function
///
/// Sets the result of a shipping query; for bots only.
///
/// * [shippingQueryId]: Identifier of the shipping query.
/// * [shippingOptions]: Available shipping options.
/// * [errorMessage]: An error message, empty on success.
///
/// [Ok] is returned on completion.
final class AnswerShippingQuery extends TdFunction {
  
  /// **AnswerShippingQuery** *(answerShippingQuery)* - TDLib function
  ///
  /// Sets the result of a shipping query; for bots only.
  ///
  /// * [shippingQueryId]: Identifier of the shipping query.
  /// * [shippingOptions]: Available shipping options.
  /// * [errorMessage]: An error message, empty on success.
  ///
  /// [Ok] is returned on completion.
  const AnswerShippingQuery({
    required this.shippingQueryId,
    required this.shippingOptions,
    required this.errorMessage,
  });
  
  /// Identifier of the shipping query 
  final int shippingQueryId;

  /// Available shipping options 
  final List<ShippingOption> shippingOptions;

  /// An error message, empty on success
  final String errorMessage;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "shipping_query_id": shippingQueryId,
      "shipping_options": shippingOptions.map((i) => i.toJson()).toList(),
      "error_message": errorMessage,
      "@extra": extra,
		};
	}

  
  AnswerShippingQuery copyWith({
    int? shippingQueryId,
    List<ShippingOption>? shippingOptions,
    String? errorMessage,
  }) => AnswerShippingQuery(
    shippingQueryId: shippingQueryId ?? this.shippingQueryId,
    shippingOptions: shippingOptions ?? this.shippingOptions,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  static const String objectType = 'answerShippingQuery';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
