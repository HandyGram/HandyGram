part of '../tdapi.dart';

/// **PushReceiverId** *(pushReceiverId)* - basic class
///
/// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification.
///
/// * [id]: The globally unique identifier of push notification subscription.
final class PushReceiverId extends TdObject {
  
  /// **PushReceiverId** *(pushReceiverId)* - basic class
  ///
  /// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification.
  ///
  /// * [id]: The globally unique identifier of push notification subscription.
  const PushReceiverId({
    required this.id,
    this.extra,
    this.clientId,
  });
  
  /// The globally unique identifier of push notification subscription
  final int id;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PushReceiverId.fromJson(Map<String, dynamic> json) => PushReceiverId(
    id: int.parse(json['id']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
		};
	}

  
  PushReceiverId copyWith({
    int? id,
    dynamic extra,
    int? clientId,
  }) => PushReceiverId(
    id: id ?? this.id,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'pushReceiverId';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
