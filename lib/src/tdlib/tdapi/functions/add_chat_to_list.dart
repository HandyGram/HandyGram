part of '../tdapi.dart';

/// **AddChatToList** *(addChatToList)* - TDLib function
///
/// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed.
///
/// * [chatId]: Chat identifier.
/// * [chatList]: The chat list. Use getChatListsToAddChat to get suitable chat lists.
///
/// [Ok] is returned on completion.
final class AddChatToList extends TdFunction {
  
  /// **AddChatToList** *(addChatToList)* - TDLib function
  ///
  /// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed.
  ///
  /// * [chatId]: Chat identifier.
  /// * [chatList]: The chat list. Use getChatListsToAddChat to get suitable chat lists.
  ///
  /// [Ok] is returned on completion.
  const AddChatToList({
    required this.chatId,
    required this.chatList,
  });
  
  /// Chat identifier
  final int chatId;

  /// The chat list. Use getChatListsToAddChat to get suitable chat lists
  final ChatList chatList;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "chat_list": chatList.toJson(),
      "@extra": extra,
		};
	}

  
  AddChatToList copyWith({
    int? chatId,
    ChatList? chatList,
  }) => AddChatToList(
    chatId: chatId ?? this.chatId,
    chatList: chatList ?? this.chatList,
  );

  static const String objectType = 'addChatToList';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
