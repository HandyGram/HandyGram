part of '../tdapi.dart';

/// **SetChatMessageAutoDeleteTime** *(setChatMessageAutoDeleteTime)* - TDLib function
///
/// Changes the message auto-delete or self-destruct (for secret chats) time in a chat. Requires change_info administrator right in basic groups, supergroups and channels. Message auto-delete time can't be changed in a chat with the current user (Saved Messages) and the chat 777000 (Telegram).
///
/// * [chatId]: Chat identifier.
/// * [messageAutoDeleteTime]: New time value, in seconds; unless the chat is secret, it must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
///
/// [Ok] is returned on completion.
final class SetChatMessageAutoDeleteTime extends TdFunction {
  
  /// **SetChatMessageAutoDeleteTime** *(setChatMessageAutoDeleteTime)* - TDLib function
  ///
  /// Changes the message auto-delete or self-destruct (for secret chats) time in a chat. Requires change_info administrator right in basic groups, supergroups and channels. Message auto-delete time can't be changed in a chat with the current user (Saved Messages) and the chat 777000 (Telegram).
  ///
  /// * [chatId]: Chat identifier.
  /// * [messageAutoDeleteTime]: New time value, in seconds; unless the chat is secret, it must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically.
  ///
  /// [Ok] is returned on completion.
  const SetChatMessageAutoDeleteTime({
    required this.chatId,
    required this.messageAutoDeleteTime,
  });
  
  /// Chat identifier
  final int chatId;

  /// New time value, in seconds; unless the chat is secret, it must be from 0 up to 365 * 86400 and be divisible by 86400. If 0, then messages aren't deleted automatically
  final int messageAutoDeleteTime;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_auto_delete_time": messageAutoDeleteTime,
      "@extra": extra,
		};
	}

  
  SetChatMessageAutoDeleteTime copyWith({
    int? chatId,
    int? messageAutoDeleteTime,
  }) => SetChatMessageAutoDeleteTime(
    chatId: chatId ?? this.chatId,
    messageAutoDeleteTime: messageAutoDeleteTime ?? this.messageAutoDeleteTime,
  );

  static const String objectType = 'setChatMessageAutoDeleteTime';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
