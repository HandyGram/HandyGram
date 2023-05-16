part of '../tdapi.dart';

/// **ToggleSessionCanAcceptCalls** *(toggleSessionCanAcceptCalls)* - TDLib function
///
/// Toggles whether a session can accept incoming calls.
///
/// * [sessionId]: Session identifier.
/// * [canAcceptCalls]: Pass true to allow accepting incoming calls by the session; pass false otherwise.
///
/// [Ok] is returned on completion.
final class ToggleSessionCanAcceptCalls extends TdFunction {
  
  /// **ToggleSessionCanAcceptCalls** *(toggleSessionCanAcceptCalls)* - TDLib function
  ///
  /// Toggles whether a session can accept incoming calls.
  ///
  /// * [sessionId]: Session identifier.
  /// * [canAcceptCalls]: Pass true to allow accepting incoming calls by the session; pass false otherwise.
  ///
  /// [Ok] is returned on completion.
  const ToggleSessionCanAcceptCalls({
    required this.sessionId,
    required this.canAcceptCalls,
  });
  
  /// Session identifier 
  final int sessionId;

  /// Pass true to allow accepting incoming calls by the session; pass false otherwise
  final bool canAcceptCalls;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "session_id": sessionId,
      "can_accept_calls": canAcceptCalls,
      "@extra": extra,
		};
	}

  
  ToggleSessionCanAcceptCalls copyWith({
    int? sessionId,
    bool? canAcceptCalls,
  }) => ToggleSessionCanAcceptCalls(
    sessionId: sessionId ?? this.sessionId,
    canAcceptCalls: canAcceptCalls ?? this.canAcceptCalls,
  );

  static const String objectType = 'toggleSessionCanAcceptCalls';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
