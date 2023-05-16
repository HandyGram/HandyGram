part of '../tdapi.dart';

/// **ChatMembers** *(chatMembers)* - basic class
///
/// Contains a list of chat members.
///
/// * [totalCount]: Approximate total number of chat members found.
/// * [members]: A list of chat members.
final class ChatMembers extends TdObject {
  
  /// **ChatMembers** *(chatMembers)* - basic class
  ///
  /// Contains a list of chat members.
  ///
  /// * [totalCount]: Approximate total number of chat members found.
  /// * [members]: A list of chat members.
  const ChatMembers({
    required this.totalCount,
    required this.members,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total number of chat members found 
  final int totalCount;

  /// A list of chat members
  final List<ChatMember> members;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatMembers.fromJson(Map<String, dynamic> json) => ChatMembers(
    totalCount: json['total_count'],
    members: List<ChatMember>.from((json['members'] ?? []).map((item) => ChatMember.fromJson(item)).toList()),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "total_count": totalCount,
      "members": members.map((i) => i.toJson()).toList(),
		};
	}

  
  ChatMembers copyWith({
    int? totalCount,
    List<ChatMember>? members,
    dynamic extra,
    int? clientId,
  }) => ChatMembers(
    totalCount: totalCount ?? this.totalCount,
    members: members ?? this.members,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatMembers';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
