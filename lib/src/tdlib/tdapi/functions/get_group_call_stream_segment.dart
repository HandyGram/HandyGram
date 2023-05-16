part of '../tdapi.dart';

/// **GetGroupCallStreamSegment** *(getGroupCallStreamSegment)* - TDLib function
///
/// Returns a file with a segment of a group call stream in a modified OGG format for audio or MPEG-4 format for video.
///
/// * [groupCallId]: Group call identifier.
/// * [timeOffset]: Point in time when the stream segment begins; Unix timestamp in milliseconds.
/// * [scale]: Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds.
/// * [channelId]: Identifier of an audio/video channel to get as received from tgcalls.
/// * [videoQuality]: Video quality as received from tgcalls; pass null to get the worst available quality *(optional)*.
///
/// [FilePart] is returned on completion.
final class GetGroupCallStreamSegment extends TdFunction {
  
  /// **GetGroupCallStreamSegment** *(getGroupCallStreamSegment)* - TDLib function
  ///
  /// Returns a file with a segment of a group call stream in a modified OGG format for audio or MPEG-4 format for video.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [timeOffset]: Point in time when the stream segment begins; Unix timestamp in milliseconds.
  /// * [scale]: Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds.
  /// * [channelId]: Identifier of an audio/video channel to get as received from tgcalls.
  /// * [videoQuality]: Video quality as received from tgcalls; pass null to get the worst available quality *(optional)*.
  ///
  /// [FilePart] is returned on completion.
  const GetGroupCallStreamSegment({
    required this.groupCallId,
    required this.timeOffset,
    required this.scale,
    required this.channelId,
    this.videoQuality,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Point in time when the stream segment begins; Unix timestamp in milliseconds
  final int timeOffset;

  /// Segment duration scale; 0-1. Segment's duration is 1000/(2**scale) milliseconds
  final int scale;

  /// Identifier of an audio/video channel to get as received from tgcalls
  final int channelId;

  /// Video quality as received from tgcalls; pass null to get the worst available quality
  final GroupCallVideoQuality? videoQuality;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "time_offset": timeOffset,
      "scale": scale,
      "channel_id": channelId,
      "video_quality": videoQuality?.toJson(),
      "@extra": extra,
		};
	}

  
  GetGroupCallStreamSegment copyWith({
    int? groupCallId,
    int? timeOffset,
    int? scale,
    int? channelId,
    GroupCallVideoQuality? videoQuality,
  }) => GetGroupCallStreamSegment(
    groupCallId: groupCallId ?? this.groupCallId,
    timeOffset: timeOffset ?? this.timeOffset,
    scale: scale ?? this.scale,
    channelId: channelId ?? this.channelId,
    videoQuality: videoQuality ?? this.videoQuality,
  );

  static const String objectType = 'getGroupCallStreamSegment';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
