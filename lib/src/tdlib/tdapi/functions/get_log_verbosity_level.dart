part of '../tdapi.dart';

/// **GetLogVerbosityLevel** *(getLogVerbosityLevel)* - TDLib function
///
/// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously.
///
/// [LogVerbosityLevel] is returned on completion.
final class GetLogVerbosityLevel extends TdFunction {
  
  /// **GetLogVerbosityLevel** *(getLogVerbosityLevel)* - TDLib function
  ///
  /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously.
  ///
  /// [LogVerbosityLevel] is returned on completion.
  const GetLogVerbosityLevel();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetLogVerbosityLevel copyWith() => const GetLogVerbosityLevel();

  static const String objectType = 'getLogVerbosityLevel';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
