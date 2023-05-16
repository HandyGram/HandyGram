part of '../tdapi.dart';

/// **SendChatAction** *(sendChatAction)* - TDLib function
///
/// Sends a notification about user activity in a chat.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, a message thread identifier in which the action was performed.
/// * [action]: The action description; pass null to cancel the currently active action *(optional)*.
///
/// [Ok] is returned on completion.
final class SendChatAction extends TdFunction {
  
  /// **SendChatAction** *(sendChatAction)* - TDLib function
  ///
  /// Sends a notification about user activity in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the action was performed.
  /// * [action]: The action description; pass null to cancel the currently active action *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SendChatAction({
    required this.chatId,
    required this.messageThreadId,
    this.action,
  });
  
  /// Chat identifier 
  final int chatId;

  /// If not 0, a message thread identifier in which the action was performed 
  final int messageThreadId;

  /// The action description; pass null to cancel the currently active action
  final ChatAction? action;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "action": action?.toJson(),
      "@extra": extra,
		};
	}

  
  SendChatAction copyWith({
    int? chatId,
    int? messageThreadId,
    ChatAction? action,
  }) => SendChatAction(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    action: action ?? this.action,
  );

  static const String objectType = 'sendChatAction';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
