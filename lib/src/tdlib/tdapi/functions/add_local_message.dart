part of '../tdapi.dart';

/// **AddLocalMessage** *(addLocalMessage)* - TDLib function
///
/// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message.
///
/// * [chatId]: Target chat.
/// * [senderId]: Identifier of the sender of the message.
/// * [replyToMessageId]: Identifier of the replied message; 0 if none.
/// * [disableNotification]: Pass true to disable notification for the message.
/// * [inputMessageContent]: The content of the message to be added.
///
/// [Message] is returned on completion.
final class AddLocalMessage extends TdFunction {
  
  /// **AddLocalMessage** *(addLocalMessage)* - TDLib function
  ///
  /// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message.
  ///
  /// * [chatId]: Target chat.
  /// * [senderId]: Identifier of the sender of the message.
  /// * [replyToMessageId]: Identifier of the replied message; 0 if none.
  /// * [disableNotification]: Pass true to disable notification for the message.
  /// * [inputMessageContent]: The content of the message to be added.
  ///
  /// [Message] is returned on completion.
  const AddLocalMessage({
    required this.chatId,
    required this.senderId,
    required this.replyToMessageId,
    required this.disableNotification,
    required this.inputMessageContent,
  });
  
  /// Target chat
  final int chatId;

  /// Identifier of the sender of the message
  final MessageSender senderId;

  /// Identifier of the replied message; 0 if none
  final int replyToMessageId;

  /// Pass true to disable notification for the message
  final bool disableNotification;

  /// The content of the message to be added
  final InputMessageContent inputMessageContent;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "sender_id": senderId.toJson(),
      "reply_to_message_id": replyToMessageId,
      "disable_notification": disableNotification,
      "input_message_content": inputMessageContent.toJson(),
      "@extra": extra,
		};
	}

  
  AddLocalMessage copyWith({
    int? chatId,
    MessageSender? senderId,
    int? replyToMessageId,
    bool? disableNotification,
    InputMessageContent? inputMessageContent,
  }) => AddLocalMessage(
    chatId: chatId ?? this.chatId,
    senderId: senderId ?? this.senderId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
    disableNotification: disableNotification ?? this.disableNotification,
    inputMessageContent: inputMessageContent ?? this.inputMessageContent,
  );

  static const String objectType = 'addLocalMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
