part of '../tdapi.dart';

/// **SetGroupCallParticipantVolumeLevel** *(setGroupCallParticipantVolumeLevel)* - TDLib function
///
/// Changes volume level of a participant of an active group call. If the current user can manage the group call, then the participant's volume level will be changed for all users with the default volume level.
///
/// * [groupCallId]: Group call identifier.
/// * [participantId]: Participant identifier.
/// * [volumeLevel]: New participant's volume level; 1-20000 in hundreds of percents.
///
/// [Ok] is returned on completion.
final class SetGroupCallParticipantVolumeLevel extends TdFunction {
  
  /// **SetGroupCallParticipantVolumeLevel** *(setGroupCallParticipantVolumeLevel)* - TDLib function
  ///
  /// Changes volume level of a participant of an active group call. If the current user can manage the group call, then the participant's volume level will be changed for all users with the default volume level.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [participantId]: Participant identifier.
  /// * [volumeLevel]: New participant's volume level; 1-20000 in hundreds of percents.
  ///
  /// [Ok] is returned on completion.
  const SetGroupCallParticipantVolumeLevel({
    required this.groupCallId,
    required this.participantId,
    required this.volumeLevel,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Participant identifier
  final MessageSender participantId;

  /// New participant's volume level; 1-20000 in hundreds of percents
  final int volumeLevel;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "participant_id": participantId.toJson(),
      "volume_level": volumeLevel,
      "@extra": extra,
		};
	}

  
  SetGroupCallParticipantVolumeLevel copyWith({
    int? groupCallId,
    MessageSender? participantId,
    int? volumeLevel,
  }) => SetGroupCallParticipantVolumeLevel(
    groupCallId: groupCallId ?? this.groupCallId,
    participantId: participantId ?? this.participantId,
    volumeLevel: volumeLevel ?? this.volumeLevel,
  );

  static const String objectType = 'setGroupCallParticipantVolumeLevel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
