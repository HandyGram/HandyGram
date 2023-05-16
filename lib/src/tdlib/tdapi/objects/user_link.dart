part of '../tdapi.dart';

/// **UserLink** *(userLink)* - basic class
///
/// Contains an HTTPS URL, which can be used to get information about a user.
///
/// * [url]: The URL.
/// * [expiresIn]: Left time for which the link is valid, in seconds; 0 if the link is a public username link.
final class UserLink extends TdObject {
  
  /// **UserLink** *(userLink)* - basic class
  ///
  /// Contains an HTTPS URL, which can be used to get information about a user.
  ///
  /// * [url]: The URL.
  /// * [expiresIn]: Left time for which the link is valid, in seconds; 0 if the link is a public username link.
  const UserLink({
    required this.url,
    required this.expiresIn,
    this.extra,
    this.clientId,
  });
  
  /// The URL 
  final String url;

  /// Left time for which the link is valid, in seconds; 0 if the link is a public username link
  final int expiresIn;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory UserLink.fromJson(Map<String, dynamic> json) => UserLink(
    url: json['url'],
    expiresIn: json['expires_in'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "expires_in": expiresIn,
		};
	}

  
  UserLink copyWith({
    String? url,
    int? expiresIn,
    dynamic extra,
    int? clientId,
  }) => UserLink(
    url: url ?? this.url,
    expiresIn: expiresIn ?? this.expiresIn,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'userLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
