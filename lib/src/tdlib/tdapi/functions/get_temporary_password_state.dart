part of '../tdapi.dart';

/// **GetTemporaryPasswordState** *(getTemporaryPasswordState)* - TDLib function
///
/// Returns information about the current temporary password.
///
/// [TemporaryPasswordState] is returned on completion.
final class GetTemporaryPasswordState extends TdFunction {
  
  /// **GetTemporaryPasswordState** *(getTemporaryPasswordState)* - TDLib function
  ///
  /// Returns information about the current temporary password.
  ///
  /// [TemporaryPasswordState] is returned on completion.
  const GetTemporaryPasswordState();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetTemporaryPasswordState copyWith() => const GetTemporaryPasswordState();

  static const String objectType = 'getTemporaryPasswordState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
