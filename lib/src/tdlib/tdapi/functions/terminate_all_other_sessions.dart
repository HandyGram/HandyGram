part of '../tdapi.dart';

/// **TerminateAllOtherSessions** *(terminateAllOtherSessions)* - TDLib function
///
/// Terminates all other sessions of the current user.
///
/// [Ok] is returned on completion.
final class TerminateAllOtherSessions extends TdFunction {
  
  /// **TerminateAllOtherSessions** *(terminateAllOtherSessions)* - TDLib function
  ///
  /// Terminates all other sessions of the current user.
  ///
  /// [Ok] is returned on completion.
  const TerminateAllOtherSessions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  TerminateAllOtherSessions copyWith() => const TerminateAllOtherSessions();

  static const String objectType = 'terminateAllOtherSessions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
