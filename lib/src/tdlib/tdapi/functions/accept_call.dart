part of '../tdapi.dart';

/// **AcceptCall** *(acceptCall)* - TDLib function
  ///
  /// Accepts an incoming call.
  ///
  /// * [callId]: Call identifier.
  /// * [protocol]: The call protocols supported by the application.
  ///
  /// [Ok] is returned on completion.
class AcceptCall extends TdFunction {
  
  /// **AcceptCall** *(acceptCall)* - TDLib function
  ///
  /// Accepts an incoming call.
  ///
  /// * [callId]: Call identifier.
  /// * [protocol]: The call protocols supported by the application.
  ///
  /// [Ok] is returned on completion.
  const AcceptCall({
    required this.callId,
    required this.protocol,
  });
  
  /// Call identifier 
  final int callId;

  /// The call protocols supported by the application
  final CallProtocol protocol;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "call_id": callId,
      "protocol": protocol.toJson(),
      "@extra": extra,
    };
  }
  
  AcceptCall copyWith({
    int? callId,
    CallProtocol? protocol,
  }) => AcceptCall(
    callId: callId ?? this.callId,
    protocol: protocol ?? this.protocol,
  );

  static const String constructor = 'acceptCall';
  
  @override
  String getConstructor() => constructor;
}
