part of '../tdapi.dart';

/// **PasswordState** *(passwordState)* - basic class
///
/// Represents the current state of 2-step verification.
///
/// * [hasPassword]: True, if a 2-step verification password is set.
/// * [passwordHint]: Hint for the password; may be empty.
/// * [hasRecoveryEmailAddress]: True, if a recovery email is set.
/// * [hasPassportData]: True, if some Telegram Passport elements were saved.
/// * [recoveryEmailAddressCodeInfo]: Information about the recovery email address to which the confirmation email was sent; may be null *(optional)*.
/// * [loginEmailAddressPattern]: Pattern of the email address set up for logging in.
/// * [pendingResetDate]: If not 0, point in time (Unix timestamp) after which the 2-step verification password can be reset immediately using resetPassword.
final class PasswordState extends TdObject {
  
  /// **PasswordState** *(passwordState)* - basic class
  ///
  /// Represents the current state of 2-step verification.
  ///
  /// * [hasPassword]: True, if a 2-step verification password is set.
  /// * [passwordHint]: Hint for the password; may be empty.
  /// * [hasRecoveryEmailAddress]: True, if a recovery email is set.
  /// * [hasPassportData]: True, if some Telegram Passport elements were saved.
  /// * [recoveryEmailAddressCodeInfo]: Information about the recovery email address to which the confirmation email was sent; may be null *(optional)*.
  /// * [loginEmailAddressPattern]: Pattern of the email address set up for logging in.
  /// * [pendingResetDate]: If not 0, point in time (Unix timestamp) after which the 2-step verification password can be reset immediately using resetPassword.
  const PasswordState({
    required this.hasPassword,
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.hasPassportData,
    this.recoveryEmailAddressCodeInfo,
    required this.loginEmailAddressPattern,
    required this.pendingResetDate,
    this.extra,
    this.clientId,
  });
  
  /// True, if a 2-step verification password is set
  final bool hasPassword;

  /// Hint for the password; may be empty
  final String passwordHint;

  /// True, if a recovery email is set
  final bool hasRecoveryEmailAddress;

  /// True, if some Telegram Passport elements were saved
  final bool hasPassportData;

  /// Information about the recovery email address to which the confirmation email was sent; may be null
  final EmailAddressAuthenticationCodeInfo? recoveryEmailAddressCodeInfo;

  /// Pattern of the email address set up for logging in
  final String loginEmailAddressPattern;

  /// If not 0, point in time (Unix timestamp) after which the 2-step verification password can be reset immediately using resetPassword
  final int pendingResetDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PasswordState.fromJson(Map<String, dynamic> json) => PasswordState(
    hasPassword: json['has_password'],
    passwordHint: json['password_hint'],
    hasRecoveryEmailAddress: json['has_recovery_email_address'],
    hasPassportData: json['has_passport_data'],
    recoveryEmailAddressCodeInfo: json['recovery_email_address_code_info'] == null ? null : EmailAddressAuthenticationCodeInfo.fromJson(json['recovery_email_address_code_info']),
    loginEmailAddressPattern: json['login_email_address_pattern'],
    pendingResetDate: json['pending_reset_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "has_password": hasPassword,
      "password_hint": passwordHint,
      "has_recovery_email_address": hasRecoveryEmailAddress,
      "has_passport_data": hasPassportData,
      "recovery_email_address_code_info": recoveryEmailAddressCodeInfo?.toJson(),
      "login_email_address_pattern": loginEmailAddressPattern,
      "pending_reset_date": pendingResetDate,
		};
	}

  
  PasswordState copyWith({
    bool? hasPassword,
    String? passwordHint,
    bool? hasRecoveryEmailAddress,
    bool? hasPassportData,
    EmailAddressAuthenticationCodeInfo? recoveryEmailAddressCodeInfo,
    String? loginEmailAddressPattern,
    int? pendingResetDate,
    dynamic extra,
    int? clientId,
  }) => PasswordState(
    hasPassword: hasPassword ?? this.hasPassword,
    passwordHint: passwordHint ?? this.passwordHint,
    hasRecoveryEmailAddress: hasRecoveryEmailAddress ?? this.hasRecoveryEmailAddress,
    hasPassportData: hasPassportData ?? this.hasPassportData,
    recoveryEmailAddressCodeInfo: recoveryEmailAddressCodeInfo ?? this.recoveryEmailAddressCodeInfo,
    loginEmailAddressPattern: loginEmailAddressPattern ?? this.loginEmailAddressPattern,
    pendingResetDate: pendingResetDate ?? this.pendingResetDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'passwordState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
