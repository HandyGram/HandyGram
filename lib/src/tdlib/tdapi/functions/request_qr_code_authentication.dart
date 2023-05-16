part of '../tdapi.dart';

/// **RequestQrCodeAuthentication** *(requestQrCodeAuthentication)* - TDLib function
///
/// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitEmailAddress, authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword.
///
/// * [otherUserIds]: List of user identifiers of other users currently using the application.
///
/// [Ok] is returned on completion.
final class RequestQrCodeAuthentication extends TdFunction {
  
  /// **RequestQrCodeAuthentication** *(requestQrCodeAuthentication)* - TDLib function
  ///
  /// Requests QR code authentication by scanning a QR code on another logged in device. Works only when the current authorization state is authorizationStateWaitPhoneNumber,. or if there is no pending authentication query and the current authorization state is authorizationStateWaitEmailAddress, authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or authorizationStateWaitPassword.
  ///
  /// * [otherUserIds]: List of user identifiers of other users currently using the application.
  ///
  /// [Ok] is returned on completion.
  const RequestQrCodeAuthentication({
    required this.otherUserIds,
  });
  
  /// List of user identifiers of other users currently using the application
  final List<int> otherUserIds;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "other_user_ids": otherUserIds.map((i) => i).toList(),
      "@extra": extra,
		};
	}

  
  RequestQrCodeAuthentication copyWith({
    List<int>? otherUserIds,
  }) => RequestQrCodeAuthentication(
    otherUserIds: otherUserIds ?? this.otherUserIds,
  );

  static const String objectType = 'requestQrCodeAuthentication';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
