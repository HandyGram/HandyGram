part of '../tdapi.dart';

/// **SupergroupFullInfo** *(supergroupFullInfo)* - basic class
///
/// Contains full information about a supergroup or channel.
///
/// * [photo]: Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo *(optional)*.
/// * [description]: Supergroup or channel description.
/// * [memberCount]: Number of members in the supergroup or channel; 0 if unknown.
/// * [administratorCount]: Number of privileged users in the supergroup or channel; 0 if unknown.
/// * [restrictedCount]: Number of restricted users in the supergroup; 0 if unknown.
/// * [bannedCount]: Number of users banned from chat; 0 if unknown.
/// * [linkedChatId]: Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown.
/// * [slowModeDelay]: Delay between consecutive sent messages for non-administrator supergroup members, in seconds.
/// * [slowModeDelayExpiresIn]: Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero.
/// * [canGetMembers]: True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers.
/// * [hasHiddenMembers]: True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers.
/// * [canHideMembers]: True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators.
/// * [canSetUsername]: True, if the chat username can be changed.
/// * [canSetStickerSet]: True, if the supergroup sticker set can be changed.
/// * [canSetLocation]: True, if the supergroup location can be changed.
/// * [canGetStatistics]: True, if the supergroup or channel statistics are available.
/// * [canToggleAggressiveAntiSpam]: True, if aggressive anti-spam checks can be enabled or disabled in the supergroup.
/// * [isAllHistoryAvailable]: True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available,. so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators.
/// * [hasAggressiveAntiSpamEnabled]: True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators.
/// * [stickerSetId]: Identifier of the supergroup sticker set; 0 if none.
/// * [location]: Location to which the supergroup is connected; may be null *(optional)*.
/// * [inviteLink]: Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only *(optional)*.
/// * [botCommands]: List of commands of bots in the group.
/// * [upgradedFromBasicGroupId]: Identifier of the basic group from which supergroup was upgraded; 0 if none.
/// * [upgradedFromMaxMessageId]: Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none.
final class SupergroupFullInfo extends TdObject {
  
  /// **SupergroupFullInfo** *(supergroupFullInfo)* - basic class
  ///
  /// Contains full information about a supergroup or channel.
  ///
  /// * [photo]: Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo *(optional)*.
  /// * [description]: Supergroup or channel description.
  /// * [memberCount]: Number of members in the supergroup or channel; 0 if unknown.
  /// * [administratorCount]: Number of privileged users in the supergroup or channel; 0 if unknown.
  /// * [restrictedCount]: Number of restricted users in the supergroup; 0 if unknown.
  /// * [bannedCount]: Number of users banned from chat; 0 if unknown.
  /// * [linkedChatId]: Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown.
  /// * [slowModeDelay]: Delay between consecutive sent messages for non-administrator supergroup members, in seconds.
  /// * [slowModeDelayExpiresIn]: Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero.
  /// * [canGetMembers]: True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers.
  /// * [hasHiddenMembers]: True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers.
  /// * [canHideMembers]: True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators.
  /// * [canSetUsername]: True, if the chat username can be changed.
  /// * [canSetStickerSet]: True, if the supergroup sticker set can be changed.
  /// * [canSetLocation]: True, if the supergroup location can be changed.
  /// * [canGetStatistics]: True, if the supergroup or channel statistics are available.
  /// * [canToggleAggressiveAntiSpam]: True, if aggressive anti-spam checks can be enabled or disabled in the supergroup.
  /// * [isAllHistoryAvailable]: True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available,. so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators.
  /// * [hasAggressiveAntiSpamEnabled]: True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators.
  /// * [stickerSetId]: Identifier of the supergroup sticker set; 0 if none.
  /// * [location]: Location to which the supergroup is connected; may be null *(optional)*.
  /// * [inviteLink]: Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only *(optional)*.
  /// * [botCommands]: List of commands of bots in the group.
  /// * [upgradedFromBasicGroupId]: Identifier of the basic group from which supergroup was upgraded; 0 if none.
  /// * [upgradedFromMaxMessageId]: Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none.
  const SupergroupFullInfo({
    this.photo,
    required this.description,
    required this.memberCount,
    required this.administratorCount,
    required this.restrictedCount,
    required this.bannedCount,
    required this.linkedChatId,
    required this.slowModeDelay,
    required this.slowModeDelayExpiresIn,
    required this.canGetMembers,
    required this.hasHiddenMembers,
    required this.canHideMembers,
    required this.canSetUsername,
    required this.canSetStickerSet,
    required this.canSetLocation,
    required this.canGetStatistics,
    required this.canToggleAggressiveAntiSpam,
    required this.isAllHistoryAvailable,
    required this.hasAggressiveAntiSpamEnabled,
    required this.stickerSetId,
    this.location,
    this.inviteLink,
    required this.botCommands,
    required this.upgradedFromBasicGroupId,
    required this.upgradedFromMaxMessageId,
    this.extra,
    this.clientId,
  });
  
  /// Chat photo; may be null if empty or unknown. If non-null, then it is the same photo as in chat.photo
  final ChatPhoto? photo;

  /// Supergroup or channel description
  final String description;

  /// Number of members in the supergroup or channel; 0 if unknown
  final int memberCount;

  /// Number of privileged users in the supergroup or channel; 0 if unknown
  final int administratorCount;

  /// Number of restricted users in the supergroup; 0 if unknown
  final int restrictedCount;

  /// Number of users banned from chat; 0 if unknown
  final int bannedCount;

  /// Chat identifier of a discussion group for the channel, or a channel, for which the supergroup is the designated discussion group; 0 if none or unknown
  final int linkedChatId;

  /// Delay between consecutive sent messages for non-administrator supergroup members, in seconds
  final int slowModeDelay;

  /// Time left before next message can be sent in the supergroup, in seconds. An updateSupergroupFullInfo update is not triggered when value of this field changes, but both new and old values are non-zero
  final double slowModeDelayExpiresIn;

  /// True, if members of the chat can be retrieved via getSupergroupMembers or searchChatMembers
  final bool canGetMembers;

  /// True, if non-administrators can receive only administrators and bots using getSupergroupMembers or searchChatMembers
  final bool hasHiddenMembers;

  /// True, if non-administrators and non-bots can be hidden in responses to getSupergroupMembers and searchChatMembers for non-administrators
  final bool canHideMembers;

  /// True, if the chat username can be changed
  final bool canSetUsername;

  /// True, if the supergroup sticker set can be changed
  final bool canSetStickerSet;

  /// True, if the supergroup location can be changed
  final bool canSetLocation;

  /// True, if the supergroup or channel statistics are available
  final bool canGetStatistics;

  /// True, if aggressive anti-spam checks can be enabled or disabled in the supergroup
  final bool canToggleAggressiveAntiSpam;

  /// True, if new chat members will have access to old messages. In public, discussion, of forum groups and all channels, old messages are always available,. so this option affects only private non-forum supergroups without a linked chat. The value of this field is only available to chat administrators
  final bool isAllHistoryAvailable;

  /// True, if aggressive anti-spam checks are enabled in the supergroup. The value of this field is only available to chat administrators
  final bool hasAggressiveAntiSpamEnabled;

  /// Identifier of the supergroup sticker set; 0 if none
  final int stickerSetId;

  /// Location to which the supergroup is connected; may be null
  final ChatLocation? location;

  /// Primary invite link for the chat; may be null. For chat administrators with can_invite_users right only
  final ChatInviteLink? inviteLink;

  /// List of commands of bots in the group
  final List<BotCommands> botCommands;

  /// Identifier of the basic group from which supergroup was upgraded; 0 if none
  final int upgradedFromBasicGroupId;

  /// Identifier of the last message in the basic group from which supergroup was upgraded; 0 if none
  final int upgradedFromMaxMessageId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory SupergroupFullInfo.fromJson(Map<String, dynamic> json) => SupergroupFullInfo(
    photo: json['photo'] == null ? null : ChatPhoto.fromJson(json['photo']),
    description: json['description'],
    memberCount: json['member_count'],
    administratorCount: json['administrator_count'],
    restrictedCount: json['restricted_count'],
    bannedCount: json['banned_count'],
    linkedChatId: json['linked_chat_id'] ?? 0,
    slowModeDelay: json['slow_mode_delay'],
    slowModeDelayExpiresIn: json['slow_mode_delay_expires_in'],
    canGetMembers: json['can_get_members'],
    hasHiddenMembers: json['has_hidden_members'],
    canHideMembers: json['can_hide_members'],
    canSetUsername: json['can_set_username'],
    canSetStickerSet: json['can_set_sticker_set'],
    canSetLocation: json['can_set_location'],
    canGetStatistics: json['can_get_statistics'],
    canToggleAggressiveAntiSpam: json['can_toggle_aggressive_anti_spam'],
    isAllHistoryAvailable: json['is_all_history_available'],
    hasAggressiveAntiSpamEnabled: json['has_aggressive_anti_spam_enabled'],
    stickerSetId: int.tryParse(json['sticker_set_id'] ?? "") ?? 0,
    location: json['location'] == null ? null : ChatLocation.fromJson(json['location']),
    inviteLink: json['invite_link'] == null ? null : ChatInviteLink.fromJson(json['invite_link']),
    botCommands: List<BotCommands>.from((json['bot_commands'] ?? []).map((item) => BotCommands.fromJson(item)).toList()),
    upgradedFromBasicGroupId: json['upgraded_from_basic_group_id'] ?? 0,
    upgradedFromMaxMessageId: json['upgraded_from_max_message_id'] ?? 0,
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "photo": photo?.toJson(),
      "description": description,
      "member_count": memberCount,
      "administrator_count": administratorCount,
      "restricted_count": restrictedCount,
      "banned_count": bannedCount,
      "linked_chat_id": linkedChatId,
      "slow_mode_delay": slowModeDelay,
      "slow_mode_delay_expires_in": slowModeDelayExpiresIn,
      "can_get_members": canGetMembers,
      "has_hidden_members": hasHiddenMembers,
      "can_hide_members": canHideMembers,
      "can_set_username": canSetUsername,
      "can_set_sticker_set": canSetStickerSet,
      "can_set_location": canSetLocation,
      "can_get_statistics": canGetStatistics,
      "can_toggle_aggressive_anti_spam": canToggleAggressiveAntiSpam,
      "is_all_history_available": isAllHistoryAvailable,
      "has_aggressive_anti_spam_enabled": hasAggressiveAntiSpamEnabled,
      "sticker_set_id": stickerSetId,
      "location": location?.toJson(),
      "invite_link": inviteLink?.toJson(),
      "bot_commands": botCommands.map((i) => i.toJson()).toList(),
      "upgraded_from_basic_group_id": upgradedFromBasicGroupId,
      "upgraded_from_max_message_id": upgradedFromMaxMessageId,
		};
	}

  
  SupergroupFullInfo copyWith({
    ChatPhoto? photo,
    String? description,
    int? memberCount,
    int? administratorCount,
    int? restrictedCount,
    int? bannedCount,
    int? linkedChatId,
    int? slowModeDelay,
    double? slowModeDelayExpiresIn,
    bool? canGetMembers,
    bool? hasHiddenMembers,
    bool? canHideMembers,
    bool? canSetUsername,
    bool? canSetStickerSet,
    bool? canSetLocation,
    bool? canGetStatistics,
    bool? canToggleAggressiveAntiSpam,
    bool? isAllHistoryAvailable,
    bool? hasAggressiveAntiSpamEnabled,
    int? stickerSetId,
    ChatLocation? location,
    ChatInviteLink? inviteLink,
    List<BotCommands>? botCommands,
    int? upgradedFromBasicGroupId,
    int? upgradedFromMaxMessageId,
    dynamic extra,
    int? clientId,
  }) => SupergroupFullInfo(
    photo: photo ?? this.photo,
    description: description ?? this.description,
    memberCount: memberCount ?? this.memberCount,
    administratorCount: administratorCount ?? this.administratorCount,
    restrictedCount: restrictedCount ?? this.restrictedCount,
    bannedCount: bannedCount ?? this.bannedCount,
    linkedChatId: linkedChatId ?? this.linkedChatId,
    slowModeDelay: slowModeDelay ?? this.slowModeDelay,
    slowModeDelayExpiresIn: slowModeDelayExpiresIn ?? this.slowModeDelayExpiresIn,
    canGetMembers: canGetMembers ?? this.canGetMembers,
    hasHiddenMembers: hasHiddenMembers ?? this.hasHiddenMembers,
    canHideMembers: canHideMembers ?? this.canHideMembers,
    canSetUsername: canSetUsername ?? this.canSetUsername,
    canSetStickerSet: canSetStickerSet ?? this.canSetStickerSet,
    canSetLocation: canSetLocation ?? this.canSetLocation,
    canGetStatistics: canGetStatistics ?? this.canGetStatistics,
    canToggleAggressiveAntiSpam: canToggleAggressiveAntiSpam ?? this.canToggleAggressiveAntiSpam,
    isAllHistoryAvailable: isAllHistoryAvailable ?? this.isAllHistoryAvailable,
    hasAggressiveAntiSpamEnabled: hasAggressiveAntiSpamEnabled ?? this.hasAggressiveAntiSpamEnabled,
    stickerSetId: stickerSetId ?? this.stickerSetId,
    location: location ?? this.location,
    inviteLink: inviteLink ?? this.inviteLink,
    botCommands: botCommands ?? this.botCommands,
    upgradedFromBasicGroupId: upgradedFromBasicGroupId ?? this.upgradedFromBasicGroupId,
    upgradedFromMaxMessageId: upgradedFromMaxMessageId ?? this.upgradedFromMaxMessageId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'supergroupFullInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
