part of '../tdapi.dart';

/// **GetPassportAuthorizationForm** *(getPassportAuthorizationForm)* - TDLib function
///
/// Returns a Telegram Passport authorization form for sharing data with a service.
///
/// * [botUserId]: User identifier of the service's bot.
/// * [scope]: Telegram Passport element types requested by the service.
/// * [publicKey]: Service's public key.
/// * [nonce]: Unique request identifier provided by the service.
///
/// [PassportAuthorizationForm] is returned on completion.
final class GetPassportAuthorizationForm extends TdFunction {
  
  /// **GetPassportAuthorizationForm** *(getPassportAuthorizationForm)* - TDLib function
  ///
  /// Returns a Telegram Passport authorization form for sharing data with a service.
  ///
  /// * [botUserId]: User identifier of the service's bot.
  /// * [scope]: Telegram Passport element types requested by the service.
  /// * [publicKey]: Service's public key.
  /// * [nonce]: Unique request identifier provided by the service.
  ///
  /// [PassportAuthorizationForm] is returned on completion.
  const GetPassportAuthorizationForm({
    required this.botUserId,
    required this.scope,
    required this.publicKey,
    required this.nonce,
  });
  
  /// User identifier of the service's bot
  final int botUserId;

  /// Telegram Passport element types requested by the service
  final String scope;

  /// Service's public key
  final String publicKey;

  /// Unique request identifier provided by the service
  final String nonce;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "bot_user_id": botUserId,
      "scope": scope,
      "public_key": publicKey,
      "nonce": nonce,
      "@extra": extra,
		};
	}

  
  GetPassportAuthorizationForm copyWith({
    int? botUserId,
    String? scope,
    String? publicKey,
    String? nonce,
  }) => GetPassportAuthorizationForm(
    botUserId: botUserId ?? this.botUserId,
    scope: scope ?? this.scope,
    publicKey: publicKey ?? this.publicKey,
    nonce: nonce ?? this.nonce,
  );

  static const String objectType = 'getPassportAuthorizationForm';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
