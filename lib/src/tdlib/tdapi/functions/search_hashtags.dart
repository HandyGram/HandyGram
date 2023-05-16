part of '../tdapi.dart';

/// **SearchHashtags** *(searchHashtags)* - TDLib function
///
/// Searches for recently used hashtags by their prefix.
///
/// * [prefix]: Hashtag prefix to search for.
/// * [limit]: The maximum number of hashtags to be returned.
///
/// [Hashtags] is returned on completion.
final class SearchHashtags extends TdFunction {
  
  /// **SearchHashtags** *(searchHashtags)* - TDLib function
  ///
  /// Searches for recently used hashtags by their prefix.
  ///
  /// * [prefix]: Hashtag prefix to search for.
  /// * [limit]: The maximum number of hashtags to be returned.
  ///
  /// [Hashtags] is returned on completion.
  const SearchHashtags({
    required this.prefix,
    required this.limit,
  });
  
  /// Hashtag prefix to search for 
  final String prefix;

  /// The maximum number of hashtags to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "prefix": prefix,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  SearchHashtags copyWith({
    String? prefix,
    int? limit,
  }) => SearchHashtags(
    prefix: prefix ?? this.prefix,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'searchHashtags';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
