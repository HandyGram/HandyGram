part of '../tdapi.dart';

/// **RtmpUrl** *(rtmpUrl)* - basic class
///
/// Represents an RTMP URL.
///
/// * [url]: The URL.
/// * [streamKey]: Stream key.
final class RtmpUrl extends TdObject {
  
  /// **RtmpUrl** *(rtmpUrl)* - basic class
  ///
  /// Represents an RTMP URL.
  ///
  /// * [url]: The URL.
  /// * [streamKey]: Stream key.
  const RtmpUrl({
    required this.url,
    required this.streamKey,
    this.extra,
    this.clientId,
  });
  
  /// The URL 
  final String url;

  /// Stream key
  final String streamKey;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory RtmpUrl.fromJson(Map<String, dynamic> json) => RtmpUrl(
    url: json['url'],
    streamKey: json['stream_key'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "stream_key": streamKey,
		};
	}

  
  RtmpUrl copyWith({
    String? url,
    String? streamKey,
    dynamic extra,
    int? clientId,
  }) => RtmpUrl(
    url: url ?? this.url,
    streamKey: streamKey ?? this.streamKey,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'rtmpUrl';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
