part of '../tdapi.dart';

/// **GetAuthorizationState** *(getAuthorizationState)* - TDLib function
  ///
  /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization.
  ///
  /// [AuthorizationState] is returned on completion.
class GetAuthorizationState extends TdFunction {
  
  /// **GetAuthorizationState** *(getAuthorizationState)* - TDLib function
  ///
  /// Returns the current authorization state; this is an offline request. For informational purposes only. Use updateAuthorizationState instead to maintain the current authorization state. Can be called before initialization.
  ///
  /// [AuthorizationState] is returned on completion.
  const GetAuthorizationState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetAuthorizationState copyWith() => const GetAuthorizationState();

  static const String constructor = 'getAuthorizationState';
  
  @override
  String getConstructor() => constructor;
}
