part of '../tdapi.dart';

/// **RemoveRecentlyFoundChat** *(removeRecentlyFoundChat)* - TDLib function
  ///
  /// Removes a chat from the list of recently found chats.
  ///
  /// * [chatId]: Identifier of the chat to be removed.
  ///
  /// [Ok] is returned on completion.
class RemoveRecentlyFoundChat extends TdFunction {
  
  /// **RemoveRecentlyFoundChat** *(removeRecentlyFoundChat)* - TDLib function
  ///
  /// Removes a chat from the list of recently found chats.
  ///
  /// * [chatId]: Identifier of the chat to be removed.
  ///
  /// [Ok] is returned on completion.
  const RemoveRecentlyFoundChat({
    required this.chatId,
  });
  
  /// Identifier of the chat to be removed
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  RemoveRecentlyFoundChat copyWith({
    int? chatId,
  }) => RemoveRecentlyFoundChat(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'removeRecentlyFoundChat';
  
  @override
  String getConstructor() => constructor;
}
