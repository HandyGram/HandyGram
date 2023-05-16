part of '../tdapi.dart';

/// **PremiumState** *(premiumState)* - basic class
///
/// Contains state of Telegram Premium subscription and promotion videos for Premium features.
///
/// * [state]: Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription.
/// * [paymentOptions]: The list of available options for buying Telegram Premium.
/// * [animations]: The list of available promotion animations for Premium features.
final class PremiumState extends TdObject {
  
  /// **PremiumState** *(premiumState)* - basic class
  ///
  /// Contains state of Telegram Premium subscription and promotion videos for Premium features.
  ///
  /// * [state]: Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription.
  /// * [paymentOptions]: The list of available options for buying Telegram Premium.
  /// * [animations]: The list of available promotion animations for Premium features.
  const PremiumState({
    required this.state,
    required this.paymentOptions,
    required this.animations,
    this.extra,
    this.clientId,
  });
  
  /// Text description of the state of the current Premium subscription; may be empty if the current user has no Telegram Premium subscription
  final FormattedText state;

  /// The list of available options for buying Telegram Premium
  final List<PremiumPaymentOption> paymentOptions;

  /// The list of available promotion animations for Premium features
  final List<PremiumFeaturePromotionAnimation> animations;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PremiumState.fromJson(Map<String, dynamic> json) => PremiumState(
    state: FormattedText.fromJson(json['state']),
    paymentOptions: List<PremiumPaymentOption>.from((json['payment_options'] ?? []).map((item) => PremiumPaymentOption.fromJson(item)).toList()),
    animations: List<PremiumFeaturePromotionAnimation>.from((json['animations'] ?? []).map((item) => PremiumFeaturePromotionAnimation.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "state": state.toJson(),
      "payment_options": paymentOptions.map((i) => i.toJson()).toList(),
      "animations": animations.map((i) => i.toJson()).toList(),
		};
	}

  
  PremiumState copyWith({
    FormattedText? state,
    List<PremiumPaymentOption>? paymentOptions,
    List<PremiumFeaturePromotionAnimation>? animations,
    dynamic extra,
    int? clientId,
  }) => PremiumState(
    state: state ?? this.state,
    paymentOptions: paymentOptions ?? this.paymentOptions,
    animations: animations ?? this.animations,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'premiumState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
