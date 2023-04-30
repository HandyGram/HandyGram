part of '../tdapi.dart';

/// **GetChatScheduledMessages** *(getChatScheduledMessages)* - TDLib function
  ///
  /// Returns all scheduled messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Messages] is returned on completion.
class GetChatScheduledMessages extends TdFunction {
  
  /// **GetChatScheduledMessages** *(getChatScheduledMessages)* - TDLib function
  ///
  /// Returns all scheduled messages in a chat. The messages are returned in a reverse chronological order (i.e., in order of decreasing message_id).
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Messages] is returned on completion.
  const GetChatScheduledMessages({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "@extra": extra,
    };
  }
  
  GetChatScheduledMessages copyWith({
    int? chatId,
  }) => GetChatScheduledMessages(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'getChatScheduledMessages';
  
  @override
  String getConstructor() => constructor;
}
