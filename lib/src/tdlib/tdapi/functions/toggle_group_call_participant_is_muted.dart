part of '../tdapi.dart';

/// **ToggleGroupCallParticipantIsMuted** *(toggleGroupCallParticipantIsMuted)* - TDLib function
///
/// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves.
///
/// * [groupCallId]: Group call identifier.
/// * [participantId]: Participant identifier.
/// * [isMuted]: Pass true to mute the user; pass false to unmute the them.
///
/// [Ok] is returned on completion.
final class ToggleGroupCallParticipantIsMuted extends TdFunction {
  
  /// **ToggleGroupCallParticipantIsMuted** *(toggleGroupCallParticipantIsMuted)* - TDLib function
  ///
  /// Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [participantId]: Participant identifier.
  /// * [isMuted]: Pass true to mute the user; pass false to unmute the them.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallParticipantIsMuted({
    required this.groupCallId,
    required this.participantId,
    required this.isMuted,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Participant identifier
  final MessageSender participantId;

  /// Pass true to mute the user; pass false to unmute the them
  final bool isMuted;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "participant_id": participantId.toJson(),
      "is_muted": isMuted,
      "@extra": extra,
		};
	}

  
  ToggleGroupCallParticipantIsMuted copyWith({
    int? groupCallId,
    MessageSender? participantId,
    bool? isMuted,
  }) => ToggleGroupCallParticipantIsMuted(
    groupCallId: groupCallId ?? this.groupCallId,
    participantId: participantId ?? this.participantId,
    isMuted: isMuted ?? this.isMuted,
  );

  static const String objectType = 'toggleGroupCallParticipantIsMuted';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
