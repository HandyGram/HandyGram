part of '../tdapi.dart';

/// **WebAppInfo** *(webAppInfo)* - basic class
///
/// Contains information about a Web App.
///
/// * [launchId]: Unique identifier for the Web App launch.
/// * [url]: A Web App URL to open in a web view.
final class WebAppInfo extends TdObject {
  
  /// **WebAppInfo** *(webAppInfo)* - basic class
  ///
  /// Contains information about a Web App.
  ///
  /// * [launchId]: Unique identifier for the Web App launch.
  /// * [url]: A Web App URL to open in a web view.
  const WebAppInfo({
    required this.launchId,
    required this.url,
    this.extra,
    this.clientId,
  });
  
  /// Unique identifier for the Web App launch 
  final int launchId;

  /// A Web App URL to open in a web view
  final String url;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory WebAppInfo.fromJson(Map<String, dynamic> json) => WebAppInfo(
    launchId: int.parse(json['launch_id']),
    url: json['url'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "launch_id": launchId,
      "url": url,
		};
	}

  
  WebAppInfo copyWith({
    int? launchId,
    String? url,
    dynamic extra,
    int? clientId,
  }) => WebAppInfo(
    launchId: launchId ?? this.launchId,
    url: url ?? this.url,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'webAppInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
