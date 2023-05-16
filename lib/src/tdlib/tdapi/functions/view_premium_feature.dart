part of '../tdapi.dart';

/// **ViewPremiumFeature** *(viewPremiumFeature)* - TDLib function
///
/// Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen.
///
/// * [feature]: The viewed premium feature.
///
/// [Ok] is returned on completion.
final class ViewPremiumFeature extends TdFunction {
  
  /// **ViewPremiumFeature** *(viewPremiumFeature)* - TDLib function
  ///
  /// Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen.
  ///
  /// * [feature]: The viewed premium feature.
  ///
  /// [Ok] is returned on completion.
  const ViewPremiumFeature({
    required this.feature,
  });
  
  /// The viewed premium feature
  final PremiumFeature feature;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "feature": feature.toJson(),
      "@extra": extra,
		};
	}

  
  ViewPremiumFeature copyWith({
    PremiumFeature? feature,
  }) => ViewPremiumFeature(
    feature: feature ?? this.feature,
  );

  static const String objectType = 'viewPremiumFeature';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
