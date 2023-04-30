part of '../tdapi.dart';

/// **ReadAllMessageThreadMentions** *(readAllMessageThreadMentions)* - TDLib function
  ///
  /// Marks all mentions in a forum topic as read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier in which mentions are marked as read.
  ///
  /// [Ok] is returned on completion.
class ReadAllMessageThreadMentions extends TdFunction {
  
  /// **ReadAllMessageThreadMentions** *(readAllMessageThreadMentions)* - TDLib function
  ///
  /// Marks all mentions in a forum topic as read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier in which mentions are marked as read.
  ///
  /// [Ok] is returned on completion.
  const ReadAllMessageThreadMentions({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message thread identifier in which mentions are marked as read
  final int messageThreadId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "@extra": extra,
    };
  }
  
  ReadAllMessageThreadMentions copyWith({
    int? chatId,
    int? messageThreadId,
  }) => ReadAllMessageThreadMentions(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String constructor = 'readAllMessageThreadMentions';
  
  @override
  String getConstructor() => constructor;
}
