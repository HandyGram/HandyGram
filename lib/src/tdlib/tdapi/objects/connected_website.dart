part of '../tdapi.dart';

/// **ConnectedWebsite** *(connectedWebsite)* - basic class
///
/// Contains information about one website the current user is logged in with Telegram.
///
/// * [id]: Website identifier.
/// * [domainName]: The domain name of the website.
/// * [botUserId]: User identifier of a bot linked with the website.
/// * [browser]: The version of a browser used to log in.
/// * [platform]: Operating system the browser is running on.
/// * [logInDate]: Point in time (Unix timestamp) when the user was logged in.
/// * [lastActiveDate]: Point in time (Unix timestamp) when obtained authorization was last used.
/// * [ip]: IP address from which the user was logged in, in human-readable format.
/// * [location]: Human-readable description of a country and a region from which the user was logged in, based on the IP address.
final class ConnectedWebsite extends TdObject {
  
  /// **ConnectedWebsite** *(connectedWebsite)* - basic class
  ///
  /// Contains information about one website the current user is logged in with Telegram.
  ///
  /// * [id]: Website identifier.
  /// * [domainName]: The domain name of the website.
  /// * [botUserId]: User identifier of a bot linked with the website.
  /// * [browser]: The version of a browser used to log in.
  /// * [platform]: Operating system the browser is running on.
  /// * [logInDate]: Point in time (Unix timestamp) when the user was logged in.
  /// * [lastActiveDate]: Point in time (Unix timestamp) when obtained authorization was last used.
  /// * [ip]: IP address from which the user was logged in, in human-readable format.
  /// * [location]: Human-readable description of a country and a region from which the user was logged in, based on the IP address.
  const ConnectedWebsite({
    required this.id,
    required this.domainName,
    required this.botUserId,
    required this.browser,
    required this.platform,
    required this.logInDate,
    required this.lastActiveDate,
    required this.ip,
    required this.location,
  });
  
  /// Website identifier
  final int id;

  /// The domain name of the website
  final String domainName;

  /// User identifier of a bot linked with the website
  final int botUserId;

  /// The version of a browser used to log in
  final String browser;

  /// Operating system the browser is running on
  final String platform;

  /// Point in time (Unix timestamp) when the user was logged in
  final int logInDate;

  /// Point in time (Unix timestamp) when obtained authorization was last used
  final int lastActiveDate;

  /// IP address from which the user was logged in, in human-readable format
  final String ip;

  /// Human-readable description of a country and a region from which the user was logged in, based on the IP address
  final String location;
  
  /// Parse from a json
  factory ConnectedWebsite.fromJson(Map<String, dynamic> json) => ConnectedWebsite(
    id: int.parse(json['id']),
    domainName: json['domain_name'],
    botUserId: json['bot_user_id'],
    browser: json['browser'],
    platform: json['platform'],
    logInDate: json['log_in_date'],
    lastActiveDate: json['last_active_date'],
    ip: json['ip'],
    location: json['location'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "domain_name": domainName,
      "bot_user_id": botUserId,
      "browser": browser,
      "platform": platform,
      "log_in_date": logInDate,
      "last_active_date": lastActiveDate,
      "ip": ip,
      "location": location,
		};
	}

  
  ConnectedWebsite copyWith({
    int? id,
    String? domainName,
    int? botUserId,
    String? browser,
    String? platform,
    int? logInDate,
    int? lastActiveDate,
    String? ip,
    String? location,
  }) => ConnectedWebsite(
    id: id ?? this.id,
    domainName: domainName ?? this.domainName,
    botUserId: botUserId ?? this.botUserId,
    browser: browser ?? this.browser,
    platform: platform ?? this.platform,
    logInDate: logInDate ?? this.logInDate,
    lastActiveDate: lastActiveDate ?? this.lastActiveDate,
    ip: ip ?? this.ip,
    location: location ?? this.location,
  );

  static const String objectType = 'connectedWebsite';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
