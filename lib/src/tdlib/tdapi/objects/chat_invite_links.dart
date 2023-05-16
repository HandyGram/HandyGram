part of '../tdapi.dart';

/// **ChatInviteLinks** *(chatInviteLinks)* - basic class
///
/// Contains a list of chat invite links.
///
/// * [totalCount]: Approximate total number of chat invite links found.
/// * [inviteLinks]: List of invite links.
final class ChatInviteLinks extends TdObject {
  
  /// **ChatInviteLinks** *(chatInviteLinks)* - basic class
  ///
  /// Contains a list of chat invite links.
  ///
  /// * [totalCount]: Approximate total number of chat invite links found.
  /// * [inviteLinks]: List of invite links.
  const ChatInviteLinks({
    required this.totalCount,
    required this.inviteLinks,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of chat invite links found 
  final int totalCount;

  /// List of invite links
  final List<ChatInviteLink> inviteLinks;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatInviteLinks.fromJson(Map<String, dynamic> json) => ChatInviteLinks(
    totalCount: json['total_count'],
    inviteLinks: List<ChatInviteLink>.from((json['invite_links'] ?? []).map((item) => ChatInviteLink.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "invite_links": inviteLinks.map((i) => i.toJson()).toList(),
		};
	}

  
  ChatInviteLinks copyWith({
    int? totalCount,
    List<ChatInviteLink>? inviteLinks,
    dynamic extra,
    int? clientId,
  }) => ChatInviteLinks(
    totalCount: totalCount ?? this.totalCount,
    inviteLinks: inviteLinks ?? this.inviteLinks,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatInviteLinks';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
