part of '../tdapi.dart';

/// **PinChatMessage** *(pinChatMessage)* - TDLib function
///
/// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel.
///
/// * [chatId]: Identifier of the chat.
/// * [messageId]: Identifier of the new pinned message.
/// * [disableNotification]: Pass true to disable notification about the pinned message. Notifications are always disabled in channels and private chats.
/// * [onlyForSelf]: Pass true to pin the message only for self; private chats only.
///
/// [Ok] is returned on completion.
final class PinChatMessage extends TdFunction {
  
  /// **PinChatMessage** *(pinChatMessage)* - TDLib function
  ///
  /// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel.
  ///
  /// * [chatId]: Identifier of the chat.
  /// * [messageId]: Identifier of the new pinned message.
  /// * [disableNotification]: Pass true to disable notification about the pinned message. Notifications are always disabled in channels and private chats.
  /// * [onlyForSelf]: Pass true to pin the message only for self; private chats only.
  ///
  /// [Ok] is returned on completion.
  const PinChatMessage({
    required this.chatId,
    required this.messageId,
    required this.disableNotification,
    required this.onlyForSelf,
  });
  
  /// Identifier of the chat
  final int chatId;

  /// Identifier of the new pinned message
  final int messageId;

  /// Pass true to disable notification about the pinned message. Notifications are always disabled in channels and private chats
  final bool disableNotification;

  /// Pass true to pin the message only for self; private chats only
  final bool onlyForSelf;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "disable_notification": disableNotification,
      "only_for_self": onlyForSelf,
      "@extra": extra,
		};
	}

  
  PinChatMessage copyWith({
    int? chatId,
    int? messageId,
    bool? disableNotification,
    bool? onlyForSelf,
  }) => PinChatMessage(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    disableNotification: disableNotification ?? this.disableNotification,
    onlyForSelf: onlyForSelf ?? this.onlyForSelf,
  );

  static const String objectType = 'pinChatMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
