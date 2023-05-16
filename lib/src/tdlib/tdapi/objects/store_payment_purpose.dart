part of '../tdapi.dart';

/// **StorePaymentPurpose** *(storePaymentPurpose)* - parent
///
/// Describes a purpose of an in-store payment.
sealed class StorePaymentPurpose extends TdObject {
  
  /// **StorePaymentPurpose** *(storePaymentPurpose)* - parent
  ///
  /// Describes a purpose of an in-store payment.
  const StorePaymentPurpose();
  
  /// a StorePaymentPurpose return type can be :
  /// * [StorePaymentPurposePremiumSubscription]
  /// * [StorePaymentPurposeGiftedPremium]
  factory StorePaymentPurpose.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case StorePaymentPurposePremiumSubscription.objectType:
        return StorePaymentPurposePremiumSubscription.fromJson(json);
      case StorePaymentPurposeGiftedPremium.objectType:
        return StorePaymentPurposeGiftedPremium.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of StorePaymentPurpose)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  StorePaymentPurpose copyWith();

  static const String objectType = 'storePaymentPurpose';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StorePaymentPurposePremiumSubscription** *(storePaymentPurposePremiumSubscription)* - child of StorePaymentPurpose
///
/// The user subscribed to Telegram Premium.
///
/// * [isRestore]: Pass true if this is a restore of a Telegram Premium purchase; only for App Store.
final class StorePaymentPurposePremiumSubscription extends StorePaymentPurpose {
  
  /// **StorePaymentPurposePremiumSubscription** *(storePaymentPurposePremiumSubscription)* - child of StorePaymentPurpose
  ///
  /// The user subscribed to Telegram Premium.
  ///
  /// * [isRestore]: Pass true if this is a restore of a Telegram Premium purchase; only for App Store.
  const StorePaymentPurposePremiumSubscription({
    required this.isRestore,
  });
  
  /// Pass true if this is a restore of a Telegram Premium purchase; only for App Store
  final bool isRestore;
  
  /// Parse from a json
  factory StorePaymentPurposePremiumSubscription.fromJson(Map<String, dynamic> json) => StorePaymentPurposePremiumSubscription(
    isRestore: json['is_restore'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "is_restore": isRestore,
		};
	}

  
  @override
  StorePaymentPurposePremiumSubscription copyWith({
    bool? isRestore,
  }) => StorePaymentPurposePremiumSubscription(
    isRestore: isRestore ?? this.isRestore,
  );

  static const String objectType = 'storePaymentPurposePremiumSubscription';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **StorePaymentPurposeGiftedPremium** *(storePaymentPurposeGiftedPremium)* - child of StorePaymentPurpose
///
/// The user gifted Telegram Premium to another user.
///
/// * [userId]: Identifier of the user for which Premium was gifted.
/// * [currency]: ISO 4217 currency code of the payment currency.
/// * [amount]: Paid amount, in the smallest units of the currency.
final class StorePaymentPurposeGiftedPremium extends StorePaymentPurpose {
  
  /// **StorePaymentPurposeGiftedPremium** *(storePaymentPurposeGiftedPremium)* - child of StorePaymentPurpose
  ///
  /// The user gifted Telegram Premium to another user.
  ///
  /// * [userId]: Identifier of the user for which Premium was gifted.
  /// * [currency]: ISO 4217 currency code of the payment currency.
  /// * [amount]: Paid amount, in the smallest units of the currency.
  const StorePaymentPurposeGiftedPremium({
    required this.userId,
    required this.currency,
    required this.amount,
  });
  
  /// Identifier of the user for which Premium was gifted 
  final int userId;

  /// ISO 4217 currency code of the payment currency 
  final String currency;

  /// Paid amount, in the smallest units of the currency
  final int amount;
  
  /// Parse from a json
  factory StorePaymentPurposeGiftedPremium.fromJson(Map<String, dynamic> json) => StorePaymentPurposeGiftedPremium(
    userId: json['user_id'],
    currency: json['currency'],
    amount: json['amount'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "user_id": userId,
      "currency": currency,
      "amount": amount,
		};
	}

  
  @override
  StorePaymentPurposeGiftedPremium copyWith({
    int? userId,
    String? currency,
    int? amount,
  }) => StorePaymentPurposeGiftedPremium(
    userId: userId ?? this.userId,
    currency: currency ?? this.currency,
    amount: amount ?? this.amount,
  );

  static const String objectType = 'storePaymentPurposeGiftedPremium';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
