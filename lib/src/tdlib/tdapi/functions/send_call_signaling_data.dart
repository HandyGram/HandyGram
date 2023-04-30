part of '../tdapi.dart';

/// **SendCallSignalingData** *(sendCallSignalingData)* - TDLib function
  ///
  /// Sends call signaling data.
  ///
  /// * [callId]: Call identifier.
  /// * [data]: The data.
  ///
  /// [Ok] is returned on completion.
class SendCallSignalingData extends TdFunction {
  
  /// **SendCallSignalingData** *(sendCallSignalingData)* - TDLib function
  ///
  /// Sends call signaling data.
  ///
  /// * [callId]: Call identifier.
  /// * [data]: The data.
  ///
  /// [Ok] is returned on completion.
  const SendCallSignalingData({
    required this.callId,
    required this.data,
  });
  
  /// Call identifier 
  final int callId;

  /// The data
  final String data;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "call_id": callId,
      "data": data,
      "@extra": extra,
    };
  }
  
  SendCallSignalingData copyWith({
    int? callId,
    String? data,
  }) => SendCallSignalingData(
    callId: callId ?? this.callId,
    data: data ?? this.data,
  );

  static const String constructor = 'sendCallSignalingData';
  
  @override
  String getConstructor() => constructor;
}
