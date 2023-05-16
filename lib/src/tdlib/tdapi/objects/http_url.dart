part of '../tdapi.dart';

/// **HttpUrl** *(httpUrl)* - basic class
///
/// Contains an HTTP URL.
///
/// * [url]: The URL.
final class HttpUrl extends TdObject {
  
  /// **HttpUrl** *(httpUrl)* - basic class
  ///
  /// Contains an HTTP URL.
  ///
  /// * [url]: The URL.
  const HttpUrl({
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// The URL
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory HttpUrl.fromJson(Map<String, dynamic> json) => HttpUrl(
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
		};
	}

  
  HttpUrl copyWith({
    String? url,
    dynamic extra,
    int? clientId,
  }) => HttpUrl(
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'httpUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
