part of '../tdapi.dart';

/// **ResetBackgrounds** *(resetBackgrounds)* - TDLib function
  ///
  /// Resets list of installed backgrounds to its default value.
  ///
  /// [Ok] is returned on completion.
class ResetBackgrounds extends TdFunction {
  
  /// **ResetBackgrounds** *(resetBackgrounds)* - TDLib function
  ///
  /// Resets list of installed backgrounds to its default value.
  ///
  /// [Ok] is returned on completion.
  const ResetBackgrounds();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  ResetBackgrounds copyWith() => const ResetBackgrounds();

  static const String constructor = 'resetBackgrounds';
  
  @override
  String getConstructor() => constructor;
}
