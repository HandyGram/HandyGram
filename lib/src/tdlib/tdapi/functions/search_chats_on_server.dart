part of '../tdapi.dart';

/// **SearchChatsOnServer** *(searchChatsOnServer)* - TDLib function
///
/// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list.
///
/// * [query]: Query to search for.
/// * [limit]: The maximum number of chats to be returned.
///
/// [Chats] is returned on completion.
final class SearchChatsOnServer extends TdFunction {
  
  /// **SearchChatsOnServer** *(searchChatsOnServer)* - TDLib function
  ///
  /// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list.
  ///
  /// * [query]: Query to search for.
  /// * [limit]: The maximum number of chats to be returned.
  ///
  /// [Chats] is returned on completion.
  const SearchChatsOnServer({
    required this.query,
    required this.limit,
  });
  
  /// Query to search for 
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

  
  SearchChatsOnServer copyWith({
    String? query,
    int? limit,
  }) => SearchChatsOnServer(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'searchChatsOnServer';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
