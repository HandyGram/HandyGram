part of '../tdapi.dart';

/// **GetAuthorizationState** *(getAuthorizationState)* - TDLib function
///
/// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization.
///
/// [AuthorizationState] is returned on completion.
final class GetAuthorizationState extends TdFunction {
  
  /// **GetAuthorizationState** *(getAuthorizationState)* - TDLib function
  ///
  /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization.
  ///
  /// [AuthorizationState] is returned on completion.
  const GetAuthorizationState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetAuthorizationState copyWith() => const GetAuthorizationState();

  static const String objectType = 'getAuthorizationState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
