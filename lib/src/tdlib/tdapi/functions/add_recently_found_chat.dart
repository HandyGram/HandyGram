part of '../tdapi.dart';

/// **AddRecentlyFoundChat** *(addRecentlyFoundChat)* - TDLib function
///
/// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first.
///
/// * [chatId]: Identifier of the chat to add.
///
/// [Ok] is returned on completion.
final class AddRecentlyFoundChat extends TdFunction {
  
  /// **AddRecentlyFoundChat** *(addRecentlyFoundChat)* - TDLib function
  ///
  /// Adds a chat to the list of recently found chats. The chat is added to the beginning of the list. If the chat is already in the list, it will be removed from the list first.
  ///
  /// * [chatId]: Identifier of the chat to add.
  ///
  /// [Ok] is returned on completion.
  const AddRecentlyFoundChat({
    required this.chatId,
  });
  
  /// Identifier of the chat to add
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  AddRecentlyFoundChat copyWith({
    int? chatId,
  }) => AddRecentlyFoundChat(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'addRecentlyFoundChat';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
