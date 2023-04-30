part of '../tdapi.dart';

/// **SearchChatRecentLocationMessages** *(searchChatRecentLocationMessages)* - TDLib function
  ///
  /// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user.
  ///
  /// * [chatId]: Chat identifier.
  /// * [limit]: The maximum number of messages to be returned.
  ///
  /// [Messages] is returned on completion.
class SearchChatRecentLocationMessages extends TdFunction {
  
  /// **SearchChatRecentLocationMessages** *(searchChatRecentLocationMessages)* - TDLib function
  ///
  /// Returns information about the recent locations of chat members that were sent to the chat. Returns up to 1 location message per user.
  ///
  /// * [chatId]: Chat identifier.
  /// * [limit]: The maximum number of messages to be returned.
  ///
  /// [Messages] is returned on completion.
  const SearchChatRecentLocationMessages({
    required this.chatId,
    required this.limit,
  });
  
  /// Chat identifier 
  final int chatId;

  /// The maximum number of messages to be returned
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "limit": limit,
      "@extra": extra,
    };
  }
  
  SearchChatRecentLocationMessages copyWith({
    int? chatId,
    int? limit,
  }) => SearchChatRecentLocationMessages(
    chatId: chatId ?? this.chatId,
    limit: limit ?? this.limit,
  );

  static const String constructor = 'searchChatRecentLocationMessages';
  
  @override
  String getConstructor() => constructor;
}
