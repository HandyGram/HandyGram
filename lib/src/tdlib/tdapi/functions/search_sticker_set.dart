part of '../tdapi.dart';

/// **SearchStickerSet** *(searchStickerSet)* - TDLib function
///
/// Searches for a sticker set by its name.
///
/// * [name]: Name of the sticker set.
///
/// [StickerSet] is returned on completion.
final class SearchStickerSet extends TdFunction {
  
  /// **SearchStickerSet** *(searchStickerSet)* - TDLib function
  ///
  /// Searches for a sticker set by its name.
  ///
  /// * [name]: Name of the sticker set.
  ///
  /// [StickerSet] is returned on completion.
  const SearchStickerSet({
    required this.name,
  });
  
  /// Name of the sticker set
  final String name;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "name": name,
      "@extra": extra,
		};
	}

  
  SearchStickerSet copyWith({
    String? name,
  }) => SearchStickerSet(
    name: name ?? this.name,
  );

  static const String objectType = 'searchStickerSet';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
