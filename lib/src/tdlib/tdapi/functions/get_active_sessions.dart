part of '../tdapi.dart';

/// **GetActiveSessions** *(getActiveSessions)* - TDLib function
  ///
  /// Returns all active sessions of the current user.
  ///
  /// [Sessions] is returned on completion.
class GetActiveSessions extends TdFunction {
  
  /// **GetActiveSessions** *(getActiveSessions)* - TDLib function
  ///
  /// Returns all active sessions of the current user.
  ///
  /// [Sessions] is returned on completion.
  const GetActiveSessions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetActiveSessions copyWith() => const GetActiveSessions();

  static const String constructor = 'getActiveSessions';
  
  @override
  String getConstructor() => constructor;
}
