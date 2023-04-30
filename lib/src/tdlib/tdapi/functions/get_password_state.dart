part of '../tdapi.dart';

/// **GetPasswordState** *(getPasswordState)* - TDLib function
  ///
  /// Returns the current state of 2-step verification.
  ///
  /// [PasswordState] is returned on completion.
class GetPasswordState extends TdFunction {
  
  /// **GetPasswordState** *(getPasswordState)* - TDLib function
  ///
  /// Returns the current state of 2-step verification.
  ///
  /// [PasswordState] is returned on completion.
  const GetPasswordState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetPasswordState copyWith() => const GetPasswordState();

  static const String constructor = 'getPasswordState';
  
  @override
  String getConstructor() => constructor;
}
