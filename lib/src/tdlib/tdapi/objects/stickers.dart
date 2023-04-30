part of '../tdapi.dart';

/// **Stickers** *(stickers)* - basic class
  ///
  /// Represents a list of stickers.
  ///
  /// * [stickers]: List of stickers.
class Stickers extends TdObject {
  
  /// **Stickers** *(stickers)* - basic class
  ///
  /// Represents a list of stickers.
  ///
  /// * [stickers]: List of stickers.
  const Stickers({
    required this.stickers,
    this.extra,
    this.clientId,
  });
  
  /// List of stickers
  final List<Sticker> stickers;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory Stickers.fromJson(Map<String, dynamic> json) => Stickers(
    stickers: List<Sticker>.from((json['stickers'] ?? []).map((item) => Sticker.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "stickers": stickers.map((i) => i.toJson()).toList(),
    };
  }
  
  Stickers copyWith({
    List<Sticker>? stickers,
    dynamic extra,
    int? clientId,
  }) => Stickers(
    stickers: stickers ?? this.stickers,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'stickers';
  
  @override
  String getConstructor() => constructor;
}
