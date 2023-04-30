part of '../tdapi.dart';

/// **TerminateSession** *(terminateSession)* - TDLib function
  ///
  /// Terminates a session of the current user.
  ///
  /// * [sessionId]: Session identifier.
  ///
  /// [Ok] is returned on completion.
class TerminateSession extends TdFunction {
  
  /// **TerminateSession** *(terminateSession)* - TDLib function
  ///
  /// Terminates a session of the current user.
  ///
  /// * [sessionId]: Session identifier.
  ///
  /// [Ok] is returned on completion.
  const TerminateSession({
    required this.sessionId,
  });
  
  /// Session identifier
  final int sessionId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "session_id": sessionId,
      "@extra": extra,
    };
  }
  
  TerminateSession copyWith({
    int? sessionId,
  }) => TerminateSession(
    sessionId: sessionId ?? this.sessionId,
  );

  static const String constructor = 'terminateSession';
  
  @override
  String getConstructor() => constructor;
}
