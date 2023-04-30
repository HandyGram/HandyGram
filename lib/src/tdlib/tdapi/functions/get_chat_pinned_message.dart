part of '../tdapi.dart';

/// **GetChatPinnedMessage** *(getChatPinnedMessage)* - TDLib function
  ///
  /// Returns information about a newest pinned message in the chat.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  ///
  /// [Message] is returned on completion.
class GetChatPinnedMessage extends TdFunction {
  
  /// **GetChatPinnedMessage** *(getChatPinnedMessage)* - TDLib function
  ///
  /// Returns information about a newest pinned message in the chat.
  ///
  /// * [chatId]: Identifier of the chat the message belongs to.
  ///
  /// [Message] is returned on completion.
  const GetChatPinnedMessage({
    required this.chatId,
  });
  
  /// Identifier of the chat the message belongs to
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetChatPinnedMessage copyWith({
    int? chatId,
  }) => GetChatPinnedMessage(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'getChatPinnedMessage';
  
  @override
  String getConstructor() => constructor;
}
