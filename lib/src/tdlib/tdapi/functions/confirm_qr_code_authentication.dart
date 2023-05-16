part of '../tdapi.dart';

/// **ConfirmQrCodeAuthentication** *(confirmQrCodeAuthentication)* - TDLib function
///
/// Confirms QR code authentication on another device. Returns created session on success.
///
/// * [link]: A link from a QR code. The link must be scanned by the in-app camera.
///
/// [Session] is returned on completion.
final class ConfirmQrCodeAuthentication extends TdFunction {
  
  /// **ConfirmQrCodeAuthentication** *(confirmQrCodeAuthentication)* - TDLib function
  ///
  /// Confirms QR code authentication on another device. Returns created session on success.
  ///
  /// * [link]: A link from a QR code. The link must be scanned by the in-app camera.
  ///
  /// [Session] is returned on completion.
  const ConfirmQrCodeAuthentication({
    required this.link,
  });
  
  /// A link from a QR code. The link must be scanned by the in-app camera
  final String link;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "link": link,
      "@extra": extra,
		};
	}

  
  ConfirmQrCodeAuthentication copyWith({
    String? link,
  }) => ConfirmQrCodeAuthentication(
    link: link ?? this.link,
  );

  static const String objectType = 'confirmQrCodeAuthentication';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
