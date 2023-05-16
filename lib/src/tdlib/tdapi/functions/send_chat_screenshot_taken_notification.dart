part of '../tdapi.dart';

/// **SendChatScreenshotTakenNotification** *(sendChatScreenshotTakenNotification)* - TDLib function
///
/// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats.
///
/// * [chatId]: Chat identifier.
///
/// [Ok] is returned on completion.
final class SendChatScreenshotTakenNotification extends TdFunction {
  
  /// **SendChatScreenshotTakenNotification** *(sendChatScreenshotTakenNotification)* - TDLib function
  ///
  /// Sends a notification about a screenshot taken in a chat. Supported only in private and secret chats.
  ///
  /// * [chatId]: Chat identifier.
  ///
  /// [Ok] is returned on completion.
  const SendChatScreenshotTakenNotification({
    required this.chatId,
  });
  
  /// Chat identifier
  final int chatId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "@extra": extra,
		};
	}

  
  SendChatScreenshotTakenNotification copyWith({
    int? chatId,
  }) => SendChatScreenshotTakenNotification(
    chatId: chatId ?? this.chatId,
  );

  static const String objectType = 'sendChatScreenshotTakenNotification';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
