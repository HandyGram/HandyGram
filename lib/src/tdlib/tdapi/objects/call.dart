part of '../tdapi.dart';

/// **Call** *(call)* - basic class
///
/// Describes a call.
///
/// * [id]: Call identifier, not persistent.
/// * [userId]: Peer user identifier.
/// * [isOutgoing]: True, if the call is outgoing.
/// * [isVideo]: True, if the call is a video call.
/// * [state]: Call state.
final class Call extends TdObject {
  
  /// **Call** *(call)* - basic class
  ///
  /// Describes a call.
  ///
  /// * [id]: Call identifier, not persistent.
  /// * [userId]: Peer user identifier.
  /// * [isOutgoing]: True, if the call is outgoing.
  /// * [isVideo]: True, if the call is a video call.
  /// * [state]: Call state.
  const Call({
    required this.id,
    required this.userId,
    required this.isOutgoing,
    required this.isVideo,
    required this.state,
  });
  
  /// Call identifier, not persistent
  final int id;

  /// Peer user identifier
  final int userId;

  /// True, if the call is outgoing
  final bool isOutgoing;

  /// True, if the call is a video call
  final bool isVideo;

  /// Call state
  final CallState state;
  
  /// Parse from a json
  factory Call.fromJson(Map<String, dynamic> json) => Call(
    id: json['id'],
    userId: json['user_id'],
    isOutgoing: json['is_outgoing'],
    isVideo: json['is_video'],
    state: CallState.fromJson(json['state']),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "id": id,
      "user_id": userId,
      "is_outgoing": isOutgoing,
      "is_video": isVideo,
      "state": state.toJson(),
		};
	}

  
  Call copyWith({
    int? id,
    int? userId,
    bool? isOutgoing,
    bool? isVideo,
    CallState? state,
  }) => Call(
    id: id ?? this.id,
    userId: userId ?? this.userId,
    isOutgoing: isOutgoing ?? this.isOutgoing,
    isVideo: isVideo ?? this.isVideo,
    state: state ?? this.state,
  );

  static const String objectType = 'call';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
