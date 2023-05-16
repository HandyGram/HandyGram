part of '../tdapi.dart';

/// **SetGroupCallTitle** *(setGroupCallTitle)* - TDLib function
///
/// Sets group call title. Requires groupCall.can_be_managed group call flag.
///
/// * [groupCallId]: Group call identifier.
/// * [title]: New group call title; 1-64 characters.
///
/// [Ok] is returned on completion.
final class SetGroupCallTitle extends TdFunction {
  
  /// **SetGroupCallTitle** *(setGroupCallTitle)* - TDLib function
  ///
  /// Sets group call title. Requires groupCall.can_be_managed group call flag.
  ///
  /// * [groupCallId]: Group call identifier.
  /// * [title]: New group call title; 1-64 characters.
  ///
  /// [Ok] is returned on completion.
  const SetGroupCallTitle({
    required this.groupCallId,
    required this.title,
  });
  
  /// Group call identifier 
  final int groupCallId;

  /// New group call title; 1-64 characters
  final String title;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "group_call_id": groupCallId,
      "title": title,
      "@extra": extra,
		};
	}

  
  SetGroupCallTitle copyWith({
    int? groupCallId,
    String? title,
  }) => SetGroupCallTitle(
    groupCallId: groupCallId ?? this.groupCallId,
    title: title ?? this.title,
  );

  static const String objectType = 'setGroupCallTitle';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
