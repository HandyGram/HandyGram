part of '../tdapi.dart';

/// **PremiumPaymentOption** *(premiumPaymentOption)* - basic class
///
/// Describes an option for buying Telegram Premium to a user.
///
/// * [currency]: ISO 4217 currency code for Telegram Premium subscription payment.
/// * [amount]: The amount to pay, in the smallest units of the currency.
/// * [discountPercentage]: The discount associated with this option, as a percentage.
/// * [monthCount]: Number of month the Telegram Premium subscription will be active.
/// * [storeProductId]: Identifier of the store product associated with the option.
/// * [paymentLink]: An internal link to be opened for buying Telegram Premium to the user if store payment isn't possible; may be null if direct payment isn't available *(optional)*.
final class PremiumPaymentOption extends TdObject {
  
  /// **PremiumPaymentOption** *(premiumPaymentOption)* - basic class
  ///
  /// Describes an option for buying Telegram Premium to a user.
  ///
  /// * [currency]: ISO 4217 currency code for Telegram Premium subscription payment.
  /// * [amount]: The amount to pay, in the smallest units of the currency.
  /// * [discountPercentage]: The discount associated with this option, as a percentage.
  /// * [monthCount]: Number of month the Telegram Premium subscription will be active.
  /// * [storeProductId]: Identifier of the store product associated with the option.
  /// * [paymentLink]: An internal link to be opened for buying Telegram Premium to the user if store payment isn't possible; may be null if direct payment isn't available *(optional)*.
  const PremiumPaymentOption({
    required this.currency,
    required this.amount,
    required this.discountPercentage,
    required this.monthCount,
    required this.storeProductId,
    this.paymentLink,
  });
  
  /// ISO 4217 currency code for Telegram Premium subscription payment
  final String currency;

  /// The amount to pay, in the smallest units of the currency
  final int amount;

  /// The discount associated with this option, as a percentage
  final int discountPercentage;

  /// Number of month the Telegram Premium subscription will be active
  final int monthCount;

  /// Identifier of the store product associated with the option
  final String storeProductId;

  /// An internal link to be opened for buying Telegram Premium to the user if store payment isn't possible; may be null if direct payment isn't available
  final InternalLinkType? paymentLink;
  
  /// Parse from a json
  factory PremiumPaymentOption.fromJson(Map<String, dynamic> json) => PremiumPaymentOption(
    currency: json['currency'],
    amount: json['amount'],
    discountPercentage: json['discount_percentage'],
    monthCount: json['month_count'],
    storeProductId: json['store_product_id'],
    paymentLink: json['payment_link'] == null ? null : InternalLinkType.fromJson(json['payment_link']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "currency": currency,
      "amount": amount,
      "discount_percentage": discountPercentage,
      "month_count": monthCount,
      "store_product_id": storeProductId,
      "payment_link": paymentLink?.toJson(),
		};
	}

  
  PremiumPaymentOption copyWith({
    String? currency,
    int? amount,
    int? discountPercentage,
    int? monthCount,
    String? storeProductId,
    InternalLinkType? paymentLink,
  }) => PremiumPaymentOption(
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
    discountPercentage: discountPercentage ?? this.discountPercentage,
    monthCount: monthCount ?? this.monthCount,
    storeProductId: storeProductId ?? this.storeProductId,
    paymentLink: paymentLink ?? this.paymentLink,
  );

  static const String objectType = 'premiumPaymentOption';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
