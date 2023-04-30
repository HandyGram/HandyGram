part of '../tdapi.dart';

/// **ReadAllChatMentions** *(readAllChatMentions)* - TDLib function
  ///
  /// Marks all mentions in a chat as read.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
class ReadAllChatMentions extends TdFunction {
  
  /// **ReadAllChatMentions** *(readAllChatMentions)* - TDLib function
  ///
  /// Marks all mentions in a chat as read.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const ReadAllChatMentions({
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
  
  ReadAllChatMentions copyWith({
    int? chatId,
  }) => ReadAllChatMentions(
    chatId: chatId ?? this.chatId,
  );

  static const String constructor = 'readAllChatMentions';
  
  @override
  String getConstructor() => constructor;
}
