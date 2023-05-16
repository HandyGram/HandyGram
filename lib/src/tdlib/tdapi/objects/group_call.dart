part of '../tdapi.dart';

/// **GroupCall** *(groupCall)* - basic class
///
/// Describes a group call.
///
/// * [id]: Group call identifier.
/// * [title]: Group call title.
/// * [scheduledStartDate]: Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 if it is already active or was ended.
/// * [enabledStartNotification]: True, if the group call is scheduled and the current user will receive a notification when the group call will start.
/// * [isActive]: True, if the call is active.
/// * [isRtmpStream]: True, if the chat is an RTMP stream instead of an ordinary video chat.
/// * [isJoined]: True, if the call is joined.
/// * [needRejoin]: True, if user was kicked from the call because of network loss and the call needs to be rejoined.
/// * [canBeManaged]: True, if the current user can manage the group call.
/// * [participantCount]: Number of participants in the group call.
/// * [hasHiddenListeners]: True, if group call participants, which are muted, aren't returned in participant list.
/// * [loadedAllParticipants]: True, if all group call participants are loaded.
/// * [recentSpeakers]: At most 3 recently speaking users in the group call.
/// * [isMyVideoEnabled]: True, if the current user's video is enabled.
/// * [isMyVideoPaused]: True, if the current user's video is paused.
/// * [canEnableVideo]: True, if the current user can broadcast video or share screen.
/// * [muteNewParticipants]: True, if only group call administrators can unmute new participants.
/// * [canToggleMuteNewParticipants]: True, if the current user can enable or disable mute_new_participants setting.
/// * [recordDuration]: Duration of the ongoing group call recording, in seconds; 0 if none. An updateGroupCall update is not triggered when value of this field changes, but the same recording goes on.
/// * [isVideoRecorded]: True, if a video file is being recorded for the call.
/// * [duration]: Call duration, in seconds; for ended calls only.
final class GroupCall extends TdObject {
  
  /// **GroupCall** *(groupCall)* - basic class
  ///
  /// Describes a group call.
  ///
  /// * [id]: Group call identifier.
  /// * [title]: Group call title.
  /// * [scheduledStartDate]: Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 if it is already active or was ended.
  /// * [enabledStartNotification]: True, if the group call is scheduled and the current user will receive a notification when the group call will start.
  /// * [isActive]: True, if the call is active.
  /// * [isRtmpStream]: True, if the chat is an RTMP stream instead of an ordinary video chat.
  /// * [isJoined]: True, if the call is joined.
  /// * [needRejoin]: True, if user was kicked from the call because of network loss and the call needs to be rejoined.
  /// * [canBeManaged]: True, if the current user can manage the group call.
  /// * [participantCount]: Number of participants in the group call.
  /// * [hasHiddenListeners]: True, if group call participants, which are muted, aren't returned in participant list.
  /// * [loadedAllParticipants]: True, if all group call participants are loaded.
  /// * [recentSpeakers]: At most 3 recently speaking users in the group call.
  /// * [isMyVideoEnabled]: True, if the current user's video is enabled.
  /// * [isMyVideoPaused]: True, if the current user's video is paused.
  /// * [canEnableVideo]: True, if the current user can broadcast video or share screen.
  /// * [muteNewParticipants]: True, if only group call administrators can unmute new participants.
  /// * [canToggleMuteNewParticipants]: True, if the current user can enable or disable mute_new_participants setting.
  /// * [recordDuration]: Duration of the ongoing group call recording, in seconds; 0 if none. An updateGroupCall update is not triggered when value of this field changes, but the same recording goes on.
  /// * [isVideoRecorded]: True, if a video file is being recorded for the call.
  /// * [duration]: Call duration, in seconds; for ended calls only.
  const GroupCall({
    required this.id,
    required this.title,
    required this.scheduledStartDate,
    required this.enabledStartNotification,
    required this.isActive,
    required this.isRtmpStream,
    required this.isJoined,
    required this.needRejoin,
    required this.canBeManaged,
    required this.participantCount,
    required this.hasHiddenListeners,
    required this.loadedAllParticipants,
    required this.recentSpeakers,
    required this.isMyVideoEnabled,
    required this.isMyVideoPaused,
    required this.canEnableVideo,
    required this.muteNewParticipants,
    required this.canToggleMuteNewParticipants,
    required this.recordDuration,
    required this.isVideoRecorded,
    required this.duration,
    this.extra,
    this.clientId,
  });
  
  /// Group call identifier
  final int id;

  /// Group call title
  final String title;

  /// Point in time (Unix timestamp) when the group call is supposed to be started by an administrator; 0 if it is already active or was ended
  final int scheduledStartDate;

  /// True, if the group call is scheduled and the current user will receive a notification when the group call will start
  final bool enabledStartNotification;

  /// True, if the call is active
  final bool isActive;

  /// True, if the chat is an RTMP stream instead of an ordinary video chat
  final bool isRtmpStream;

  /// True, if the call is joined
  final bool isJoined;

  /// True, if user was kicked from the call because of network loss and the call needs to be rejoined
  final bool needRejoin;

  /// True, if the current user can manage the group call
  final bool canBeManaged;

  /// Number of participants in the group call
  final int participantCount;

  /// True, if group call participants, which are muted, aren't returned in participant list
  final bool hasHiddenListeners;

  /// True, if all group call participants are loaded
  final bool loadedAllParticipants;

  /// At most 3 recently speaking users in the group call
  final List<GroupCallRecentSpeaker> recentSpeakers;

  /// True, if the current user's video is enabled
  final bool isMyVideoEnabled;

  /// True, if the current user's video is paused
  final bool isMyVideoPaused;

  /// True, if the current user can broadcast video or share screen
  final bool canEnableVideo;

  /// True, if only group call administrators can unmute new participants
  final bool muteNewParticipants;

  /// True, if the current user can enable or disable mute_new_participants setting
  final bool canToggleMuteNewParticipants;

  /// Duration of the ongoing group call recording, in seconds; 0 if none. An updateGroupCall update is not triggered when value of this field changes, but the same recording goes on
  final int recordDuration;

  /// True, if a video file is being recorded for the call
  final bool isVideoRecorded;

  /// Call duration, in seconds; for ended calls only
  final int duration;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory GroupCall.fromJson(Map<String, dynamic> json) => GroupCall(
    id: json['id'],
    title: json['title'],
    scheduledStartDate: json['scheduled_start_date'],
    enabledStartNotification: json['enabled_start_notification'],
    isActive: json['is_active'],
    isRtmpStream: json['is_rtmp_stream'],
    isJoined: json['is_joined'],
    needRejoin: json['need_rejoin'],
    canBeManaged: json['can_be_managed'],
    participantCount: json['participant_count'],
    hasHiddenListeners: json['has_hidden_listeners'],
    loadedAllParticipants: json['loaded_all_participants'],
    recentSpeakers: List<GroupCallRecentSpeaker>.from((json['recent_speakers'] ?? []).map((item) => GroupCallRecentSpeaker.fromJson(item)).toList()),
    isMyVideoEnabled: json['is_my_video_enabled'],
    isMyVideoPaused: json['is_my_video_paused'],
    canEnableVideo: json['can_enable_video'],
    muteNewParticipants: json['mute_new_participants'],
    canToggleMuteNewParticipants: json['can_toggle_mute_new_participants'],
    recordDuration: json['record_duration'] ?? 0,
    isVideoRecorded: json['is_video_recorded'],
    duration: json['duration'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "title": title,
      "scheduled_start_date": scheduledStartDate,
      "enabled_start_notification": enabledStartNotification,
      "is_active": isActive,
      "is_rtmp_stream": isRtmpStream,
      "is_joined": isJoined,
      "need_rejoin": needRejoin,
      "can_be_managed": canBeManaged,
      "participant_count": participantCount,
      "has_hidden_listeners": hasHiddenListeners,
      "loaded_all_participants": loadedAllParticipants,
      "recent_speakers": recentSpeakers.map((i) => i.toJson()).toList(),
      "is_my_video_enabled": isMyVideoEnabled,
      "is_my_video_paused": isMyVideoPaused,
      "can_enable_video": canEnableVideo,
      "mute_new_participants": muteNewParticipants,
      "can_toggle_mute_new_participants": canToggleMuteNewParticipants,
      "record_duration": recordDuration,
      "is_video_recorded": isVideoRecorded,
      "duration": duration,
		};
	}

  
  GroupCall copyWith({
    int? id,
    String? title,
    int? scheduledStartDate,
    bool? enabledStartNotification,
    bool? isActive,
    bool? isRtmpStream,
    bool? isJoined,
    bool? needRejoin,
    bool? canBeManaged,
    int? participantCount,
    bool? hasHiddenListeners,
    bool? loadedAllParticipants,
    List<GroupCallRecentSpeaker>? recentSpeakers,
    bool? isMyVideoEnabled,
    bool? isMyVideoPaused,
    bool? canEnableVideo,
    bool? muteNewParticipants,
    bool? canToggleMuteNewParticipants,
    int? recordDuration,
    bool? isVideoRecorded,
    int? duration,
    dynamic extra,
    int? clientId,
  }) => GroupCall(
    id: id ?? this.id,
    title: title ?? this.title,
    scheduledStartDate: scheduledStartDate ?? this.scheduledStartDate,
    enabledStartNotification: enabledStartNotification ?? this.enabledStartNotification,
    isActive: isActive ?? this.isActive,
    isRtmpStream: isRtmpStream ?? this.isRtmpStream,
    isJoined: isJoined ?? this.isJoined,
    needRejoin: needRejoin ?? this.needRejoin,
    canBeManaged: canBeManaged ?? this.canBeManaged,
    participantCount: participantCount ?? this.participantCount,
    hasHiddenListeners: hasHiddenListeners ?? this.hasHiddenListeners,
    loadedAllParticipants: loadedAllParticipants ?? this.loadedAllParticipants,
    recentSpeakers: recentSpeakers ?? this.recentSpeakers,
    isMyVideoEnabled: isMyVideoEnabled ?? this.isMyVideoEnabled,
    isMyVideoPaused: isMyVideoPaused ?? this.isMyVideoPaused,
    canEnableVideo: canEnableVideo ?? this.canEnableVideo,
    muteNewParticipants: muteNewParticipants ?? this.muteNewParticipants,
    canToggleMuteNewParticipants: canToggleMuteNewParticipants ?? this.canToggleMuteNewParticipants,
    recordDuration: recordDuration ?? this.recordDuration,
    isVideoRecorded: isVideoRecorded ?? this.isVideoRecorded,
    duration: duration ?? this.duration,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'groupCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
