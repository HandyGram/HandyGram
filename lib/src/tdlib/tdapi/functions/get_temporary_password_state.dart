part of '../tdapi.dart';

/// **GetTemporaryPasswordState** *(getTemporaryPasswordState)* - TDLib function
  ///
  /// Returns information about the current temporary password.
  ///
  /// [TemporaryPasswordState] is returned on completion.
class GetTemporaryPasswordState extends TdFunction {
  
  /// **GetTemporaryPasswordState** *(getTemporaryPasswordState)* - TDLib function
  ///
  /// Returns information about the current temporary password.
  ///
  /// [TemporaryPasswordState] is returned on completion.
  const GetTemporaryPasswordState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetTemporaryPasswordState copyWith() => const GetTemporaryPasswordState();

  static const String constructor = 'getTemporaryPasswordState';
  
  @override
  String getConstructor() => constructor;
}
