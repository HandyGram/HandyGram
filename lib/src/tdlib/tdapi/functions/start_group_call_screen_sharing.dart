part of '../tdapi.dart';

/// **StartGroupCallScreenSharing** *(startGroupCallScreenSharing)* - TDLib function
///
/// Starts screen sharing in a joined group call. Returns join response payload for tgcalls.
///
/// * [groupCallId]: Group call identifier.
/// * [audioSourceId]: Screen sharing audio channel synchronization source identifier; received from tgcalls.
/// * [payload]: Group call join payload; received from tgcalls.
///
/// [Text] is returned on completion.
final class StartGroupCallScreenSharing extends TdFunction {
  
  /// **StartGroupCallScreenSharing** *(startGroupCallScreenSharing)* - TDLib function
  ///
  /// Starts screen sharing in a joined group call. Returns join response payload for tgcalls.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [audioSourceId]: Screen sharing audio channel synchronization source identifier; received from tgcalls.
  /// * [payload]: Group call join payload; received from tgcalls.
  ///
  /// [Text] is returned on completion.
  const StartGroupCallScreenSharing({
    required this.groupCallId,
    required this.audioSourceId,
    required this.payload,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Screen sharing audio channel synchronization source identifier; received from tgcalls
  final int audioSourceId;

  /// Group call join payload; received from tgcalls
  final String payload;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "audio_source_id": audioSourceId,
      "payload": payload,
      "@extra": extra,
		};
	}

  
  StartGroupCallScreenSharing copyWith({
    int? groupCallId,
    int? audioSourceId,
    String? payload,
  }) => StartGroupCallScreenSharing(
    groupCallId: groupCallId ?? this.groupCallId,
    audioSourceId: audioSourceId ?? this.audioSourceId,
    payload: payload ?? this.payload,
  );

  static const String objectType = 'startGroupCallScreenSharing';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
