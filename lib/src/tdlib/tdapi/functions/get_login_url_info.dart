part of '../tdapi.dart';

/// **GetLoginUrlInfo** *(getLoginUrlInfo)* - TDLib function
///
/// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button.
///
/// * [chatId]: Chat identifier of the message with the button.
/// * [messageId]: Message identifier of the message with the button.
/// * [buttonId]: Button identifier.
///
/// [LoginUrlInfo] is returned on completion.
final class GetLoginUrlInfo extends TdFunction {
  
  /// **GetLoginUrlInfo** *(getLoginUrlInfo)* - TDLib function
  ///
  /// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button.
  ///
  /// * [chatId]: Chat identifier of the message with the button.
  /// * [messageId]: Message identifier of the message with the button.
  /// * [buttonId]: Button identifier.
  ///
  /// [LoginUrlInfo] is returned on completion.
  const GetLoginUrlInfo({
    required this.chatId,
    required this.messageId,
    required this.buttonId,
  });
  
  /// Chat identifier of the message with the button
  final int chatId;

  /// Message identifier of the message with the button
  final int messageId;

  /// Button identifier
  final int buttonId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "message_id": messageId,
      "button_id": buttonId,
      "@extra": extra,
		};
	}

  
  GetLoginUrlInfo copyWith({
    int? chatId,
    int? messageId,
    int? buttonId,
  }) => GetLoginUrlInfo(
    chatId: chatId ?? this.chatId,
    messageId: messageId ?? this.messageId,
    buttonId: buttonId ?? this.buttonId,
  );

  static const String objectType = 'getLoginUrlInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
