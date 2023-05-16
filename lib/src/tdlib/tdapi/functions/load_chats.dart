part of '../tdapi.dart';

/// **LoadChats** *(loadChats)* - TDLib function
///
/// Loads more chats from a chat list. The loaded chats and their positions in the chat list will be sent through updates. Chats are sorted by the pair (chat.position.order, chat.id) in descending order. Returns a 404 error if all chats have been loaded.
///
/// * [chatList]: The chat list in which to load chats; pass null to load chats from the main chat list *(optional)*.
/// * [limit]: The maximum number of chats to be loaded. For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached.
///
/// [Ok] is returned on completion.
final class LoadChats extends TdFunction {
  
  /// **LoadChats** *(loadChats)* - TDLib function
  ///
  /// Loads more chats from a chat list. The loaded chats and their positions in the chat list will be sent through updates. Chats are sorted by the pair (chat.position.order, chat.id) in descending order. Returns a 404 error if all chats have been loaded.
  ///
  /// * [chatList]: The chat list in which to load chats; pass null to load chats from the main chat list *(optional)*.
  /// * [limit]: The maximum number of chats to be loaded. For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached.
  ///
  /// [Ok] is returned on completion.
  const LoadChats({
    this.chatList,
    required this.limit,
  });
  
  /// The chat list in which to load chats; pass null to load chats from the main chat list
  final ChatList? chatList;

  /// The maximum number of chats to be loaded. For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified limit, even if the end of the list is not reached
  final int limit;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_list": chatList?.toJson(),
      "limit": limit,
      "@extra": extra,
		};
	}

  
  LoadChats copyWith({
    ChatList? chatList,
    int? limit,
  }) => LoadChats(
    chatList: chatList ?? this.chatList,
    limit: limit ?? this.limit,
  );

  static const String objectType = 'loadChats';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
