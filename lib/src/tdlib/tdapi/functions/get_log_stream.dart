part of '../tdapi.dart';

/// **GetLogStream** *(getLogStream)* - TDLib function
///
/// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously.
///
/// [LogStream] is returned on completion.
final class GetLogStream extends TdFunction {
  
  /// **GetLogStream** *(getLogStream)* - TDLib function
  ///
  /// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously.
  ///
  /// [LogStream] is returned on completion.
  const GetLogStream();
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "@extra": extra,
		};
	}

  
  GetLogStream copyWith() => const GetLogStream();

  static const String objectType = 'getLogStream';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
