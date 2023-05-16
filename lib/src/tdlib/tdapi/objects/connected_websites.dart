part of '../tdapi.dart';

/// **ConnectedWebsites** *(connectedWebsites)* - basic class
///
/// Contains a list of websites the current user is logged in with Telegram.
///
/// * [websites]: List of connected websites.
final class ConnectedWebsites extends TdObject {
  
  /// **ConnectedWebsites** *(connectedWebsites)* - basic class
  ///
  /// Contains a list of websites the current user is logged in with Telegram.
  ///
  /// * [websites]: List of connected websites.
  const ConnectedWebsites({
    required this.websites,
    this.extra,
    this.clientId,
  });
  
  /// List of connected websites
  final List<ConnectedWebsite> websites;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ConnectedWebsites.fromJson(Map<String, dynamic> json) => ConnectedWebsites(
    websites: List<ConnectedWebsite>.from((json['websites'] ?? []).map((item) => ConnectedWebsite.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "websites": websites.map((i) => i.toJson()).toList(),
		};
	}

  
  ConnectedWebsites copyWith({
    List<ConnectedWebsite>? websites,
    dynamic extra,
    int? clientId,
  }) => ConnectedWebsites(
    websites: websites ?? this.websites,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'connectedWebsites';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
