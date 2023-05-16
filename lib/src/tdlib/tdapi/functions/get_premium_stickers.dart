part of '../tdapi.dart';

/// **GetPremiumStickers** *(getPremiumStickers)* - TDLib function
///
/// Returns premium stickers from regular sticker sets.
///
/// * [limit]: The maximum number of stickers to be returned; 0-100.
///
/// [Stickers] is returned on completion.
final class GetPremiumStickers extends TdFunction {
  
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
			"@type": objectType,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  GetPremiumStickers copyWith({
    int? limit,
  }) => GetPremiumStickers(
    limit: limit ?? this.limit,
  );

  static const String objectType = 'getPremiumStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
