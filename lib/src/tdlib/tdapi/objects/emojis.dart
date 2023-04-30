part of '../tdapi.dart';

/// **Emojis** *(emojis)* - basic class
  ///
  /// Represents a list of emoji.
  ///
  /// * [emojis]: List of emojis.
class Emojis extends TdObject {
  
  /// **Emojis** *(emojis)* - basic class
  ///
  /// Represents a list of emoji.
  ///
  /// * [emojis]: List of emojis.
  const Emojis({
    required this.emojis,
    this.extra,
    this.clientId,
  });
  
  /// List of emojis
  final List<String> emojis;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Emojis.fromJson(Map<String, dynamic> json) => Emojis(
    emojis: List<String>.from((json['emojis'] ?? []).map((item) => item).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "emojis": emojis.map((i) => i).toList(),
    };
  }
  
  Emojis copyWith({
    List<String>? emojis,
    dynamic extra,
    int? clientId,
  }) => Emojis(
    emojis: emojis ?? this.emojis,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'emojis';
  
  @override
  String getConstructor() => constructor;
}
