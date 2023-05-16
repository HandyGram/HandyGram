part of '../tdapi.dart';

/// **ChatInviteLink** *(chatInviteLink)* - basic class
///
/// Contains a chat invite link.
///
/// * [inviteLink]: Chat invite link.
/// * [name]: Name of the link.
/// * [creatorUserId]: User identifier of an administrator created the link.
/// * [date]: Point in time (Unix timestamp) when the link was created.
/// * [editDate]: Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown.
/// * [expirationDate]: Point in time (Unix timestamp) when the link will expire; 0 if never.
/// * [memberLimit]: The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited. Always 0 if the link requires approval.
/// * [memberCount]: Number of chat members, which joined the chat using the link.
/// * [pendingJoinRequestCount]: Number of pending join requests created using this link.
/// * [createsJoinRequest]: True, if the link only creates join request. If true, total number of joining members will be unlimited.
/// * [isPrimary]: True, if the link is primary. Primary invite link can't have name, expiration date, or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time.
/// * [isRevoked]: True, if the link was revoked.
final class ChatInviteLink extends TdObject {
  
  /// **ChatInviteLink** *(chatInviteLink)* - basic class
  ///
  /// Contains a chat invite link.
  ///
  /// * [inviteLink]: Chat invite link.
  /// * [name]: Name of the link.
  /// * [creatorUserId]: User identifier of an administrator created the link.
  /// * [date]: Point in time (Unix timestamp) when the link was created.
  /// * [editDate]: Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown.
  /// * [expirationDate]: Point in time (Unix timestamp) when the link will expire; 0 if never.
  /// * [memberLimit]: The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited. Always 0 if the link requires approval.
  /// * [memberCount]: Number of chat members, which joined the chat using the link.
  /// * [pendingJoinRequestCount]: Number of pending join requests created using this link.
  /// * [createsJoinRequest]: True, if the link only creates join request. If true, total number of joining members will be unlimited.
  /// * [isPrimary]: True, if the link is primary. Primary invite link can't have name, expiration date, or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time.
  /// * [isRevoked]: True, if the link was revoked.
  const ChatInviteLink({
    required this.inviteLink,
    required this.name,
    required this.creatorUserId,
    required this.date,
    required this.editDate,
    required this.expirationDate,
    required this.memberLimit,
    required this.memberCount,
    required this.pendingJoinRequestCount,
    required this.createsJoinRequest,
    required this.isPrimary,
    required this.isRevoked,
    this.extra,
    this.clientId,
  });
  
  /// Chat invite link
  final String inviteLink;

  /// Name of the link
  final String name;

  /// User identifier of an administrator created the link
  final int creatorUserId;

  /// Point in time (Unix timestamp) when the link was created
  final int date;

  /// Point in time (Unix timestamp) when the link was last edited; 0 if never or unknown
  final int editDate;

  /// Point in time (Unix timestamp) when the link will expire; 0 if never
  final int expirationDate;

  /// The maximum number of members, which can join the chat using the link simultaneously; 0 if not limited. Always 0 if the link requires approval
  final int memberLimit;

  /// Number of chat members, which joined the chat using the link
  final int memberCount;

  /// Number of pending join requests created using this link
  final int pendingJoinRequestCount;

  /// True, if the link only creates join request. If true, total number of joining members will be unlimited
  final bool createsJoinRequest;

  /// True, if the link is primary. Primary invite link can't have name, expiration date, or usage limit. There is exactly one primary invite link for each administrator with can_invite_users right at a given time
  final bool isPrimary;

  /// True, if the link was revoked
  final bool isRevoked;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLink.fromJson(Map<String, dynamic> json) => ChatInviteLink(
    inviteLink: json['invite_link'],
    name: json['name'],
    creatorUserId: json['creator_user_id'],
    date: json['date'],
    editDate: json['edit_date'],
    expirationDate: json['expiration_date'],
    memberLimit: json['member_limit'],
    memberCount: json['member_count'],
    pendingJoinRequestCount: json['pending_join_request_count'],
    createsJoinRequest: json['creates_join_request'],
    isPrimary: json['is_primary'],
    isRevoked: json['is_revoked'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invite_link": inviteLink,
      "name": name,
      "creator_user_id": creatorUserId,
      "date": date,
      "edit_date": editDate,
      "expiration_date": expirationDate,
      "member_limit": memberLimit,
      "member_count": memberCount,
      "pending_join_request_count": pendingJoinRequestCount,
      "creates_join_request": createsJoinRequest,
      "is_primary": isPrimary,
      "is_revoked": isRevoked,
		};
	}

  
  ChatInviteLink copyWith({
    String? inviteLink,
    String? name,
    int? creatorUserId,
    int? date,
    int? editDate,
    int? expirationDate,
    int? memberLimit,
    int? memberCount,
    int? pendingJoinRequestCount,
    bool? createsJoinRequest,
    bool? isPrimary,
    bool? isRevoked,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLink(
    inviteLink: inviteLink ?? this.inviteLink,
    name: name ?? this.name,
    creatorUserId: creatorUserId ?? this.creatorUserId,
    date: date ?? this.date,
    editDate: editDate ?? this.editDate,
    expirationDate: expirationDate ?? this.expirationDate,
    memberLimit: memberLimit ?? this.memberLimit,
    memberCount: memberCount ?? this.memberCount,
    pendingJoinRequestCount: pendingJoinRequestCount ?? this.pendingJoinRequestCount,
    createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
    isPrimary: isPrimary ?? this.isPrimary,
    isRevoked: isRevoked ?? this.isRevoked,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
