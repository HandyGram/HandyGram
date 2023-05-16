part of '../tdapi.dart';

/// **BasicGroup** *(basicGroup)* - basic class
///
/// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).
///
/// * [id]: Group identifier.
/// * [memberCount]: Number of members in the group.
/// * [status]: Status of the current user in the group.
/// * [isActive]: True, if the group is active.
/// * [upgradedToSupergroupId]: Identifier of the supergroup to which this group was upgraded; 0 if none.
final class BasicGroup extends TdObject {
  
  /// **BasicGroup** *(basicGroup)* - basic class
  ///
  /// Represents a basic group of 0-200 users (must be upgraded to a supergroup to accommodate more than 200 users).
  ///
  /// * [id]: Group identifier.
  /// * [memberCount]: Number of members in the group.
  /// * [status]: Status of the current user in the group.
  /// * [isActive]: True, if the group is active.
  /// * [upgradedToSupergroupId]: Identifier of the supergroup to which this group was upgraded; 0 if none.
  const BasicGroup({
    required this.id,
    required this.memberCount,
    required this.status,
    required this.isActive,
    required this.upgradedToSupergroupId,
    this.extra,
    this.clientId,
  });
  
  /// Group identifier
  final int id;

  /// Number of members in the group
  final int memberCount;

  /// Status of the current user in the group
  final ChatMemberStatus status;

  /// True, if the group is active
  final bool isActive;

  /// Identifier of the supergroup to which this group was upgraded; 0 if none
  final int upgradedToSupergroupId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BasicGroup.fromJson(Map<String, dynamic> json) => BasicGroup(
    id: json['id'],
    memberCount: json['member_count'],
    status: ChatMemberStatus.fromJson(json['status']),
    isActive: json['is_active'],
    upgradedToSupergroupId: json['upgraded_to_supergroup_id'] ?? 0,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "member_count": memberCount,
      "status": status.toJson(),
      "is_active": isActive,
      "upgraded_to_supergroup_id": upgradedToSupergroupId,
		};
	}

  
  BasicGroup copyWith({
    int? id,
    int? memberCount,
    ChatMemberStatus? status,
    bool? isActive,
    int? upgradedToSupergroupId,
    dynamic extra,
    int? clientId,
  }) => BasicGroup(
    id: id ?? this.id,
    memberCount: memberCount ?? this.memberCount,
    status: status ?? this.status,
    isActive: isActive ?? this.isActive,
    upgradedToSupergroupId: upgradedToSupergroupId ?? this.upgradedToSupergroupId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'basicGroup';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
