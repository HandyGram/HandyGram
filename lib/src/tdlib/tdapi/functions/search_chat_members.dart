part of '../tdapi.dart';

/// **SearchChatMembers** *(searchChatMembers)* - TDLib function
///
/// Searches for a specified query in the first name, last name and usernames of the members of a specified chat. Requires administrator rights in channels.
///
/// * [chatId]: Chat identifier.
/// * [query]: Query to search for.
/// * [limit]: The maximum number of users to be returned; up to 200.
/// * [filter]: The type of users to search for; pass null to search among all chat members *(optional)*.
///
/// [ChatMembers] is returned on completion.
final class SearchChatMembers extends TdFunction {
  
  /// **SearchChatMembers** *(searchChatMembers)* - TDLib function
  ///
  /// Searches for a specified query in the first name, last name and usernames of the members of a specified chat. Requires administrator rights in channels.
  ///
  /// * [chatId]: Chat identifier.
  /// * [query]: Query to search for.
  /// * [limit]: The maximum number of users to be returned; up to 200.
  /// * [filter]: The type of users to search for; pass null to search among all chat members *(optional)*.
  ///
  /// [ChatMembers] is returned on completion.
  const SearchChatMembers({
    required this.chatId,
    required this.query,
    required this.limit,
    this.filter,
  });
  
  /// Chat identifier
  final int chatId;

  /// Query to search for
  final String query;

  /// The maximum number of users to be returned; up to 200
  final int limit;

  /// The type of users to search for; pass null to search among all chat members
  final ChatMembersFilter? filter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "query": query,
      "limit": limit,
      "filter": filter?.toJson(),
      "@extra": extra,
		};
	}

  
  SearchChatMembers copyWith({
    int? chatId,
    String? query,
    int? limit,
    ChatMembersFilter? filter,
  }) => SearchChatMembers(
    chatId: chatId ?? this.chatId,
    query: query ?? this.query,
    limit: limit ?? this.limit,
    filter: filter ?? this.filter,
  );

  static const String objectType = 'searchChatMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
