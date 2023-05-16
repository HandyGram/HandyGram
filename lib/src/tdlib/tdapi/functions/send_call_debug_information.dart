part of '../tdapi.dart';

/// **SendCallDebugInformation** *(sendCallDebugInformation)* - TDLib function
///
/// Sends debug information for a call to Telegram servers.
///
/// * [callId]: Call identifier.
/// * [debugInformation]: Debug information in application-specific format.
///
/// [Ok] is returned on completion.
final class SendCallDebugInformation extends TdFunction {
  
  /// **SendCallDebugInformation** *(sendCallDebugInformation)* - TDLib function
  ///
  /// Sends debug information for a call to Telegram servers.
  ///
  /// * [callId]: Call identifier.
  /// * [debugInformation]: Debug information in application-specific format.
  ///
  /// [Ok] is returned on completion.
  const SendCallDebugInformation({
    required this.callId,
    required this.debugInformation,
  });
  
  /// Call identifier 
  final int callId;

  /// Debug information in application-specific format
  final String debugInformation;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "call_id": callId,
      "debug_information": debugInformation,
      "@extra": extra,
		};
	}

  
  SendCallDebugInformation copyWith({
    int? callId,
    String? debugInformation,
  }) => SendCallDebugInformation(
    callId: callId ?? this.callId,
    debugInformation: debugInformation ?? this.debugInformation,
  );

  static const String objectType = 'sendCallDebugInformation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
