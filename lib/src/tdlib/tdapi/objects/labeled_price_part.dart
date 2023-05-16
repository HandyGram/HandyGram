part of '../tdapi.dart';

/// **LabeledPricePart** *(labeledPricePart)* - basic class
///
/// Portion of the price of a product (e.g., "delivery cost", "tax amount").
///
/// * [label]: Label for this portion of the product price.
/// * [amount]: Currency amount in the smallest units of the currency.
final class LabeledPricePart extends TdObject {
  
  /// **LabeledPricePart** *(labeledPricePart)* - basic class
  ///
  /// Portion of the price of a product (e.g., "delivery cost", "tax amount").
  ///
  /// * [label]: Label for this portion of the product price.
  /// * [amount]: Currency amount in the smallest units of the currency.
  const LabeledPricePart({
    required this.label,
    required this.amount,
  });
  
  /// Label for this portion of the product price 
  final String label;

  /// Currency amount in the smallest units of the currency
  final int amount;
  
  /// Parse from a json
  factory LabeledPricePart.fromJson(Map<String, dynamic> json) => LabeledPricePart(
    label: json['label'],
    amount: json['amount'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "label": label,
      "amount": amount,
		};
	}

  
  LabeledPricePart copyWith({
    String? label,
    int? amount,
  }) => LabeledPricePart(
    label: label ?? this.label,
    amount: amount ?? this.amount,
  );

  static const String objectType = 'labeledPricePart';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
