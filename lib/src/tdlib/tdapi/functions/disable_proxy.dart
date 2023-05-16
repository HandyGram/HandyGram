part of '../tdapi.dart';

/// **DisableProxy** *(disableProxy)* - TDLib function
///
/// Disables the currently enabled proxy. Can be called before authorization.
///
/// [Ok] is returned on completion.
final class DisableProxy extends TdFunction {
  
  /// **DisableProxy** *(disableProxy)* - TDLib function
  ///
  /// Disables the currently enabled proxy. Can be called before authorization.
  ///
  /// [Ok] is returned on completion.
  const DisableProxy();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  DisableProxy copyWith() => const DisableProxy();

  static const String objectType = 'disableProxy';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
