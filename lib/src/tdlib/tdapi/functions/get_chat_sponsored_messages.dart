part of '../tdapi.dart';

/// **GetChatSponsoredMessages** *(getChatSponsoredMessages)* - TDLib function
  ///
  /// Returns sponsored messages to be shown in a chat; for channel chats only.
  ///
  /// * [chatId]: Identifier of the chat.
  ///
  /// [SponsoredMessages] is returned on completion.
class GetChatSponsoredMessages extends TdFunction {
  
  /// **GetChatSponsoredMessages** *(getChatSponsoredMessages)* - TDLib function
  ///
  /// Returns sponsored messages to be shown in a chat; for channel chats only.
  ///
  /// * [chatId]: Identifier of the chat.
  ///
  /// [SponsoredMessages] is returned on completion.
  const GetChatSponsoredMessages({
    required this.chatId,
  });
  
  /// Identifier of the chat
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetChatSponsoredMessages copyWith({
    int? chatId,
  }) => GetChatSponsoredMessages(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'getChatSponsoredMessages';
  
  @override
  String getConstructor() => constructor;
}
