part of '../tdapi.dart';

/// **ShippingOption** *(shippingOption)* - basic class
  ///
  /// One shipping option.
  ///
  /// * [id]: Shipping option identifier.
  /// * [title]: Option title.
  /// * [priceParts]: A list of objects used to calculate the total shipping costs.
class ShippingOption extends TdObject {
  
  /// **ShippingOption** *(shippingOption)* - basic class
  ///
  /// One shipping option.
  ///
  /// * [id]: Shipping option identifier.
  /// * [title]: Option title.
  /// * [priceParts]: A list of objects used to calculate the total shipping costs.
  const ShippingOption({
    required this.id,
    required this.title,
    required this.priceParts,
  });
  
  /// Shipping option identifier
  final String id;

  /// Option title
  final String title;

  /// A list of objects used to calculate the total shipping costs
  final List<LabeledPricePart> priceParts;
  
  /// Parse from a json
  factory ShippingOption.fromJson(Map<String, dynamic> json) => ShippingOption(
    id: json['id'],
    title: json['title'],
    priceParts: List<LabeledPricePart>.from((json['price_parts'] ?? []).map((item) => LabeledPricePart.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "id": id,
      "title": title,
      "price_parts": priceParts.map((i) => i.toJson()).toList(),
    };
  }
  
  ShippingOption copyWith({
    String? id,
    String? title,
    List<LabeledPricePart>? priceParts,
  }) => ShippingOption(
    id: id ?? this.id,
    title: title ?? this.title,
    priceParts: priceParts ?? this.priceParts,
  );

  static const String constructor = 'shippingOption';
  
  @override
  String getConstructor() => constructor;
}
