part of '../tdapi.dart';

/// **GetPremiumStickerExamples** *(getPremiumStickerExamples)* - TDLib function
  ///
  /// Returns examples of premium stickers for demonstration purposes.
  ///
  /// [Stickers] is returned on completion.
class GetPremiumStickerExamples extends TdFunction {
  
  /// **GetPremiumStickerExamples** *(getPremiumStickerExamples)* - TDLib function
  ///
  /// Returns examples of premium stickers for demonstration purposes.
  ///
  /// [Stickers] is returned on completion.
  const GetPremiumStickerExamples();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetPremiumStickerExamples copyWith() => const GetPremiumStickerExamples();

  static const String constructor = 'getPremiumStickerExamples';
  
  @override
  String getConstructor() => constructor;
}
