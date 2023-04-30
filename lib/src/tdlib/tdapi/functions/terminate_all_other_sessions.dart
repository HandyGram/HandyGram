part of '../tdapi.dart';

/// **TerminateAllOtherSessions** *(terminateAllOtherSessions)* - TDLib function
  ///
  /// Terminates all other sessions of the current user.
  ///
  /// [Ok] is returned on completion.
class TerminateAllOtherSessions extends TdFunction {
  
  /// **TerminateAllOtherSessions** *(terminateAllOtherSessions)* - TDLib function
  ///
  /// Terminates all other sessions of the current user.
  ///
  /// [Ok] is returned on completion.
  const TerminateAllOtherSessions();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  TerminateAllOtherSessions copyWith() => const TerminateAllOtherSessions();

  static const String constructor = 'terminateAllOtherSessions';
  
  @override
  String getConstructor() => constructor;
}
