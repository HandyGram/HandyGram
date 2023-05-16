part of '../tdapi.dart';

/// **GetPremiumState** *(getPremiumState)* - TDLib function
///
/// Returns state of Telegram Premium subscription and promotion videos for Premium features.
///
/// [PremiumState] is returned on completion.
final class GetPremiumState extends TdFunction {
  
  /// **GetPremiumState** *(getPremiumState)* - TDLib function
  ///
  /// Returns state of Telegram Premium subscription and promotion videos for Premium features.
  ///
  /// [PremiumState] is returned on completion.
  const GetPremiumState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetPremiumState copyWith() => const GetPremiumState();

  static const String objectType = 'getPremiumState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
