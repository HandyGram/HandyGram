part of '../tdapi.dart';

/// **SearchContacts** *(searchContacts)* - TDLib function
  ///
  /// Searches for the specified query in the first names, last names and usernames of the known user contacts.
  ///
  /// * [query]: Query to search for; may be empty to return all contacts.
  /// * [limit]: The maximum number of users to be returned.
  ///
  /// [Users] is returned on completion.
class SearchContacts extends TdFunction {
  
  /// **SearchContacts** *(searchContacts)* - TDLib function
  ///
  /// Searches for the specified query in the first names, last names and usernames of the known user contacts.
  ///
  /// * [query]: Query to search for; may be empty to return all contacts.
  /// * [limit]: The maximum number of users to be returned.
  ///
  /// [Users] is returned on completion.
  const SearchContacts({
    required this.query,
    required this.limit,
  });
  
  /// Query to search for; may be empty to return all contacts
  final String query;

  /// The maximum number of users to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "query": query,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchContacts copyWith({
    String? query,
    int? limit,
  }) => SearchContacts(
    query: query ?? this.query,
    limit: limit ?? this.limit,
  );

  static const String constructor = 'searchContacts';
  
  @override
  String getConstructor() => constructor;
}
