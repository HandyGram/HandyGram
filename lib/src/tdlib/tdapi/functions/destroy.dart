part of '../tdapi.dart';

/// **Destroy** *(destroy)* - TDLib function
  ///
  /// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed.. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
class Destroy extends TdFunction {
  
  /// **Destroy** *(destroy)* - TDLib function
  ///
  /// Closes the TDLib instance, destroying all local data without a proper logout. The current user session will remain in the list of all active sessions. All local data will be destroyed.. After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
  const Destroy();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  Destroy copyWith() => const Destroy();

  static const String constructor = 'destroy';
  
  @override
  String getConstructor() => constructor;
}
