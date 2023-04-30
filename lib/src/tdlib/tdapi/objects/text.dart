part of '../tdapi.dart';

/// **Text** *(text)* - basic class
  ///
  /// Contains some text.
  ///
  /// * [text]: Text.
class Text extends TdObject {
  
  /// **Text** *(text)* - basic class
  ///
  /// Contains some text.
  ///
  /// * [text]: Text.
  const Text({
    required this.text,
    this.extra,
    this.clientId,
  });
  
  /// Text
  final String text;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Text.fromJson(Map<String, dynamic> json) => Text(
    text: json['text'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "text": text,
    };
  }
  
  Text copyWith({
    String? text,
    dynamic extra,
    int? clientId,
  }) => Text(
    text: text ?? this.text,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'text';
  
  @override
  String getConstructor() => constructor;
}
