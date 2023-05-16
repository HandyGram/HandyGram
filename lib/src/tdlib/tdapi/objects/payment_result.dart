part of '../tdapi.dart';

/// **PaymentResult** *(paymentResult)* - basic class
///
/// Contains the result of a payment request.
///
/// * [success]: True, if the payment request was successful; otherwise, the verification_url will be non-empty.
/// * [verificationUrl]: URL for additional payment credentials verification.
final class PaymentResult extends TdObject {
  
  /// **PaymentResult** *(paymentResult)* - basic class
  ///
  /// Contains the result of a payment request.
  ///
  /// * [success]: True, if the payment request was successful; otherwise, the verification_url will be non-empty.
  /// * [verificationUrl]: URL for additional payment credentials verification.
  const PaymentResult({
    required this.success,
    required this.verificationUrl,
    this.extra,
    this.clientId,
  });
  
  /// True, if the payment request was successful; otherwise, the verification_url will be non-empty 
  final bool success;

  /// URL for additional payment credentials verification
  final String verificationUrl;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PaymentResult.fromJson(Map<String, dynamic> json) => PaymentResult(
    success: json['success'],
    verificationUrl: json['verification_url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "success": success,
      "verification_url": verificationUrl,
		};
	}

  
  PaymentResult copyWith({
    bool? success,
    String? verificationUrl,
    dynamic extra,
    int? clientId,
  }) => PaymentResult(
    success: success ?? this.success,
    verificationUrl: verificationUrl ?? this.verificationUrl,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'paymentResult';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
