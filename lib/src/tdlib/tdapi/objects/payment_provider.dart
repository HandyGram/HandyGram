part of '../tdapi.dart';

/// **PaymentProvider** *(paymentProvider)* - parent
///
/// Contains information about a payment provider.
sealed class PaymentProvider extends TdObject {
  
  /// **PaymentProvider** *(paymentProvider)* - parent
  ///
  /// Contains information about a payment provider.
  const PaymentProvider();
  
  /// a PaymentProvider return type can be :
  /// * [PaymentProviderSmartGlocal]
  /// * [PaymentProviderStripe]
  /// * [PaymentProviderOther]
  factory PaymentProvider.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PaymentProviderSmartGlocal.objectType:
        return PaymentProviderSmartGlocal.fromJson(json);
      case PaymentProviderStripe.objectType:
        return PaymentProviderStripe.fromJson(json);
      case PaymentProviderOther.objectType:
        return PaymentProviderOther.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PaymentProvider)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PaymentProvider copyWith();

  static const String objectType = 'paymentProvider';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PaymentProviderSmartGlocal** *(paymentProviderSmartGlocal)* - child of PaymentProvider
///
/// Smart Glocal payment provider.
///
/// * [publicToken]: Public payment token.
final class PaymentProviderSmartGlocal extends PaymentProvider {
  
  /// **PaymentProviderSmartGlocal** *(paymentProviderSmartGlocal)* - child of PaymentProvider
  ///
  /// Smart Glocal payment provider.
  ///
  /// * [publicToken]: Public payment token.
  const PaymentProviderSmartGlocal({
    required this.publicToken,
  });
  
  /// Public payment token
  final String publicToken;
  
  /// Parse from a json
  factory PaymentProviderSmartGlocal.fromJson(Map<String, dynamic> json) => PaymentProviderSmartGlocal(
    publicToken: json['public_token'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "public_token": publicToken,
		};
	}

  
  @override
  PaymentProviderSmartGlocal copyWith({
    String? publicToken,
  }) => PaymentProviderSmartGlocal(
    publicToken: publicToken ?? this.publicToken,
  );

  static const String objectType = 'paymentProviderSmartGlocal';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PaymentProviderStripe** *(paymentProviderStripe)* - child of PaymentProvider
///
/// Stripe payment provider.
///
/// * [publishableKey]: Stripe API publishable key.
/// * [needCountry]: True, if the user country must be provided.
/// * [needPostalCode]: True, if the user ZIP/postal code must be provided.
/// * [needCardholderName]: True, if the cardholder name must be provided.
final class PaymentProviderStripe extends PaymentProvider {
  
  /// **PaymentProviderStripe** *(paymentProviderStripe)* - child of PaymentProvider
  ///
  /// Stripe payment provider.
  ///
  /// * [publishableKey]: Stripe API publishable key.
  /// * [needCountry]: True, if the user country must be provided.
  /// * [needPostalCode]: True, if the user ZIP/postal code must be provided.
  /// * [needCardholderName]: True, if the cardholder name must be provided.
  const PaymentProviderStripe({
    required this.publishableKey,
    required this.needCountry,
    required this.needPostalCode,
    required this.needCardholderName,
  });
  
  /// Stripe API publishable key
  final String publishableKey;

  /// True, if the user country must be provided
  final bool needCountry;

  /// True, if the user ZIP/postal code must be provided
  final bool needPostalCode;

  /// True, if the cardholder name must be provided
  final bool needCardholderName;
  
  /// Parse from a json
  factory PaymentProviderStripe.fromJson(Map<String, dynamic> json) => PaymentProviderStripe(
    publishableKey: json['publishable_key'],
    needCountry: json['need_country'],
    needPostalCode: json['need_postal_code'],
    needCardholderName: json['need_cardholder_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "publishable_key": publishableKey,
      "need_country": needCountry,
      "need_postal_code": needPostalCode,
      "need_cardholder_name": needCardholderName,
		};
	}

  
  @override
  PaymentProviderStripe copyWith({
    String? publishableKey,
    bool? needCountry,
    bool? needPostalCode,
    bool? needCardholderName,
  }) => PaymentProviderStripe(
    publishableKey: publishableKey ?? this.publishableKey,
    needCountry: needCountry ?? this.needCountry,
    needPostalCode: needPostalCode ?? this.needPostalCode,
    needCardholderName: needCardholderName ?? this.needCardholderName,
  );

  static const String objectType = 'paymentProviderStripe';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PaymentProviderOther** *(paymentProviderOther)* - child of PaymentProvider
///
/// Some other payment provider, for which a web payment form must be shown.
///
/// * [url]: Payment form URL.
final class PaymentProviderOther extends PaymentProvider {
  
  /// **PaymentProviderOther** *(paymentProviderOther)* - child of PaymentProvider
  ///
  /// Some other payment provider, for which a web payment form must be shown.
  ///
  /// * [url]: Payment form URL.
  const PaymentProviderOther({
    required this.url,
  });
  
  /// Payment form URL
  final String url;
  
  /// Parse from a json
  factory PaymentProviderOther.fromJson(Map<String, dynamic> json) => PaymentProviderOther(
    url: json['url'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  
  @override
  PaymentProviderOther copyWith({
    String? url,
  }) => PaymentProviderOther(
    url: url ?? this.url,
  );

  static const String objectType = 'paymentProviderOther';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
