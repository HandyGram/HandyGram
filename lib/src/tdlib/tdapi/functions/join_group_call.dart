part of '../tdapi.dart';

/// **JoinGroupCall** *(joinGroupCall)* - TDLib function
///
/// Joins an active group call. Returns join response payload for tgcalls.
///
/// * [groupCallId]: Group call identifier.
/// * [participantId]: Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only *(optional)*.
/// * [audioSourceId]: Caller audio channel synchronization source identifier; received from tgcalls.
/// * [payload]: Group call join payload; received from tgcalls.
/// * [isMuted]: Pass true to join the call with muted microphone.
/// * [isMyVideoEnabled]: Pass true if the user's video is enabled.
/// * [inviteHash]: If non-empty, invite hash to be used to join the group call without being muted by administrators.
///
/// [Text] is returned on completion.
final class JoinGroupCall extends TdFunction {
  
  /// **JoinGroupCall** *(joinGroupCall)* - TDLib function
  ///
  /// Joins an active group call. Returns join response payload for tgcalls.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [participantId]: Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only *(optional)*.
  /// * [audioSourceId]: Caller audio channel synchronization source identifier; received from tgcalls.
  /// * [payload]: Group call join payload; received from tgcalls.
  /// * [isMuted]: Pass true to join the call with muted microphone.
  /// * [isMyVideoEnabled]: Pass true if the user's video is enabled.
  /// * [inviteHash]: If non-empty, invite hash to be used to join the group call without being muted by administrators.
  ///
  /// [Text] is returned on completion.
  const JoinGroupCall({
    required this.groupCallId,
    this.participantId,
    required this.audioSourceId,
    required this.payload,
    required this.isMuted,
    required this.isMyVideoEnabled,
    required this.inviteHash,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Identifier of a group call participant, which will be used to join the call; pass null to join as self; video chats only
  final MessageSender? participantId;

  /// Caller audio channel synchronization source identifier; received from tgcalls
  final int audioSourceId;

  /// Group call join payload; received from tgcalls
  final String payload;

  /// Pass true to join the call with muted microphone
  final bool isMuted;

  /// Pass true if the user's video is enabled
  final bool isMyVideoEnabled;

  /// If non-empty, invite hash to be used to join the group call without being muted by administrators
  final String inviteHash;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "participant_id": participantId?.toJson(),
      "audio_source_id": audioSourceId,
      "payload": payload,
      "is_muted": isMuted,
      "is_my_video_enabled": isMyVideoEnabled,
      "invite_hash": inviteHash,
      "@extra": extra,
		};
	}

  
  JoinGroupCall copyWith({
    int? groupCallId,
    MessageSender? participantId,
    int? audioSourceId,
    String? payload,
    bool? isMuted,
    bool? isMyVideoEnabled,
    String? inviteHash,
  }) => JoinGroupCall(
    groupCallId: groupCallId ?? this.groupCallId,
    participantId: participantId ?? this.participantId,
    audioSourceId: audioSourceId ?? this.audioSourceId,
    payload: payload ?? this.payload,
    isMuted: isMuted ?? this.isMuted,
    isMyVideoEnabled: isMyVideoEnabled ?? this.isMyVideoEnabled,
    inviteHash: inviteHash ?? this.inviteHash,
  );

  static const String objectType = 'joinGroupCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
