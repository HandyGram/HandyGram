part of '../tdapi.dart';

/// **OpenMessageContent** *(openMessageContent)* - TDLib function
///
/// Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message).. An updateMessageContentOpened update will be generated if something has changed.
///
/// * [chatId]: Chat identifier of the message.
/// * [messageId]: Identifier of the message with the opened content.
///
/// [Ok] is returned on completion.
final class OpenMessageContent extends TdFunction {
  
  /// **OpenMessageContent** *(openMessageContent)* - TDLib function
  ///
  /// Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document, location or venue, or has listened to an audio file or voice note message).. An updateMessageContentOpened update will be generated if something has changed.
  ///
  /// * [chatId]: Chat identifier of the message.
  /// * [messageId]: Identifier of the message with the opened content.
  ///
  /// [Ok] is returned on completion.
  const OpenMessageContent({
    required this.chatId,
    required this.messageId,
  });
  
  /// Chat identifier of the message
  final int chatId;

  /// Identifier of the message with the opened content
  final int messageId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "@extra": extra,
		};
	}

  
  OpenMessageContent copyWith({
    int? chatId,
    int? messageId,
  }) => OpenMessageContent(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
  );

  static const String objectType = 'openMessageContent';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
