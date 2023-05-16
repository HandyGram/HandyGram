part of '../tdapi.dart';

/// **GroupCallParticipantVideoInfo** *(groupCallParticipantVideoInfo)* - basic class
///
/// Contains information about a group call participant's video channel.
///
/// * [sourceGroups]: List of synchronization source groups of the video.
/// * [endpointId]: Video channel endpoint identifier.
/// * [isPaused]: True, if the video is paused. This flag needs to be ignored, if new video frames are received.
final class GroupCallParticipantVideoInfo extends TdObject {
  
  /// **GroupCallParticipantVideoInfo** *(groupCallParticipantVideoInfo)* - basic class
  ///
  /// Contains information about a group call participant's video channel.
  ///
  /// * [sourceGroups]: List of synchronization source groups of the video.
  /// * [endpointId]: Video channel endpoint identifier.
  /// * [isPaused]: True, if the video is paused. This flag needs to be ignored, if new video frames are received.
  const GroupCallParticipantVideoInfo({
    required this.sourceGroups,
    required this.endpointId,
    required this.isPaused,
  });
  
  /// List of synchronization source groups of the video
  final List<GroupCallVideoSourceGroup> sourceGroups;

  /// Video channel endpoint identifier
  final String endpointId;

  /// True, if the video is paused. This flag needs to be ignored, if new video frames are received
  final bool isPaused;
  
  /// Parse from a json
  factory GroupCallParticipantVideoInfo.fromJson(Map<String, dynamic> json) => GroupCallParticipantVideoInfo(
    sourceGroups: List<GroupCallVideoSourceGroup>.from((json['source_groups'] ?? []).map((item) => GroupCallVideoSourceGroup.fromJson(item)).toList()),
    endpointId: json['endpoint_id'],
    isPaused: json['is_paused'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "source_groups": sourceGroups.map((i) => i.toJson()).toList(),
      "endpoint_id": endpointId,
      "is_paused": isPaused,
		};
	}

  
  GroupCallParticipantVideoInfo copyWith({
    List<GroupCallVideoSourceGroup>? sourceGroups,
    String? endpointId,
    bool? isPaused,
  }) => GroupCallParticipantVideoInfo(
    sourceGroups: sourceGroups ?? this.sourceGroups,
    endpointId: endpointId ?? this.endpointId,
    isPaused: isPaused ?? this.isPaused,
  );

  static const String objectType = 'groupCallParticipantVideoInfo';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
