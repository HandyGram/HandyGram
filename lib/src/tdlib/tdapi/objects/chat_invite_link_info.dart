part of '../tdapi.dart';

/// **ChatInviteLinkInfo** *(chatInviteLinkInfo)* - basic class
///
/// Contains information about a chat invite link.
///
/// * [chatId]: Chat identifier of the invite link; 0 if the user has no access to the chat before joining.
/// * [accessibleFor]: If non-zero, the amount of time for which read access to the chat will remain available, in seconds.
/// * [type]: Type of the chat.
/// * [title]: Title of the chat.
/// * [photo]: Chat photo; may be null *(optional)*.
/// * [description]: Chat description.
/// * [memberCount]: Number of members in the chat.
/// * [memberUserIds]: User identifiers of some chat members that may be known to the current user.
/// * [createsJoinRequest]: True, if the link only creates join request.
/// * [isPublic]: True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup.
final class ChatInviteLinkInfo extends TdObject {
  
  /// **ChatInviteLinkInfo** *(chatInviteLinkInfo)* - basic class
  ///
  /// Contains information about a chat invite link.
  ///
  /// * [chatId]: Chat identifier of the invite link; 0 if the user has no access to the chat before joining.
  /// * [accessibleFor]: If non-zero, the amount of time for which read access to the chat will remain available, in seconds.
  /// * [type]: Type of the chat.
  /// * [title]: Title of the chat.
  /// * [photo]: Chat photo; may be null *(optional)*.
  /// * [description]: Chat description.
  /// * [memberCount]: Number of members in the chat.
  /// * [memberUserIds]: User identifiers of some chat members that may be known to the current user.
  /// * [createsJoinRequest]: True, if the link only creates join request.
  /// * [isPublic]: True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup.
  const ChatInviteLinkInfo({
    required this.chatId,
    required this.accessibleFor,
    required this.type,
    required this.title,
    this.photo,
    required this.description,
    required this.memberCount,
    required this.memberUserIds,
    required this.createsJoinRequest,
    required this.isPublic,
    this.extra,
    this.clientId,
  });
  
  /// Chat identifier of the invite link; 0 if the user has no access to the chat before joining
  final int chatId;

  /// If non-zero, the amount of time for which read access to the chat will remain available, in seconds
  final int accessibleFor;

  /// Type of the chat
  final ChatType type;

  /// Title of the chat
  final String title;

  /// Chat photo; may be null
  final ChatPhotoInfo? photo;

  /// Chat description
  final String description;

  /// Number of members in the chat
  final int memberCount;

  /// User identifiers of some chat members that may be known to the current user
  final List<int> memberUserIds;

  /// True, if the link only creates join request
  final bool createsJoinRequest;

  /// True, if the chat is a public supergroup or channel, i.e. it has a username or it is a location-based supergroup
  final bool isPublic;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLinkInfo.fromJson(Map<String, dynamic> json) => ChatInviteLinkInfo(
    chatId: json['chat_id'],
    accessibleFor: json['accessible_for'],
    type: ChatType.fromJson(json['type']),
    title: json['title'],
    photo: json['photo'] == null ? null : ChatPhotoInfo.fromJson(json['photo']),
    description: json['description'],
    memberCount: json['member_count'],
    memberUserIds: List<int>.from((json['member_user_ids'] ?? []).map((item) => item).toList()),
    createsJoinRequest: json['creates_join_request'],
    isPublic: json['is_public'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "chat_id": chatId,
      "accessible_for": accessibleFor,
      "type": type.toJson(),
      "title": title,
      "photo": photo?.toJson(),
      "description": description,
      "member_count": memberCount,
      "member_user_ids": memberUserIds.map((i) => i).toList(),
      "creates_join_request": createsJoinRequest,
      "is_public": isPublic,
		};
	}

  
  ChatInviteLinkInfo copyWith({
    int? chatId,
    int? accessibleFor,
    ChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    String? description,
    int? memberCount,
    List<int>? memberUserIds,
    bool? createsJoinRequest,
    bool? isPublic,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLinkInfo(
    chatId: chatId ?? this.chatId,
    accessibleFor: accessibleFor ?? this.accessibleFor,
    type: type ?? this.type,
    title: title ?? this.title,
    photo: photo ?? this.photo,
    description: description ?? this.description,
    memberCount: memberCount ?? this.memberCount,
    memberUserIds: memberUserIds ?? this.memberUserIds,
    createsJoinRequest: createsJoinRequest ?? this.createsJoinRequest,
    isPublic: isPublic ?? this.isPublic,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatInviteLinkInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
