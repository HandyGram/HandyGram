part of '../tdapi.dart';

/// **InviteGroupCallParticipants** *(inviteGroupCallParticipants)* - TDLib function
///
/// Invites users to an active group call. Sends a service message of type messageInviteToGroupCall for video chats.
///
/// * [groupCallId]: Group call identifier.
/// * [userIds]: User identifiers. At most 10 users can be invited simultaneously.
///
/// [Ok] is returned on completion.
final class InviteGroupCallParticipants extends TdFunction {
  
  /// **InviteGroupCallParticipants** *(inviteGroupCallParticipants)* - TDLib function
  ///
  /// Invites users to an active group call. Sends a service message of type messageInviteToGroupCall for video chats.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [userIds]: User identifiers. At most 10 users can be invited simultaneously.
  ///
  /// [Ok] is returned on completion.
  const InviteGroupCallParticipants({
    required this.groupCallId,
    required this.userIds,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// User identifiers. At most 10 users can be invited simultaneously
  final List<int> userIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "user_ids": userIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  InviteGroupCallParticipants copyWith({
    int? groupCallId,
    List<int>? userIds,
  }) => InviteGroupCallParticipants(
    groupCallId: groupCallId ?? this.groupCallId,
    userIds: userIds ?? this.userIds,
  );

  static const String objectType = 'inviteGroupCallParticipants';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
