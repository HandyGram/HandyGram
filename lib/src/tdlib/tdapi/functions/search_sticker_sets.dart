part of '../tdapi.dart';

/// **SearchStickerSets** *(searchStickerSets)* - TDLib function
///
/// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results.
///
/// * [query]: Query to search for.
///
/// [StickerSets] is returned on completion.
final class SearchStickerSets extends TdFunction {
  
  /// **SearchStickerSets** *(searchStickerSets)* - TDLib function
  ///
  /// Searches for ordinary sticker sets by looking for specified query in their title and name. Excludes installed sticker sets from the results.
  ///
  /// * [query]: Query to search for.
  ///
  /// [StickerSets] is returned on completion.
  const SearchStickerSets({
    required this.query,
  });
  
  /// Query to search for
  final String query;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "query": query,
      "@extra": extra,
		};
	}

  
  SearchStickerSets copyWith({
    String? query,
  }) => SearchStickerSets(
    query: query ?? this.query,
  );

  static const String objectType = 'searchStickerSets';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
