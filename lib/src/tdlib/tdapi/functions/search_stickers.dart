part of '../tdapi.dart';

/// **SearchStickers** *(searchStickers)* - TDLib function
///
/// Searches for stickers from public sticker sets that correspond to a given emoji.
///
/// * [emoji]: String representation of emoji; must be non-empty.
/// * [limit]: The maximum number of stickers to be returned; 0-100.
///
/// [Stickers] is returned on completion.
final class SearchStickers extends TdFunction {
  
  /// **SearchStickers** *(searchStickers)* - TDLib function
  ///
  /// Searches for stickers from public sticker sets that correspond to a given emoji.
  ///
  /// * [emoji]: String representation of emoji; must be non-empty.
  /// * [limit]: The maximum number of stickers to be returned; 0-100.
  ///
  /// [Stickers] is returned on completion.
  const SearchStickers({
    required this.emoji,
    required this.limit,
  });
  
  /// String representation of emoji; must be non-empty 
  final String emoji;

  /// The maximum number of stickers to be returned; 0-100
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "emoji": emoji,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  SearchStickers copyWith({
    String? emoji,
    int? limit,
  }) => SearchStickers(
    emoji: emoji ?? this.emoji,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'searchStickers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
