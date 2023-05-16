part of '../tdapi.dart';

/// **SendCallLog** *(sendCallLog)* - TDLib function
///
/// Sends log file for a call to Telegram servers.
///
/// * [callId]: Call identifier.
/// * [logFile]: Call log file. Only inputFileLocal and inputFileGenerated are supported.
///
/// [Ok] is returned on completion.
final class SendCallLog extends TdFunction {
  
  /// **SendCallLog** *(sendCallLog)* - TDLib function
  ///
  /// Sends log file for a call to Telegram servers.
  ///
  /// * [callId]: Call identifier.
  /// * [logFile]: Call log file. Only inputFileLocal and inputFileGenerated are supported.
  ///
  /// [Ok] is returned on completion.
  const SendCallLog({
    required this.callId,
    required this.logFile,
  });
  
  /// Call identifier 
  final int callId;

  /// Call log file. Only inputFileLocal and inputFileGenerated are supported
  final InputFile logFile;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "call_id": callId,
      "log_file": logFile.toJson(),
      "@extra": extra,
		};
	}

  
  SendCallLog copyWith({
    int? callId,
    InputFile? logFile,
  }) => SendCallLog(
    callId: callId ?? this.callId,
    logFile: logFile ?? this.logFile,
  );

  static const String objectType = 'sendCallLog';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
