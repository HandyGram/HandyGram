part of '../tdapi.dart';

/// **DisableProxy** *(disableProxy)* - TDLib function
  ///
  /// Disables the currently enabled proxy. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
class DisableProxy extends TdFunction {
  
  /// **DisableProxy** *(disableProxy)* - TDLib function
  ///
  /// Disables the currently enabled proxy. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
  const DisableProxy();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  DisableProxy copyWith() => const DisableProxy();

  static const String constructor = 'disableProxy';
  
  @override
  String getConstructor() => constructor;
}
