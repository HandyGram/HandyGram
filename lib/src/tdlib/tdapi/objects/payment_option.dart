part of '../tdapi.dart';

/// **PaymentOption** *(paymentOption)* - basic class
  ///
  /// Describes an additional payment option.
  ///
  /// * [title]: Title for the payment option.
  /// * [url]: Payment form URL to be opened in a web view.
class PaymentOption extends TdObject {
  
  /// **PaymentOption** *(paymentOption)* - basic class
  ///
  /// Describes an additional payment option.
  ///
  /// * [title]: Title for the payment option.
  /// * [url]: Payment form URL to be opened in a web view.
  const PaymentOption({
    required this.title,
    required this.url,
  });
  
  /// Title for the payment option 
  final String title;

  /// Payment form URL to be opened in a web view
  final String url;
  
  /// Parse from a json
  factory PaymentOption.fromJson(Map<String, dynamic> json) => PaymentOption(
    title: json['title'],
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "title": title,
      "url": url,
    };
  }
  
  PaymentOption copyWith({
    String? title,
    String? url,
  }) => PaymentOption(
    title: title ?? this.title,
    url: url ?? this.url,
  );

  static const String constructor = 'paymentOption';
  
  @override
  String getConstructor() => constructor;
}
