part of '../tdapi.dart';

/// **GetSavedAnimations** *(getSavedAnimations)* - TDLib function
  ///
  /// Returns saved animations.
  ///
  /// [Animations] is returned on completion.
class GetSavedAnimations extends TdFunction {
  
  /// **GetSavedAnimations** *(getSavedAnimations)* - TDLib function
  ///
  /// Returns saved animations.
  ///
  /// [Animations] is returned on completion.
  const GetSavedAnimations();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetSavedAnimations copyWith() => const GetSavedAnimations();

  static const String constructor = 'getSavedAnimations';
  
  @override
  String getConstructor() => constructor;
}
