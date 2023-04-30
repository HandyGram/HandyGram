part of '../tdapi.dart';

/// **SearchStickerSet** *(searchStickerSet)* - TDLib function
  ///
  /// Searches for a sticker set by its name.
  ///
  /// * [name]: Name of the sticker set.
  ///
  /// [StickerSet] is returned on completion.
class SearchStickerSet extends TdFunction {
  
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
      "@type": constructor,
      "name": name,
      "@extra": extra,
    };
  }
  
  SearchStickerSet copyWith({
    String? name,
  }) => SearchStickerSet(
    name: name ?? this.name,
  );

  static const String constructor = 'searchStickerSet';
  
  @override
  String getConstructor() => constructor;
}
