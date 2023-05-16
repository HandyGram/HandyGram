part of '../tdapi.dart';

/// **SetLogStream** *(setLogStream)* - TDLib function
///
/// Sets new log stream for internal logging of TDLib. Can be called synchronously.
///
/// * [logStream]: New log stream.
///
/// [Ok] is returned on completion.
final class SetLogStream extends TdFunction {
  
  /// **SetLogStream** *(setLogStream)* - TDLib function
  ///
  /// Sets new log stream for internal logging of TDLib. Can be called synchronously.
  ///
  /// * [logStream]: New log stream.
  ///
  /// [Ok] is returned on completion.
  const SetLogStream({
    required this.logStream,
  });
  
  /// New log stream
  final LogStream logStream;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "log_stream": logStream.toJson(),
      "@extra": extra,
		};
	}

  
  SetLogStream copyWith({
    LogStream? logStream,
  }) => SetLogStream(
    logStream: logStream ?? this.logStream,
  );

  static const String objectType = 'setLogStream';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
