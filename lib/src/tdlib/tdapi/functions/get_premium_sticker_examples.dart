part of '../tdapi.dart';

/// **GetPremiumStickerExamples** *(getPremiumStickerExamples)* - TDLib function
///
/// Returns examples of premium stickers for demonstration purposes.
///
/// [Stickers] is returned on completion.
final class GetPremiumStickerExamples extends TdFunction {
  
  /// **GetPremiumStickerExamples** *(getPremiumStickerExamples)* - TDLib function
  ///
  /// Returns examples of premium stickers for demonstration purposes.
  ///
  /// [Stickers] is returned on completion.
  const GetPremiumStickerExamples();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetPremiumStickerExamples copyWith() => const GetPremiumStickerExamples();

  static const String objectType = 'getPremiumStickerExamples';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
