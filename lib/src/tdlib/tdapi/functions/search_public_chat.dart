part of '../tdapi.dart';

/// **SearchPublicChat** *(searchPublicChat)* - TDLib function
  ///
  /// Searches a public chat by its username. Currently, only private chats, supergroups and channels can be public. Returns the chat if found; otherwise, an error is returned.
  ///
  /// * [username]: Username to be resolved.
  ///
  /// [Chat] is returned on completion.
class SearchPublicChat extends TdFunction {
  
  /// **SearchPublicChat** *(searchPublicChat)* - TDLib function
  ///
  /// Searches a public chat by its username. Currently, only private chats, supergroups and channels can be public. Returns the chat if found; otherwise, an error is returned.
  ///
  /// * [username]: Username to be resolved.
  ///
  /// [Chat] is returned on completion.
  const SearchPublicChat({
    required this.username,
  });
  
  /// Username to be resolved
  final String username;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "username": username,
      "@extra": extra,
    };
  }
  
  SearchPublicChat copyWith({
    String? username,
  }) => SearchPublicChat(
    username: username ?? this.username,
  );

  static const String constructor = 'searchPublicChat';
  
  @override
  String getConstructor() => constructor;
}
