part of '../tdapi.dart';

/// **SearchChats** *(searchChats)* - TDLib function
///
/// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list.
///
/// * [query]: Query to search for. If the query is empty, returns up to 50 recently found chats.
/// * [limit]: The maximum number of chats to be returned.
///
/// [Chats] is returned on completion.
final class SearchChats extends TdFunction {
  
  /// **SearchChats** *(searchChats)* - TDLib function
  ///
  /// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list.
  ///
  /// * [query]: Query to search for. If the query is empty, returns up to 50 recently found chats.
  /// * [limit]: The maximum number of chats to be returned.
  ///
  /// [Chats] is returned on completion.
  const SearchChats({
    required this.query,
    required this.limit,
  });
  
  /// Query to search for. If the query is empty, returns up to 50 recently found chats
  final String query;

  /// The maximum number of chats to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "query": query,
      "limit": limit,
      "@extra": extra,
		};
	}

  
  SearchChats copyWith({
    String? query,
    int? limit,
  }) => SearchChats(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'searchChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
