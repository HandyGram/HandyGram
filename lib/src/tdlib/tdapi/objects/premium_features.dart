part of '../tdapi.dart';

/// **PremiumFeatures** *(premiumFeatures)* - basic class
///
/// Contains information about features, available to Premium users.
///
/// * [features]: The list of available features.
/// * [limits]: The list of limits, increased for Premium users.
/// * [paymentLink]: An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available *(optional)*.
final class PremiumFeatures extends TdObject {
  
  /// **PremiumFeatures** *(premiumFeatures)* - basic class
  ///
  /// Contains information about features, available to Premium users.
  ///
  /// * [features]: The list of available features.
  /// * [limits]: The list of limits, increased for Premium users.
  /// * [paymentLink]: An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available *(optional)*.
  const PremiumFeatures({
    required this.features,
    required this.limits,
    this.paymentLink,
    this.extra,
    this.clientId,
  });
  
  /// The list of available features
  final List<PremiumFeature> features;

  /// The list of limits, increased for Premium users
  final List<PremiumLimit> limits;

  /// An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available
  final InternalLinkType? paymentLink;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PremiumFeatures.fromJson(Map<String, dynamic> json) => PremiumFeatures(
    features: List<PremiumFeature>.from((json['features'] ?? []).map((item) => PremiumFeature.fromJson(item)).toList()),
    limits: List<PremiumLimit>.from((json['limits'] ?? []).map((item) => PremiumLimit.fromJson(item)).toList()),
    paymentLink: json['payment_link'] == null ? null : InternalLinkType.fromJson(json['payment_link']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "features": features.map((i) => i.toJson()).toList(),
      "limits": limits.map((i) => i.toJson()).toList(),
      "payment_link": paymentLink?.toJson(),
		};
	}

  
  PremiumFeatures copyWith({
    List<PremiumFeature>? features,
    List<PremiumLimit>? limits,
    InternalLinkType? paymentLink,
    dynamic extra,
    int? clientId,
  }) => PremiumFeatures(
    features: features ?? this.features,
    limits: limits ?? this.limits,
    paymentLink: paymentLink ?? this.paymentLink,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'premiumFeatures';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
