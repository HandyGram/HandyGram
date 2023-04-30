part of '../tdapi.dart';

/// **GetPremiumState** *(getPremiumState)* - TDLib function
  ///
  /// Returns state of Telegram Premium subscription and promotion videos for Premium features.
  ///
  /// [PremiumState] is returned on completion.
class GetPremiumState extends TdFunction {
  
  /// **GetPremiumState** *(getPremiumState)* - TDLib function
  ///
  /// Returns state of Telegram Premium subscription and promotion videos for Premium features.
  ///
  /// [PremiumState] is returned on completion.
  const GetPremiumState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetPremiumState copyWith() => const GetPremiumState();

  static const String constructor = 'getPremiumState';
  
  @override
  String getConstructor() => constructor;
}
