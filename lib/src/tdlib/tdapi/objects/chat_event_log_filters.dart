part of '../tdapi.dart';

/// **ChatEventLogFilters** *(chatEventLogFilters)* - basic class
///
/// Represents a set of filters used to obtain a chat event log.
///
/// * [messageEdits]: True, if message edits need to be returned.
/// * [messageDeletions]: True, if message deletions need to be returned.
/// * [messagePins]: True, if pin/unpin events need to be returned.
/// * [memberJoins]: True, if members joining events need to be returned.
/// * [memberLeaves]: True, if members leaving events need to be returned.
/// * [memberInvites]: True, if invited member events need to be returned.
/// * [memberPromotions]: True, if member promotion/demotion events need to be returned.
/// * [memberRestrictions]: True, if member restricted/unrestricted/banned/unbanned events need to be returned.
/// * [infoChanges]: True, if changes in chat information need to be returned.
/// * [settingChanges]: True, if changes in chat settings need to be returned.
/// * [inviteLinkChanges]: True, if changes to invite links need to be returned.
/// * [videoChatChanges]: True, if video chat actions need to be returned.
/// * [forumChanges]: True, if forum-related actions need to be returned.
final class ChatEventLogFilters extends TdObject {
  
  /// **ChatEventLogFilters** *(chatEventLogFilters)* - basic class
  ///
  /// Represents a set of filters used to obtain a chat event log.
  ///
  /// * [messageEdits]: True, if message edits need to be returned.
  /// * [messageDeletions]: True, if message deletions need to be returned.
  /// * [messagePins]: True, if pin/unpin events need to be returned.
  /// * [memberJoins]: True, if members joining events need to be returned.
  /// * [memberLeaves]: True, if members leaving events need to be returned.
  /// * [memberInvites]: True, if invited member events need to be returned.
  /// * [memberPromotions]: True, if member promotion/demotion events need to be returned.
  /// * [memberRestrictions]: True, if member restricted/unrestricted/banned/unbanned events need to be returned.
  /// * [infoChanges]: True, if changes in chat information need to be returned.
  /// * [settingChanges]: True, if changes in chat settings need to be returned.
  /// * [inviteLinkChanges]: True, if changes to invite links need to be returned.
  /// * [videoChatChanges]: True, if video chat actions need to be returned.
  /// * [forumChanges]: True, if forum-related actions need to be returned.
  const ChatEventLogFilters({
    required this.messageEdits,
    required this.messageDeletions,
    required this.messagePins,
    required this.memberJoins,
    required this.memberLeaves,
    required this.memberInvites,
    required this.memberPromotions,
    required this.memberRestrictions,
    required this.infoChanges,
    required this.settingChanges,
    required this.inviteLinkChanges,
    required this.videoChatChanges,
    required this.forumChanges,
  });
  
  /// True, if message edits need to be returned
  final bool messageEdits;

  /// True, if message deletions need to be returned
  final bool messageDeletions;

  /// True, if pin/unpin events need to be returned
  final bool messagePins;

  /// True, if members joining events need to be returned
  final bool memberJoins;

  /// True, if members leaving events need to be returned
  final bool memberLeaves;

  /// True, if invited member events need to be returned
  final bool memberInvites;

  /// True, if member promotion/demotion events need to be returned
  final bool memberPromotions;

  /// True, if member restricted/unrestricted/banned/unbanned events need to be returned
  final bool memberRestrictions;

  /// True, if changes in chat information need to be returned
  final bool infoChanges;

  /// True, if changes in chat settings need to be returned
  final bool settingChanges;

  /// True, if changes to invite links need to be returned
  final bool inviteLinkChanges;

  /// True, if video chat actions need to be returned
  final bool videoChatChanges;

  /// True, if forum-related actions need to be returned
  final bool forumChanges;
  
  /// Parse from a json
  factory ChatEventLogFilters.fromJson(Map<String, dynamic> json) => ChatEventLogFilters(
    messageEdits: json['message_edits'],
    messageDeletions: json['message_deletions'],
    messagePins: json['message_pins'],
    memberJoins: json['member_joins'],
    memberLeaves: json['member_leaves'],
    memberInvites: json['member_invites'],
    memberPromotions: json['member_promotions'],
    memberRestrictions: json['member_restrictions'],
    infoChanges: json['info_changes'],
    settingChanges: json['setting_changes'],
    inviteLinkChanges: json['invite_link_changes'],
    videoChatChanges: json['video_chat_changes'],
    forumChanges: json['forum_changes'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "message_edits": messageEdits,
      "message_deletions": messageDeletions,
      "message_pins": messagePins,
      "member_joins": memberJoins,
      "member_leaves": memberLeaves,
      "member_invites": memberInvites,
      "member_promotions": memberPromotions,
      "member_restrictions": memberRestrictions,
      "info_changes": infoChanges,
      "setting_changes": settingChanges,
      "invite_link_changes": inviteLinkChanges,
      "video_chat_changes": videoChatChanges,
      "forum_changes": forumChanges,
		};
	}

  
  ChatEventLogFilters copyWith({
    bool? messageEdits,
    bool? messageDeletions,
    bool? messagePins,
    bool? memberJoins,
    bool? memberLeaves,
    bool? memberInvites,
    bool? memberPromotions,
    bool? memberRestrictions,
    bool? infoChanges,
    bool? settingChanges,
    bool? inviteLinkChanges,
    bool? videoChatChanges,
    bool? forumChanges,
  }) => ChatEventLogFilters(
    messageEdits: messageEdits ?? this.messageEdits,
    messageDeletions: messageDeletions ?? this.messageDeletions,
    messagePins: messagePins ?? this.messagePins,
    memberJoins: memberJoins ?? this.memberJoins,
    memberLeaves: memberLeaves ?? this.memberLeaves,
    memberInvites: memberInvites ?? this.memberInvites,
    memberPromotions: memberPromotions ?? this.memberPromotions,
    memberRestrictions: memberRestrictions ?? this.memberRestrictions,
    infoChanges: infoChanges ?? this.infoChanges,
    settingChanges: settingChanges ?? this.settingChanges,
    inviteLinkChanges: inviteLinkChanges ?? this.inviteLinkChanges,
    videoChatChanges: videoChatChanges ?? this.videoChatChanges,
    forumChanges: forumChanges ?? this.forumChanges,
  );

  static const String objectType = 'chatEventLogFilters';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
