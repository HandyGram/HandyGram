part of '../tdapi.dart';

/// **BotMenuButton** *(botMenuButton)* - basic class
///
/// Describes a button to be shown instead of bot commands menu button.
///
/// * [text]: Text of the button.
/// * [url]: URL to be passed to openWebApp.
final class BotMenuButton extends TdObject {
  
  /// **BotMenuButton** *(botMenuButton)* - basic class
  ///
  /// Describes a button to be shown instead of bot commands menu button.
  ///
  /// * [text]: Text of the button.
  /// * [url]: URL to be passed to openWebApp.
  const BotMenuButton({
    required this.text,
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// Text of the button 
  final String text;

  /// URL to be passed to openWebApp
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BotMenuButton.fromJson(Map<String, dynamic> json) => BotMenuButton(
    text: json['text'],
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "text": text,
      "url": url,
		};
	}

  
  BotMenuButton copyWith({
    String? text,
    String? url,
    dynamic extra,
    int? clientId,
  }) => BotMenuButton(
    text: text ?? this.text,
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'botMenuButton';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
