part of '../tdapi.dart';

/// **SendBotStartMessage** *(sendBotStartMessage)* - TDLib function
///
/// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message.
///
/// * [botUserId]: Identifier of the bot.
/// * [chatId]: Identifier of the target chat.
/// * [parameter]: A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking).
///
/// [Message] is returned on completion.
final class SendBotStartMessage extends TdFunction {
  
  /// **SendBotStartMessage** *(sendBotStartMessage)* - TDLib function
  ///
  /// Invites a bot to a chat (if it is not yet a member) and sends it the /start command. Bots can't be invited to a private chat other than the chat with the bot. Bots can't be invited to channels (although they can be added as admins) and secret chats. Returns the sent message.
  ///
  /// * [botUserId]: Identifier of the bot.
  /// * [chatId]: Identifier of the target chat.
  /// * [parameter]: A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking).
  ///
  /// [Message] is returned on completion.
  const SendBotStartMessage({
    required this.botUserId,
    required this.chatId,
    required this.parameter,
  });
  
  /// Identifier of the bot
  final int botUserId;

  /// Identifier of the target chat
  final int chatId;

  /// A hidden parameter sent to the bot for deep linking purposes (https://core.telegram.org/bots#deep-linking)
  final String parameter;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "chat_id": chatId,
      "parameter": parameter,
      "@extra": extra,
		};
	}

  
  SendBotStartMessage copyWith({
    int? botUserId,
    int? chatId,
    String? parameter,
  }) => SendBotStartMessage(
    botUserId: botUserId ?? this.botUserId,
    chatId: chatId ?? this.chatId,
    parameter: parameter ?? this.parameter,
  );

  static const String objectType = 'sendBotStartMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
