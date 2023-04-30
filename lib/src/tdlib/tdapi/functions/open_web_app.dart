part of '../tdapi.dart';

/// **OpenWebApp** *(openWebApp)* - TDLib function
  ///
  /// Informs TDLib that a Web App is being opened from attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button.. For each bot, a confirmation alert about data sent to the bot must be shown once.
  ///
  /// * [chatId]: Identifier of the chat in which the Web App is opened.
  /// * [botUserId]: Identifier of the bot, providing the Web App.
  /// * [url]: The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, or an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise.
  /// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
  /// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
  /// * [replyToMessageId]: Identifier of the replied message for the message sent by the Web App; 0 if none.
  ///
  /// [WebAppInfo] is returned on completion.
class OpenWebApp extends TdFunction {
  
  /// **OpenWebApp** *(openWebApp)* - TDLib function
  ///
  /// Informs TDLib that a Web App is being opened from attachment menu, a botMenuButton button, an internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button.. For each bot, a confirmation alert about data sent to the bot must be shown once.
  ///
  /// * [chatId]: Identifier of the chat in which the Web App is opened.
  /// * [botUserId]: Identifier of the bot, providing the Web App.
  /// * [url]: The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, or an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise.
  /// * [theme]: Preferred Web App theme; pass null to use the default theme *(optional)*.
  /// * [applicationName]: Short name of the application; 0-64 English letters, digits, and underscores.
  /// * [messageThreadId]: If not 0, a message thread identifier in which the message will be sent.
  /// * [replyToMessageId]: Identifier of the replied message for the message sent by the Web App; 0 if none.
  ///
  /// [WebAppInfo] is returned on completion.
  const OpenWebApp({
    required this.chatId,
    required this.botUserId,
    required this.url,
    this.theme,
    required this.applicationName,
    required this.messageThreadId,
    required this.replyToMessageId,
  });
  
  /// Identifier of the chat in which the Web App is opened
  final int chatId;

  /// Identifier of the bot, providing the Web App
  final int botUserId;

  /// The URL from an inlineKeyboardButtonTypeWebApp button, a botMenuButton button, or an internalLinkTypeAttachmentMenuBot link, or an empty string otherwise
  final String url;

  /// Preferred Web App theme; pass null to use the default theme
  final ThemeParameters? theme;

  /// Short name of the application; 0-64 English letters, digits, and underscores
  final String applicationName;

  /// If not 0, a message thread identifier in which the message will be sent
  final int messageThreadId;

  /// Identifier of the replied message for the message sent by the Web App; 0 if none
  final int replyToMessageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "chat_id": chatId,
      "bot_user_id": botUserId,
      "url": url,
      "theme": theme?.toJson(),
      "application_name": applicationName,
      "message_thread_id": messageThreadId,
      "reply_to_message_id": replyToMessageId,
      "@extra": extra,
    };
  }
  
  OpenWebApp copyWith({
    int? chatId,
    int? botUserId,
    String? url,
    ThemeParameters? theme,
    String? applicationName,
    int? messageThreadId,
    int? replyToMessageId,
  }) => OpenWebApp(
    chatId: chatId ?? this.chatId,
    botUserId: botUserId ?? this.botUserId,
    url: url ?? this.url,
    theme: theme ?? this.theme,
    applicationName: applicationName ?? this.applicationName,
    messageThreadId: messageThreadId ?? this.messageThreadId,
    replyToMessageId: replyToMessageId ?? this.replyToMessageId,
  );

  static const String constructor = 'openWebApp';
  
  @override
  String getConstructor() => constructor;
}
