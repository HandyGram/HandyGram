part of '../tdapi.dart';

/// **GetLogVerbosityLevel** *(getLogVerbosityLevel)* - TDLib function
  ///
  /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously.
  ///
  /// [LogVerbosityLevel] is returned on completion.
class GetLogVerbosityLevel extends TdFunction {
  
  /// **GetLogVerbosityLevel** *(getLogVerbosityLevel)* - TDLib function
  ///
  /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously.
  ///
  /// [LogVerbosityLevel] is returned on completion.
  const GetLogVerbosityLevel();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetLogVerbosityLevel copyWith() => const GetLogVerbosityLevel();

  static const String constructor = 'getLogVerbosityLevel';
  
  @override
  String getConstructor() => constructor;
}
