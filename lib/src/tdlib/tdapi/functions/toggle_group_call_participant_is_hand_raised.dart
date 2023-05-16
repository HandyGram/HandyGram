part of '../tdapi.dart';

/// **ToggleGroupCallParticipantIsHandRaised** *(toggleGroupCallParticipantIsHandRaised)* - TDLib function
///
/// Toggles whether a group call participant hand is rased.
///
/// * [groupCallId]: Group call identifier.
/// * [participantId]: Participant identifier.
/// * [isHandRaised]: Pass true if the user's hand needs to be raised. Only self hand can be raised. Requires groupCall.can_be_managed group call flag to lower other's hand.
///
/// [Ok] is returned on completion.
final class ToggleGroupCallParticipantIsHandRaised extends TdFunction {
  
  /// **ToggleGroupCallParticipantIsHandRaised** *(toggleGroupCallParticipantIsHandRaised)* - TDLib function
  ///
  /// Toggles whether a group call participant hand is rased.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [participantId]: Participant identifier.
  /// * [isHandRaised]: Pass true if the user's hand needs to be raised. Only self hand can be raised. Requires groupCall.can_be_managed group call flag to lower other's hand.
  ///
  /// [Ok] is returned on completion.
  const ToggleGroupCallParticipantIsHandRaised({
    required this.groupCallId,
    required this.participantId,
    required this.isHandRaised,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Participant identifier
  final MessageSender participantId;

  /// Pass true if the user's hand needs to be raised. Only self hand can be raised. Requires groupCall.can_be_managed group call flag to lower other's hand
  final bool isHandRaised;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "participant_id": participantId.toJson(),
      "is_hand_raised": isHandRaised,
      "@extra": extra,
		};
	}

  
  ToggleGroupCallParticipantIsHandRaised copyWith({
    int? groupCallId,
    MessageSender? participantId,
    bool? isHandRaised,
  }) => ToggleGroupCallParticipantIsHandRaised(
    groupCallId: groupCallId ?? this.groupCallId,
    participantId: participantId ?? this.participantId,
    isHandRaised: isHandRaised ?? this.isHandRaised,
  );

  static const String objectType = 'toggleGroupCallParticipantIsHandRaised';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
