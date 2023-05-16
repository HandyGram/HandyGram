part of '../tdapi.dart';

/// **BlockMessageSenderFromReplies** *(blockMessageSenderFromReplies)* - TDLib function
///
/// Blocks an original sender of a message in the Replies chat.
///
/// * [messageId]: The identifier of an incoming message in the Replies chat.
/// * [deleteMessage]: Pass true to delete the message.
/// * [deleteAllMessages]: Pass true to delete all messages from the same sender.
/// * [reportSpam]: Pass true to report the sender to the Telegram moderators.
///
/// [Ok] is returned on completion.
final class BlockMessageSenderFromReplies extends TdFunction {
  
  /// **BlockMessageSenderFromReplies** *(blockMessageSenderFromReplies)* - TDLib function
  ///
  /// Blocks an original sender of a message in the Replies chat.
  ///
  /// * [messageId]: The identifier of an incoming message in the Replies chat.
  /// * [deleteMessage]: Pass true to delete the message.
  /// * [deleteAllMessages]: Pass true to delete all messages from the same sender.
  /// * [reportSpam]: Pass true to report the sender to the Telegram moderators.
  ///
  /// [Ok] is returned on completion.
  const BlockMessageSenderFromReplies({
    required this.messageId,
    required this.deleteMessage,
    required this.deleteAllMessages,
    required this.reportSpam,
  });
  
  /// The identifier of an incoming message in the Replies chat
  final int messageId;

  /// Pass true to delete the message
  final bool deleteMessage;

  /// Pass true to delete all messages from the same sender
  final bool deleteAllMessages;

  /// Pass true to report the sender to the Telegram moderators
  final bool reportSpam;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "message_id": messageId,
      "delete_message": deleteMessage,
      "delete_all_messages": deleteAllMessages,
      "report_spam": reportSpam,
      "@extra": extra,
		};
	}

  
  BlockMessageSenderFromReplies copyWith({
    int? messageId,
    bool? deleteMessage,
    bool? deleteAllMessages,
    bool? reportSpam,
  }) => BlockMessageSenderFromReplies(
    messageId: messageId ?? this.messageId,
    deleteMessage: deleteMessage ?? this.deleteMessage,
    deleteAllMessages: deleteAllMessages ?? this.deleteAllMessages,
    reportSpam: reportSpam ?? this.reportSpam,
  );

  static const String objectType = 'blockMessageSenderFromReplies';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
