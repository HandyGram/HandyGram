part of '../tdapi.dart';

/// **GetPremiumStickers** *(getPremiumStickers)* - TDLib function
  ///
  /// Returns premium stickers from regular sticker sets.
  ///
  /// * [limit]: The maximum number of stickers to be returned; 0-100.
  ///
  /// [Stickers] is returned on completion.
class GetPremiumStickers extends TdFunction {
  
  /// **GetPremiumStickers** *(getPremiumStickers)* - TDLib function
  ///
  /// Returns premium stickers from regular sticker sets.
  ///
  /// * [limit]: The maximum number of stickers to be returned; 0-100.
  ///
  /// [Stickers] is returned on completion.
  const GetPremiumStickers({
    required this.limit,
  });
  
  /// The maximum number of stickers to be returned; 0-100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  GetPremiumStickers copyWith({
    int? limit,
  }) => GetPremiumStickers(
    limit: limit ?? this.limit,
  );

  static const String constructor = 'getPremiumStickers';
  
  @override
  String getConstructor() => constructor;
}
