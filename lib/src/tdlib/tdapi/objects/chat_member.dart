part of '../tdapi.dart';

/// **ChatMember** *(chatMember)* - basic class
///
/// Describes a user or a chat as a member of another chat.
///
/// * [memberId]: Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels.
/// * [inviterUserId]: Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown.
/// * [joinedChatDate]: Point in time (Unix timestamp) when the user joined/was promoted/was banned in the chat.
/// * [status]: Status of the member in the chat.
final class ChatMember extends TdObject {
  
  /// **ChatMember** *(chatMember)* - basic class
  ///
  /// Describes a user or a chat as a member of another chat.
  ///
  /// * [memberId]: Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels.
  /// * [inviterUserId]: Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown.
  /// * [joinedChatDate]: Point in time (Unix timestamp) when the user joined/was promoted/was banned in the chat.
  /// * [status]: Status of the member in the chat.
  const ChatMember({
    required this.memberId,
    required this.inviterUserId,
    required this.joinedChatDate,
    required this.status,
    this.extra,
    this.clientId,
  });
  
  /// Identifier of the chat member. Currently, other chats can be only Left or Banned. Only supergroups and channels can have other chats as Left or Banned members and these chats must be supergroups or channels
  final MessageSender memberId;

  /// Identifier of a user that invited/promoted/banned this member in the chat; 0 if unknown
  final int inviterUserId;

  /// Point in time (Unix timestamp) when the user joined/was promoted/was banned in the chat
  final int joinedChatDate;

  /// Status of the member in the chat
  final ChatMemberStatus status;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory ChatMember.fromJson(Map<String, dynamic> json) => ChatMember(
    memberId: MessageSender.fromJson(json['member_id']),
    inviterUserId: json['inviter_user_id'],
    joinedChatDate: json['joined_chat_date'],
    status: ChatMemberStatus.fromJson(json['status']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "member_id": memberId.toJson(),
      "inviter_user_id": inviterUserId,
      "joined_chat_date": joinedChatDate,
      "status": status.toJson(),
		};
	}

  
  ChatMember copyWith({
    MessageSender? memberId,
    int? inviterUserId,
    int? joinedChatDate,
    ChatMemberStatus? status,
    dynamic extra,
    int? clientId,
  }) => ChatMember(
    memberId: memberId ?? this.memberId,
    inviterUserId: inviterUserId ?? this.inviterUserId,
    joinedChatDate: joinedChatDate ?? this.joinedChatDate,
    status: status ?? this.status,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'chatMember';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
