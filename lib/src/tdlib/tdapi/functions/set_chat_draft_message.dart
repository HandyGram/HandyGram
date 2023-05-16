part of '../tdapi.dart';

/// **SetChatDraftMessage** *(setChatDraftMessage)* - TDLib function
///
/// Changes the draft message in a chat.
///
/// * [chatId]: Chat identifier.
/// * [messageThreadId]: If not 0, a message thread identifier in which the draft was changed.
/// * [draftMessage]: New draft message; pass null to remove the draft *(optional)*.
///
/// [Ok] is returned on completion.
final class SetChatDraftMessage extends TdFunction {
  
  /// **SetChatDraftMessage** *(setChatDraftMessage)* - TDLib function
  ///
  /// Changes the draft message in a chat.
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the draft was changed.
  /// * [draftMessage]: New draft message; pass null to remove the draft *(optional)*.
  ///
  /// [Ok] is returned on completion.
  const SetChatDraftMessage({
    required this.chatId,
    required this.messageThreadId,
    this.draftMessage,
  });
  
  /// Chat identifier 
  final int chatId;

  /// If not 0, a message thread identifier in which the draft was changed 
  final int messageThreadId;

  /// New draft message; pass null to remove the draft
  final DraftMessage? draftMessage;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_thread_id": messageThreadId,
      "draft_message": draftMessage?.toJson(),
      "@extra": extra,
		};
	}

  
  SetChatDraftMessage copyWith({
    int? chatId,
    int? messageThreadId,
    DraftMessage? draftMessage,
  }) => SetChatDraftMessage(
    chatId: chatId ?? this.chatId,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    draftMessage: draftMessage ?? this.draftMessage,
  );

  static const String objectType = 'setChatDraftMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
