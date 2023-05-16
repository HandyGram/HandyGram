part of '../tdapi.dart';

/// **BasicGroupFullInfo** *(basicGroupFullInfo)* - basic class
///
/// Contains full information about a basic group.
///
/// * [photo]: Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo *(optional)*.
/// * [description]: Group description. Updated only after the basic group is opened.
/// * [creatorUserId]: User identifier of the creator of the group; 0 if unknown.
/// * [members]: Group members.
/// * [canHideMembers]: True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators after upgrading the basic group to a supergroup.
/// * [canToggleAggressiveAntiSpam]: True, if aggressive anti-spam checks can be enabled or disabled in the supergroup after upgrading the basic group to a supergroup.
/// * [inviteLink]: Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened *(optional)*.
/// * [botCommands]: List of commands of bots in the group.
final class BasicGroupFullInfo extends TdObject {
  
  /// **BasicGroupFullInfo** *(basicGroupFullInfo)* - basic class
  ///
  /// Contains full information about a basic group.
  ///
  /// * [photo]: Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo *(optional)*.
  /// * [description]: Group description. Updated only after the basic group is opened.
  /// * [creatorUserId]: User identifier of the creator of the group; 0 if unknown.
  /// * [members]: Group members.
  /// * [canHideMembers]: True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators after upgrading the basic group to a supergroup.
  /// * [canToggleAggressiveAntiSpam]: True, if aggressive anti-spam checks can be enabled or disabled in the supergroup after upgrading the basic group to a supergroup.
  /// * [inviteLink]: Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened *(optional)*.
  /// * [botCommands]: List of commands of bots in the group.
  const BasicGroupFullInfo({
    this.photo,
    required this.description,
    required this.creatorUserId,
    required this.members,
    required this.canHideMembers,
    required this.canToggleAggressiveAntiSpam,
    this.inviteLink,
    required this.botCommands,
    this.extra,
    this.clientId,
  });
  
  /// Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo
  final ChatPhoto? photo;

  /// Group description. Updated only after the basic group is opened
  final String description;

  /// User identifier of the creator of the group; 0 if unknown
  final int creatorUserId;

  /// Group members
  final List<ChatMember> members;

  /// True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators after upgrading the basic group to a supergroup
  final bool canHideMembers;

  /// True, if aggressive anti-spam checks can be enabled or disabled in the supergroup after upgrading the basic group to a supergroup
  final bool canToggleAggressiveAntiSpam;

  /// Primary invite link for this group; may be null. For chat administrators with can_invite_users right only. Updated only after the basic group is opened
  final ChatInviteLink? inviteLink;

  /// List of commands of bots in the group
  final List<BotCommands> botCommands;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory BasicGroupFullInfo.fromJson(Map<String, dynamic> json) => BasicGroupFullInfo(
    photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
    description: json['description'],
    creatorUserId: json['creator_user_id'],
    members: List<ChatMember>.from((json['members'] ?? []).map((item) => ChatMember.fromJson(item)).toList()),
    canHideMembers: json['can_hide_members'],
    canToggleAggressiveAntiSpam: json['can_toggle_aggressive_anti_spam'],
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
    botCommands: List<BotCommands>.from((json['bot_commands'] ?? []).map((item) => BotCommands.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo?.toJson(),
      "description": description,
      "creator_user_id": creatorUserId,
      "members": members.map((i) => i.toJson()).toList(),
      "can_hide_members": canHideMembers,
      "can_toggle_aggressive_anti_spam": canToggleAggressiveAntiSpam,
      "invite_link": inviteLink?.toJson(),
      "bot_commands": botCommands.map((i) => i.toJson()).toList(),
		};
	}

  
  BasicGroupFullInfo copyWith({
    ChatPhoto? photo,
    String? description,
    int? creatorUserId,
    List<ChatMember>? members,
    bool? canHideMembers,
    bool? canToggleAggressiveAntiSpam,
    ChatInviteLink? inviteLink,
    List<BotCommands>? botCommands,
    dynamic extra,
    int? clientId,
  }) => BasicGroupFullInfo(
    photo: photo ?? this.photo,
    description: description ?? this.description,
    creatorUserId: creatorUserId ?? this.creatorUserId,
    members: members ?? this.members,
    canHideMembers: canHideMembers ?? this.canHideMembers,
    canToggleAggressiveAntiSpam: canToggleAggressiveAntiSpam ?? this.canToggleAggressiveAntiSpam,
    inviteLink: inviteLink ?? this.inviteLink,
    botCommands: botCommands ?? this.botCommands,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'basicGroupFullInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
