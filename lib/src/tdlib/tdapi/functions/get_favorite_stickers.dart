part of '../tdapi.dart';

/// **GetFavoriteStickers** *(getFavoriteStickers)* - TDLib function
///
/// Returns favorite stickers.
///
/// [Stickers] is returned on completion.
final class GetFavoriteStickers extends TdFunction {
  
  /// **GetFavoriteStickers** *(getFavoriteStickers)* - TDLib function
  ///
  /// Returns favorite stickers.
  ///
  /// [Stickers] is returned on completion.
  const GetFavoriteStickers();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetFavoriteStickers copyWith() => const GetFavoriteStickers();

  static const String objectType = 'getFavoriteStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
