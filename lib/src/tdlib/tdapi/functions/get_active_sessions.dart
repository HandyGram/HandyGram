part of '../tdapi.dart';

/// **GetActiveSessions** *(getActiveSessions)* - TDLib function
///
/// Returns all active sessions of the current user.
///
/// [Sessions] is returned on completion.
final class GetActiveSessions extends TdFunction {
  
  /// **GetActiveSessions** *(getActiveSessions)* - TDLib function
  ///
  /// Returns all active sessions of the current user.
  ///
  /// [Sessions] is returned on completion.
  const GetActiveSessions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetActiveSessions copyWith() => const GetActiveSessions();

  static const String objectType = 'getActiveSessions';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
