part of '../tdapi.dart';

/// **CanPurchasePremium** *(canPurchasePremium)* - TDLib function
///
/// Checks whether Telegram Premium purchase is possible. Must be called before in-store Premium purchase.
///
/// * [purpose]: Transaction purpose.
///
/// [Ok] is returned on completion.
final class CanPurchasePremium extends TdFunction {
  
  /// **CanPurchasePremium** *(canPurchasePremium)* - TDLib function
  ///
  /// Checks whether Telegram Premium purchase is possible. Must be called before in-store Premium purchase.
  ///
  /// * [purpose]: Transaction purpose.
  ///
  /// [Ok] is returned on completion.
  const CanPurchasePremium({
    required this.purpose,
  });
  
  /// Transaction purpose
  final StorePaymentPurpose purpose;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "purpose": purpose.toJson(),
      "@extra": extra,
		};
	}

  
  CanPurchasePremium copyWith({
    StorePaymentPurpose? purpose,
  }) => CanPurchasePremium(
    purpose: purpose ?? this.purpose,
  );

  static const String objectType = 'canPurchasePremium';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
