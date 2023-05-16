part of '../tdapi.dart';

/// **CallbackQueryAnswer** *(callbackQueryAnswer)* - basic class
///
/// Contains a bot's answer to a callback query.
///
/// * [text]: Text of the answer.
/// * [showAlert]: True, if an alert must be shown to the user instead of a toast notification.
/// * [url]: URL to be opened.
final class CallbackQueryAnswer extends TdObject {
  
  /// **CallbackQueryAnswer** *(callbackQueryAnswer)* - basic class
  ///
  /// Contains a bot's answer to a callback query.
  ///
  /// * [text]: Text of the answer.
  /// * [showAlert]: True, if an alert must be shown to the user instead of a toast notification.
  /// * [url]: URL to be opened.
  const CallbackQueryAnswer({
    required this.text,
    required this.showAlert,
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// Text of the answer 
  final String text;

  /// True, if an alert must be shown to the user instead of a toast notification 
  final bool showAlert;

  /// URL to be opened
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory CallbackQueryAnswer.fromJson(Map<String, dynamic> json) => CallbackQueryAnswer(
    text: json['text'],
    showAlert: json['show_alert'],
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
      "show_alert": showAlert,
      "url": url,
		};
	}

  
  CallbackQueryAnswer copyWith({
    String? text,
    bool? showAlert,
    String? url,
    dynamic extra,
    int? clientId,
  }) => CallbackQueryAnswer(
    text: text ?? this.text,
    showAlert: showAlert ?? this.showAlert,
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'callbackQueryAnswer';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
