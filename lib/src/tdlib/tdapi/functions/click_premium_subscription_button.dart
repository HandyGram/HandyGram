part of '../tdapi.dart';

/// **ClickPremiumSubscriptionButton** *(clickPremiumSubscriptionButton)* - TDLib function
///
/// Informs TDLib that the user clicked Premium subscription button on the Premium features screen.
///
/// [Ok] is returned on completion.
final class ClickPremiumSubscriptionButton extends TdFunction {
  
  /// **ClickPremiumSubscriptionButton** *(clickPremiumSubscriptionButton)* - TDLib function
  ///
  /// Informs TDLib that the user clicked Premium subscription button on the Premium features screen.
  ///
  /// [Ok] is returned on completion.
  const ClickPremiumSubscriptionButton();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  ClickPremiumSubscriptionButton copyWith() => const ClickPremiumSubscriptionButton();

  static const String objectType = 'clickPremiumSubscriptionButton';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
