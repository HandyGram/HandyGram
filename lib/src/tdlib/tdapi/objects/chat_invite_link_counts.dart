part of '../tdapi.dart';

/// **ChatInviteLinkCounts** *(chatInviteLinkCounts)* - basic class
///
/// Contains a list of chat invite link counts.
///
/// * [inviteLinkCounts]: List of invite link counts.
final class ChatInviteLinkCounts extends TdObject {
  
  /// **ChatInviteLinkCounts** *(chatInviteLinkCounts)* - basic class
  ///
  /// Contains a list of chat invite link counts.
  ///
  /// * [inviteLinkCounts]: List of invite link counts.
  const ChatInviteLinkCounts({
    required this.inviteLinkCounts,
    this.extra,
    this.clientId,
  });
  
  /// List of invite link counts
  final List<ChatInviteLinkCount> inviteLinkCounts;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLinkCounts.fromJson(Map<String, dynamic> json) => ChatInviteLinkCounts(
    inviteLinkCounts: List<ChatInviteLinkCount>.from((json['invite_link_counts'] ?? []).map((item) => ChatInviteLinkCount.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "invite_link_counts": inviteLinkCounts.map((i) => i.toJson()).toList(),
		};
	}

  
  ChatInviteLinkCounts copyWith({
    List<ChatInviteLinkCount>? inviteLinkCounts,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLinkCounts(
    inviteLinkCounts: inviteLinkCounts ?? this.inviteLinkCounts,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatInviteLinkCounts';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
