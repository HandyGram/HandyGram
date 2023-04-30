part of '../tdapi.dart';

/// **GroupCallRecentSpeaker** *(groupCallRecentSpeaker)* - basic class
  ///
  /// Describes a recently speaking participant in a group call.
  ///
  /// * [participantId]: Group call participant identifier.
  /// * [isSpeaking]: True, is the user has spoken recently.
class GroupCallRecentSpeaker extends TdObject {
  
  /// **GroupCallRecentSpeaker** *(groupCallRecentSpeaker)* - basic class
  ///
  /// Describes a recently speaking participant in a group call.
  ///
  /// * [participantId]: Group call participant identifier.
  /// * [isSpeaking]: True, is the user has spoken recently.
  const GroupCallRecentSpeaker({
    required this.participantId,
    required this.isSpeaking,
  });
  
  /// Group call participant identifier 
  final MessageSender participantId;

  /// True, is the user has spoken recently
  final bool isSpeaking;
  
  /// Parse from a json
  factory GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json) => GroupCallRecentSpeaker(
    participantId: MessageSender.fromJson(json['participant_id']),
    isSpeaking: json['is_speaking'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "participant_id": participantId.toJson(),
      "is_speaking": isSpeaking,
    };
  }
  
  GroupCallRecentSpeaker copyWith({
    MessageSender? participantId,
    bool? isSpeaking,
  }) => GroupCallRecentSpeaker(
    participantId: participantId ?? this.participantId,
    isSpeaking: isSpeaking ?? this.isSpeaking,
  );

  static const String constructor = 'groupCallRecentSpeaker';
  
  @override
  String getConstructor() => constructor;
}
