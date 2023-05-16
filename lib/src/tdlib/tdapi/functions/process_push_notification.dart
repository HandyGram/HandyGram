part of '../tdapi.dart';

/// **ProcessPushNotification** *(processPushNotification)* - TDLib function
///
/// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization.
///
/// * [payload]: JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added.
///
/// [Ok] is returned on completion.
final class ProcessPushNotification extends TdFunction {
  
  /// **ProcessPushNotification** *(processPushNotification)* - TDLib function
  ///
  /// Handles a push notification. Returns error with code 406 if the push notification is not supported and connection to the server is required to fetch new data. Can be called before authorization.
  ///
  /// * [payload]: JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added.
  ///
  /// [Ok] is returned on completion.
  const ProcessPushNotification({
    required this.payload,
  });
  
  /// JSON-encoded push notification payload with all fields sent by the server, and "google.sent_time" and "google.notification.sound" fields added
  final String payload;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "payload": payload,
      "@extra": extra,
		};
	}

  
  ProcessPushNotification copyWith({
    String? payload,
  }) => ProcessPushNotification(
    payload: payload ?? this.payload,
  );

  static const String objectType = 'processPushNotification';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
