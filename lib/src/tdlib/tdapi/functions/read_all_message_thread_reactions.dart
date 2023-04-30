part of '../tdapi.dart';

/// **ReadAllMessageThreadReactions** *(readAllMessageThreadReactions)* - TDLib function
  ///
  /// Marks all reactions in a forum topic as read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier in which reactions are marked as read.
  ///
  /// [Ok] is returned on completion.
class ReadAllMessageThreadReactions extends TdFunction {
  
  /// **ReadAllMessageThreadReactions** *(readAllMessageThreadReactions)* - TDLib function
  ///
  /// Marks all reactions in a forum topic as read.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: Message thread identifier in which reactions are marked as read.
  ///
  /// [Ok] is returned on completion.
  const ReadAllMessageThreadReactions({
    required this.chatId,
    required this.messageThreadId,
  });
  
  /// Chat identifier 
  final int chatId;

  /// Message thread identifier in which reactions are marked as read
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
  
  ReadAllMessageThreadReactions copyWith({
    int? chatId,
    int? messageThreadId,
  }) => ReadAllMessageThreadReactions(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
  );

  static const String constructor = 'readAllMessageThreadReactions';
  
  @override
  String getConstructor() => constructor;
}
