part of '../tdapi.dart';

/// **RegisterDevice** *(registerDevice)* - TDLib function
///
/// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription.
///
/// * [deviceToken]: Device token.
/// * [otherUserIds]: List of user identifiers of other users currently using the application.
///
/// [PushReceiverId] is returned on completion.
final class RegisterDevice extends TdFunction {
  
  /// **RegisterDevice** *(registerDevice)* - TDLib function
  ///
  /// Registers the currently used device for receiving push notifications. Returns a globally unique identifier of the push notification subscription.
  ///
  /// * [deviceToken]: Device token.
  /// * [otherUserIds]: List of user identifiers of other users currently using the application.
  ///
  /// [PushReceiverId] is returned on completion.
  const RegisterDevice({
    required this.deviceToken,
    required this.otherUserIds,
  });
  
  /// Device token 
  final DeviceToken deviceToken;

  /// List of user identifiers of other users currently using the application
  final List<int> otherUserIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "device_token": deviceToken.toJson(),
      "other_user_ids": otherUserIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  RegisterDevice copyWith({
    DeviceToken? deviceToken,
    List<int>? otherUserIds,
  }) => RegisterDevice(
    deviceToken: deviceToken ?? this.deviceToken,
    otherUserIds: otherUserIds ?? this.otherUserIds,
  );

  static const String objectType = 'registerDevice';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
