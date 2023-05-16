part of '../tdapi.dart';

/// **TerminateSession** *(terminateSession)* - TDLib function
///
/// Terminates a session of the current user.
///
/// * [sessionId]: Session identifier.
///
/// [Ok] is returned on completion.
final class TerminateSession extends TdFunction {
  
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
			"@type": objectType,
      "session_id": sessionId,
      "@extra": extra,
		};
	}

  
  TerminateSession copyWith({
    int? sessionId,
  }) => TerminateSession(
    sessionId: sessionId ?? this.sessionId,
  );

  static const String objectType = 'terminateSession';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
