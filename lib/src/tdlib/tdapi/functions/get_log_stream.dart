part of '../tdapi.dart';

/// **GetLogStream** *(getLogStream)* - TDLib function
  ///
  /// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously.
  ///
  /// [LogStream] is returned on completion.
class GetLogStream extends TdFunction {
  
  /// **GetLogStream** *(getLogStream)* - TDLib function
  ///
  /// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously.
  ///
  /// [LogStream] is returned on completion.
  const GetLogStream();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "@extra": extra,
    };
  }
  
  GetLogStream copyWith() => const GetLogStream();

  static const String constructor = 'getLogStream';
  
  @override
  String getConstructor() => constructor;
}
