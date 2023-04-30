part of '../tdapi.dart';

/// **EndGroupCallRecording** *(endGroupCallRecording)* - TDLib function
  ///
  /// Ends recording of an active group call. Requires groupCall.can_be_managed group call flag.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
class EndGroupCallRecording extends TdFunction {
  
  /// **EndGroupCallRecording** *(endGroupCallRecording)* - TDLib function
  ///
  /// Ends recording of an active group call. Requires groupCall.can_be_managed group call flag.
  ///
  /// * [groupCallId]: Group call identifier.
  ///
  /// [Ok] is returned on completion.
  const EndGroupCallRecording({
    required this.groupCallId,
  });
  
  /// Group call identifier
  final int groupCallId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "group_call_id": groupCallId,
      "@extra": extra,
    };
  }
  
  EndGroupCallRecording copyWith({
    int? groupCallId,
  }) => EndGroupCallRecording(
    groupCallId: groupCallId ?? this.groupCallId,
  );

  static const String constructor = 'endGroupCallRecording';
  
  @override
  String getConstructor() => constructor;
}
