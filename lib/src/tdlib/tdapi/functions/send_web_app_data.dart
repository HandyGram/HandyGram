part of '../tdapi.dart';

/// **SendWebAppData** *(sendWebAppData)* - TDLib function
///
/// Sends data received from a keyboardButtonTypeWebApp Web App to a bot.
///
/// * [botUserId]: Identifier of the target bot.
/// * [buttonText]: Text of the keyboardButtonTypeWebApp button, which opened the Web App.
/// * [data]: Received data.
///
/// [Ok] is returned on completion.
final class SendWebAppData extends TdFunction {
  
  /// **SendWebAppData** *(sendWebAppData)* - TDLib function
  ///
  /// Sends data received from a keyboardButtonTypeWebApp Web App to a bot.
  ///
  /// * [botUserId]: Identifier of the target bot.
  /// * [buttonText]: Text of the keyboardButtonTypeWebApp button, which opened the Web App.
  /// * [data]: Received data.
  ///
  /// [Ok] is returned on completion.
  const SendWebAppData({
    required this.botUserId,
    required this.buttonText,
    required this.data,
  });
  
  /// Identifier of the target bot
  final int botUserId;

  /// Text of the keyboardButtonTypeWebApp button, which opened the Web App
  final String buttonText;

  /// Received data
  final String data;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "button_text": buttonText,
      "data": data,
      "@extra": extra,
		};
	}

  
  SendWebAppData copyWith({
    int? botUserId,
    String? buttonText,
    String? data,
  }) => SendWebAppData(
    botUserId: botUserId ?? this.botUserId,
    buttonText: buttonText ?? this.buttonText,
    data: data ?? this.data,
  );

  static const String objectType = 'sendWebAppData';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
