part of '../tdapi.dart';

/// **GetGroupCallInviteLink** *(getGroupCallInviteLink)* - TDLib function
///
/// Returns invite link to a video chat in a public chat.
///
/// * [groupCallId]: Group call identifier.
/// * [canSelfUnmute]: Pass true if the invite link needs to contain an invite hash, passing which to joinGroupCall would allow the invited user to unmute themselves. Requires groupCall.can_be_managed group call flag.
///
/// [HttpUrl] is returned on completion.
final class GetGroupCallInviteLink extends TdFunction {
  
  /// **GetGroupCallInviteLink** *(getGroupCallInviteLink)* - TDLib function
  ///
  /// Returns invite link to a video chat in a public chat.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [canSelfUnmute]: Pass true if the invite link needs to contain an invite hash, passing which to joinGroupCall would allow the invited user to unmute themselves. Requires groupCall.can_be_managed group call flag.
  ///
  /// [HttpUrl] is returned on completion.
  const GetGroupCallInviteLink({
    required this.groupCallId,
    required this.canSelfUnmute,
  });
  
  /// Group call identifier
  final int groupCallId;

  /// Pass true if the invite link needs to contain an invite hash, passing which to joinGroupCall would allow the invited user to unmute themselves. Requires groupCall.can_be_managed group call flag
  final bool canSelfUnmute;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "can_self_unmute": canSelfUnmute,
      "@extra": extra,
		};
	}

  
  GetGroupCallInviteLink copyWith({
    int? groupCallId,
    bool? canSelfUnmute,
  }) => GetGroupCallInviteLink(
    groupCallId: groupCallId ?? this.groupCallId,
    canSelfUnmute: canSelfUnmute ?? this.canSelfUnmute,
  );

  static const String objectType = 'getGroupCallInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
