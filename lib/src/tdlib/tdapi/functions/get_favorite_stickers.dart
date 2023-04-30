part of '../tdapi.dart';

/// **GetFavoriteStickers** *(getFavoriteStickers)* - TDLib function
  ///
  /// Returns favorite stickers.
  ///
  /// [Stickers] is returned on completion.
class GetFavoriteStickers extends TdFunction {
  
  /// **GetFavoriteStickers** *(getFavoriteStickers)* - TDLib function
  ///
  /// Returns favorite stickers.
  ///
  /// [Stickers] is returned on completion.
  const GetFavoriteStickers();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetFavoriteStickers copyWith() => const GetFavoriteStickers();

  static const String constructor = 'getFavoriteStickers';
  
  @override
  String getConstructor() => constructor;
}
