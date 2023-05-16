part of '../tdapi.dart';

/// **SetGroupCallParticipantIsSpeaking** *(setGroupCallParticipantIsSpeaking)* - TDLib function
///
/// Informs TDLib that speaking state of a participant of an active group has changed.
///
/// * [groupCallId]: Group call identifier.
/// * [audioSource]: Group call participant's synchronization audio source identifier, or 0 for the current user.
/// * [isSpeaking]: Pass true if the user is speaking.
///
/// [Ok] is returned on completion.
final class SetGroupCallParticipantIsSpeaking extends TdFunction {
  
  /// **SetGroupCallParticipantIsSpeaking** *(setGroupCallParticipantIsSpeaking)* - TDLib function
  ///
  /// Informs TDLib that speaking state of a participant of an active group has changed.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [audioSource]: Group call participant's synchronization audio source identifier, or 0 for the current user.
  /// * [isSpeaking]: Pass true if the user is speaking.
  ///
  /// [Ok] is returned on completion.
  const SetGroupCallParticipantIsSpeaking({
    required this.groupCallId,
    required this.audioSource,
    required this.isSpeaking,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Group call participant's synchronization audio source identifier, or 0 for the current user
  final int audioSource;

  /// Pass true if the user is speaking
  final bool isSpeaking;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "audio_source": audioSource,
      "is_speaking": isSpeaking,
      "@extra": extra,
		};
	}

  
  SetGroupCallParticipantIsSpeaking copyWith({
    int? groupCallId,
    int? audioSource,
    bool? isSpeaking,
  }) => SetGroupCallParticipantIsSpeaking(
    groupCallId: groupCallId ?? this.groupCallId,
    audioSource: audioSource ?? this.audioSource,
    isSpeaking: isSpeaking ?? this.isSpeaking,
  );

  static const String objectType = 'setGroupCallParticipantIsSpeaking';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
