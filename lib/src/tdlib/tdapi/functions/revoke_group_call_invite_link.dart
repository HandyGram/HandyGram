part of '../tdapi.dart';

/// **RevokeGroupCallInviteLink** *(revokeGroupCallInviteLink)* - TDLib function
///
/// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag.
///
/// * [groupCallId]: Group call identifier.
///
/// [Ok] is returned on completion.
final class RevokeGroupCallInviteLink extends TdFunction {
  
  /// **RevokeGroupCallInviteLink** *(revokeGroupCallInviteLink)* - TDLib function
  ///
  /// Revokes invite link for a group call. Requires groupCall.can_be_managed group call flag.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const RevokeGroupCallInviteLink({
    required this.groupCallId,
  });
  
  /// Group call identifier
  final int groupCallId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "@extra": extra,
		};
	}

  
  RevokeGroupCallInviteLink copyWith({
    int? groupCallId,
  }) => RevokeGroupCallInviteLink(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String objectType = 'revokeGroupCallInviteLink';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
