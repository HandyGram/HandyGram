part of '../tdapi.dart';

/// **GetPushReceiverId** *(getPushReceiverId)* - TDLib function
///
/// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously.
///
/// * [payload]: JSON-encoded push notification payload.
///
/// [PushReceiverId] is returned on completion.
final class GetPushReceiverId extends TdFunction {
  
  /// **GetPushReceiverId** *(getPushReceiverId)* - TDLib function
  ///
  /// Returns a globally unique push notification subscription identifier for identification of an account, which has received a push notification. Can be called synchronously.
  ///
  /// * [payload]: JSON-encoded push notification payload.
  ///
  /// [PushReceiverId] is returned on completion.
  const GetPushReceiverId({
    required this.payload,
  });
  
  /// JSON-encoded push notification payload
  final String payload;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "payload": payload,
      "@extra": extra,
		};
	}

  
  GetPushReceiverId copyWith({
    String? payload,
  }) => GetPushReceiverId(
    payload: payload ?? this.payload,
  );

  static const String objectType = 'getPushReceiverId';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
