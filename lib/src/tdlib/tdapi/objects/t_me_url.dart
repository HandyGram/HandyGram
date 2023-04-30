part of '../tdapi.dart';

/// **TMeUrl** *(tMeUrl)* - basic class
  ///
  /// Represents a URL linking to an internal Telegram entity.
  ///
  /// * [url]: URL.
  /// * [type]: Type of the URL.
class TMeUrl extends TdObject {
  
  /// **TMeUrl** *(tMeUrl)* - basic class
  ///
  /// Represents a URL linking to an internal Telegram entity.
  ///
  /// * [url]: URL.
  /// * [type]: Type of the URL.
  const TMeUrl({
    required this.url,
    required this.type,
  });
  
  /// URL 
  final String url;

  /// Type of the URL
  final TMeUrlType type;
  
  /// Parse from a json
  factory TMeUrl.fromJson(Map<String, dynamic> json) => TMeUrl(
    url: json['url'],
    type: TMeUrlType.fromJson(json['type']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "url": url,
      "type": type.toJson(),
    };
  }
  
  TMeUrl copyWith({
    String? url,
    TMeUrlType? type,
  }) => TMeUrl(
    url: url ?? this.url,
    type: type ?? this.type,
  );

  static const String constructor = 'tMeUrl';
  
  @override
  String getConstructor() => constructor;
}
