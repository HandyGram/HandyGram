part of '../tdapi.dart';

/// **BankCardActionOpenUrl** *(bankCardActionOpenUrl)* - basic class
///
/// Describes an action associated with a bank card number.
///
/// * [text]: Action text.
/// * [url]: The URL to be opened.
final class BankCardActionOpenUrl extends TdObject {
  
  /// **BankCardActionOpenUrl** *(bankCardActionOpenUrl)* - basic class
  ///
  /// Describes an action associated with a bank card number.
  ///
  /// * [text]: Action text.
  /// * [url]: The URL to be opened.
  const BankCardActionOpenUrl({
    required this.text,
    required this.url,
  });
  
  /// Action text 
  final String text;

  /// The URL to be opened
  final String url;
  
  /// Parse from a json
  factory BankCardActionOpenUrl.fromJson(Map<String, dynamic> json) => BankCardActionOpenUrl(
    text: json['text'],
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
      "url": url,
		};
	}

  
  BankCardActionOpenUrl copyWith({
    String? text,
    String? url,
  }) => BankCardActionOpenUrl(
    text: text ?? this.text,
    url: url ?? this.url,
  );

  static const String objectType = 'bankCardActionOpenUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
