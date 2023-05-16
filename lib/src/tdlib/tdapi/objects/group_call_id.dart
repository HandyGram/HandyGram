part of '../tdapi.dart';

/// **GroupCallId** *(groupCallId)* - basic class
///
/// Contains the group call identifier.
///
/// * [id]: Group call identifier.
final class GroupCallId extends TdObject {
  
  /// **GroupCallId** *(groupCallId)* - basic class
  ///
  /// Contains the group call identifier.
  ///
  /// * [id]: Group call identifier.
  const GroupCallId({
    required this.id,
    this.extra,
    this.clientId,
  });
  
  /// Group call identifier
  final int id;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GroupCallId.fromJson(Map<String, dynamic> json) => GroupCallId(
    id: json['id'],
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

  
  GroupCallId copyWith({
    int? id,
    dynamic extra,
    int? clientId,
  }) => GroupCallId(
    id: id ?? this.id,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'groupCallId';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
