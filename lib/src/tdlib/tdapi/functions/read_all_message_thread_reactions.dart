part of '../tdapi.dart';

/// **ReadAllMessageThreadReactions** *(readAllMessageThreadReactions)* - TDLib function
///
/// Marks all reactions in a forum topic as read.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: Message thread identifier in which reactions are marked as read.
///
/// [Ok] is returned on completion.
final class ReadAllMessageThreadReactions extends TdFunction {
  
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
			"@type": objectType,
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

  static const String objectType = 'readAllMessageThreadReactions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
