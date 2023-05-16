part of '../tdapi.dart';

/// **AuthorizationState** *(authorizationState)* - parent
///
/// Represents the current authorization state of the TDLib client.
sealed class AuthorizationState extends TdObject {
  
  /// **AuthorizationState** *(authorizationState)* - parent
  ///
  /// Represents the current authorization state of the TDLib client.
  const AuthorizationState();
  
  /// a AuthorizationState return type can be :
  /// * [AuthorizationStateWaitTdlibParameters]
  /// * [AuthorizationStateWaitPhoneNumber]
  /// * [AuthorizationStateWaitEmailAddress]
  /// * [AuthorizationStateWaitEmailCode]
  /// * [AuthorizationStateWaitCode]
  /// * [AuthorizationStateWaitOtherDeviceConfirmation]
  /// * [AuthorizationStateWaitRegistration]
  /// * [AuthorizationStateWaitPassword]
  /// * [AuthorizationStateReady]
  /// * [AuthorizationStateLoggingOut]
  /// * [AuthorizationStateClosing]
  /// * [AuthorizationStateClosed]
  factory AuthorizationState.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case AuthorizationStateWaitTdlibParameters.objectType:
        return AuthorizationStateWaitTdlibParameters.fromJson(json);
      case AuthorizationStateWaitPhoneNumber.objectType:
        return AuthorizationStateWaitPhoneNumber.fromJson(json);
      case AuthorizationStateWaitEmailAddress.objectType:
        return AuthorizationStateWaitEmailAddress.fromJson(json);
      case AuthorizationStateWaitEmailCode.objectType:
        return AuthorizationStateWaitEmailCode.fromJson(json);
      case AuthorizationStateWaitCode.objectType:
        return AuthorizationStateWaitCode.fromJson(json);
      case AuthorizationStateWaitOtherDeviceConfirmation.objectType:
        return AuthorizationStateWaitOtherDeviceConfirmation.fromJson(json);
      case AuthorizationStateWaitRegistration.objectType:
        return AuthorizationStateWaitRegistration.fromJson(json);
      case AuthorizationStateWaitPassword.objectType:
        return AuthorizationStateWaitPassword.fromJson(json);
      case AuthorizationStateReady.objectType:
        return AuthorizationStateReady.fromJson(json);
      case AuthorizationStateLoggingOut.objectType:
        return AuthorizationStateLoggingOut.fromJson(json);
      case AuthorizationStateClosing.objectType:
        return AuthorizationStateClosing.fromJson(json);
      case AuthorizationStateClosed.objectType:
        return AuthorizationStateClosed.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of AuthorizationState)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  AuthorizationState copyWith();

  static const String objectType = 'authorizationState';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitTdlibParameters** *(authorizationStateWaitTdlibParameters)* - child of AuthorizationState
///
/// Initializetion parameters are needed. Call setTdlibParameters to provide them.
final class AuthorizationStateWaitTdlibParameters extends AuthorizationState {
  
  /// **AuthorizationStateWaitTdlibParameters** *(authorizationStateWaitTdlibParameters)* - child of AuthorizationState
  ///
  /// Initializetion parameters are needed. Call setTdlibParameters to provide them.
  const AuthorizationStateWaitTdlibParameters({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitTdlibParameters.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitTdlibParameters(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AuthorizationStateWaitTdlibParameters copyWith({
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitTdlibParameters(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitTdlibParameters';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitPhoneNumber** *(authorizationStateWaitPhoneNumber)* - child of AuthorizationState
///
/// TDLib needs the user's phone number to authorize. Call setAuthenticationPhoneNumber to provide the phone number, or use requestQrCodeAuthentication or checkAuthenticationBotToken for other authentication options.
final class AuthorizationStateWaitPhoneNumber extends AuthorizationState {
  
  /// **AuthorizationStateWaitPhoneNumber** *(authorizationStateWaitPhoneNumber)* - child of AuthorizationState
  ///
  /// TDLib needs the user's phone number to authorize. Call setAuthenticationPhoneNumber to provide the phone number, or use requestQrCodeAuthentication or checkAuthenticationBotToken for other authentication options.
  const AuthorizationStateWaitPhoneNumber({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitPhoneNumber.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitPhoneNumber(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AuthorizationStateWaitPhoneNumber copyWith({
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitPhoneNumber(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitEmailAddress** *(authorizationStateWaitEmailAddress)* - child of AuthorizationState
///
/// TDLib needs the user's email address to authorize. Call setAuthenticationEmailAddress to provide the email address, or directly call checkAuthenticationEmailCode with Apple authorizationStateWaitEmailAddress/Google authorizationStateWaitEmailAddress token if allowed.
///
/// * [allowAppleId]: True, if authorization through Apple authorizationStateWaitEmailAddress is allowed.
/// * [allowGoogleId]: True, if authorization through Google authorizationStateWaitEmailAddress is allowed.
final class AuthorizationStateWaitEmailAddress extends AuthorizationState {
  
  /// **AuthorizationStateWaitEmailAddress** *(authorizationStateWaitEmailAddress)* - child of AuthorizationState
  ///
  /// TDLib needs the user's email address to authorize. Call setAuthenticationEmailAddress to provide the email address, or directly call checkAuthenticationEmailCode with Apple authorizationStateWaitEmailAddress/Google authorizationStateWaitEmailAddress token if allowed.
  ///
  /// * [allowAppleId]: True, if authorization through Apple authorizationStateWaitEmailAddress is allowed.
  /// * [allowGoogleId]: True, if authorization through Google authorizationStateWaitEmailAddress is allowed.
  const AuthorizationStateWaitEmailAddress({
    required this.allowAppleId,
    required this.allowGoogleId,
    this.extra,
    this.clientId,
  });
  
  /// True, if authorization through Apple authorizationStateWaitEmailAddress is allowed
  final bool allowAppleId;

  /// True, if authorization through Google authorizationStateWaitEmailAddress is allowed
  final bool allowGoogleId;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitEmailAddress.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitEmailAddress(
    allowAppleId: json['allow_apple_id'],
    allowGoogleId: json['allow_google_id'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "allow_apple_id": allowAppleId,
      "allow_google_id": allowGoogleId,
		};
	}

  
  @override
  AuthorizationStateWaitEmailAddress copyWith({
    bool? allowAppleId,
    bool? allowGoogleId,
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitEmailAddress(
    allowAppleId: allowAppleId ?? this.allowAppleId,
    allowGoogleId: allowGoogleId ?? this.allowGoogleId,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitEmailCode** *(authorizationStateWaitEmailCode)* - child of AuthorizationState
///
/// TDLib needs the user's authentication code sent to an email address to authorize. Call checkAuthenticationEmailCode to provide the code.
///
/// * [allowAppleId]: True, if authorization through Apple authorizationStateWaitEmailCode is allowed.
/// * [allowGoogleId]: True, if authorization through Google authorizationStateWaitEmailCode is allowed.
/// * [codeInfo]: Information about the sent authentication code.
/// * [nextPhoneNumberAuthorizationDate]: Point in time (Unix timestamp) when the user will be able to authorize with a code sent to the user's phone number; 0 if unknown.
final class AuthorizationStateWaitEmailCode extends AuthorizationState {
  
  /// **AuthorizationStateWaitEmailCode** *(authorizationStateWaitEmailCode)* - child of AuthorizationState
  ///
  /// TDLib needs the user's authentication code sent to an email address to authorize. Call checkAuthenticationEmailCode to provide the code.
  ///
  /// * [allowAppleId]: True, if authorization through Apple authorizationStateWaitEmailCode is allowed.
  /// * [allowGoogleId]: True, if authorization through Google authorizationStateWaitEmailCode is allowed.
  /// * [codeInfo]: Information about the sent authentication code.
  /// * [nextPhoneNumberAuthorizationDate]: Point in time (Unix timestamp) when the user will be able to authorize with a code sent to the user's phone number; 0 if unknown.
  const AuthorizationStateWaitEmailCode({
    required this.allowAppleId,
    required this.allowGoogleId,
    required this.codeInfo,
    required this.nextPhoneNumberAuthorizationDate,
    this.extra,
    this.clientId,
  });
  
  /// True, if authorization through Apple authorizationStateWaitEmailCode is allowed
  final bool allowAppleId;

  /// True, if authorization through Google authorizationStateWaitEmailCode is allowed
  final bool allowGoogleId;

  /// Information about the sent authentication code
  final EmailAddressAuthenticationCodeInfo codeInfo;

  /// Point in time (Unix timestamp) when the user will be able to authorize with a code sent to the user's phone number; 0 if unknown
  final int nextPhoneNumberAuthorizationDate;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitEmailCode.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitEmailCode(
    allowAppleId: json['allow_apple_id'],
    allowGoogleId: json['allow_google_id'],
    codeInfo: EmailAddressAuthenticationCodeInfo.fromJson(json['code_info']),
    nextPhoneNumberAuthorizationDate: json['next_phone_number_authorization_date'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "allow_apple_id": allowAppleId,
      "allow_google_id": allowGoogleId,
      "code_info": codeInfo.toJson(),
      "next_phone_number_authorization_date": nextPhoneNumberAuthorizationDate,
		};
	}

  
  @override
  AuthorizationStateWaitEmailCode copyWith({
    bool? allowAppleId,
    bool? allowGoogleId,
    EmailAddressAuthenticationCodeInfo? codeInfo,
    int? nextPhoneNumberAuthorizationDate,
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitEmailCode(
    allowAppleId: allowAppleId ?? this.allowAppleId,
    allowGoogleId: allowGoogleId ?? this.allowGoogleId,
    codeInfo: codeInfo ?? this.codeInfo,
    nextPhoneNumberAuthorizationDate: nextPhoneNumberAuthorizationDate ?? this.nextPhoneNumberAuthorizationDate,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitEmailCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitCode** *(authorizationStateWaitCode)* - child of AuthorizationState
///
/// TDLib needs the user's authentication code to authorize. Call checkAuthenticationCode to check the code.
///
/// * [codeInfo]: Information about the authorization code that was sent.
final class AuthorizationStateWaitCode extends AuthorizationState {
  
  /// **AuthorizationStateWaitCode** *(authorizationStateWaitCode)* - child of AuthorizationState
  ///
  /// TDLib needs the user's authentication code to authorize. Call checkAuthenticationCode to check the code.
  ///
  /// * [codeInfo]: Information about the authorization code that was sent.
  const AuthorizationStateWaitCode({
    required this.codeInfo,
    this.extra,
    this.clientId,
  });
  
  /// Information about the authorization code that was sent
  final AuthenticationCodeInfo codeInfo;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitCode.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitCode(
    codeInfo: AuthenticationCodeInfo.fromJson(json['code_info']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "code_info": codeInfo.toJson(),
		};
	}

  
  @override
  AuthorizationStateWaitCode copyWith({
    AuthenticationCodeInfo? codeInfo,
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitCode(
    codeInfo: codeInfo ?? this.codeInfo,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitCode';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitOtherDeviceConfirmation** *(authorizationStateWaitOtherDeviceConfirmation)* - child of AuthorizationState
///
/// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link.
///
/// * [link]: A tg:// URL for the QR code. The link will be updated frequently.
final class AuthorizationStateWaitOtherDeviceConfirmation extends AuthorizationState {
  
  /// **AuthorizationStateWaitOtherDeviceConfirmation** *(authorizationStateWaitOtherDeviceConfirmation)* - child of AuthorizationState
  ///
  /// The user needs to confirm authorization on another logged in device by scanning a QR code with the provided link.
  ///
  /// * [link]: A tg:// URL for the QR code. The link will be updated frequently.
  const AuthorizationStateWaitOtherDeviceConfirmation({
    required this.link,
    this.extra,
    this.clientId,
  });
  
  /// A tg:// URL for the QR code. The link will be updated frequently
  final String link;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitOtherDeviceConfirmation.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitOtherDeviceConfirmation(
    link: json['link'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "link": link,
		};
	}

  
  @override
  AuthorizationStateWaitOtherDeviceConfirmation copyWith({
    String? link,
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitOtherDeviceConfirmation(
    link: link ?? this.link,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitOtherDeviceConfirmation';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitRegistration** *(authorizationStateWaitRegistration)* - child of AuthorizationState
///
/// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration. Call registerUser to accept the terms of service and provide the data.
///
/// * [termsOfService]: Telegram terms of service.
final class AuthorizationStateWaitRegistration extends AuthorizationState {
  
  /// **AuthorizationStateWaitRegistration** *(authorizationStateWaitRegistration)* - child of AuthorizationState
  ///
  /// The user is unregistered and need to accept terms of service and enter their first name and last name to finish registration. Call registerUser to accept the terms of service and provide the data.
  ///
  /// * [termsOfService]: Telegram terms of service.
  const AuthorizationStateWaitRegistration({
    required this.termsOfService,
    this.extra,
    this.clientId,
  });
  
  /// Telegram terms of service
  final TermsOfService termsOfService;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitRegistration.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitRegistration(
    termsOfService: TermsOfService.fromJson(json['terms_of_service']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "terms_of_service": termsOfService.toJson(),
		};
	}

  
  @override
  AuthorizationStateWaitRegistration copyWith({
    TermsOfService? termsOfService,
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitRegistration(
    termsOfService: termsOfService ?? this.termsOfService,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitRegistration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateWaitPassword** *(authorizationStateWaitPassword)* - child of AuthorizationState
///
/// The user has been authorized, but needs to enter a 2-step verification password to start using the application.. Call checkAuthenticationPassword to provide the password, or requestAuthenticationPasswordRecovery to recover the password, or deleteAccount to delete the account after a week.
///
/// * [passwordHint]: Hint for the password; may be empty.
/// * [hasRecoveryEmailAddress]: True, if a recovery email address has been set up.
/// * [recoveryEmailAddressPattern]: Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent.
final class AuthorizationStateWaitPassword extends AuthorizationState {
  
  /// **AuthorizationStateWaitPassword** *(authorizationStateWaitPassword)* - child of AuthorizationState
  ///
  /// The user has been authorized, but needs to enter a 2-step verification password to start using the application.. Call checkAuthenticationPassword to provide the password, or requestAuthenticationPasswordRecovery to recover the password, or deleteAccount to delete the account after a week.
  ///
  /// * [passwordHint]: Hint for the password; may be empty.
  /// * [hasRecoveryEmailAddress]: True, if a recovery email address has been set up.
  /// * [recoveryEmailAddressPattern]: Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent.
  const AuthorizationStateWaitPassword({
    required this.passwordHint,
    required this.hasRecoveryEmailAddress,
    required this.recoveryEmailAddressPattern,
    this.extra,
    this.clientId,
  });
  
  /// Hint for the password; may be empty
  final String passwordHint;

  /// True, if a recovery email address has been set up
  final bool hasRecoveryEmailAddress;

  /// Pattern of the email address to which the recovery email was sent; empty until a recovery email has been sent
  final String recoveryEmailAddressPattern;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateWaitPassword.fromJson(Map<String, dynamic> json) => AuthorizationStateWaitPassword(
    passwordHint: json['password_hint'],
    hasRecoveryEmailAddress: json['has_recovery_email_address'],
    recoveryEmailAddressPattern: json['recovery_email_address_pattern'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "password_hint": passwordHint,
      "has_recovery_email_address": hasRecoveryEmailAddress,
      "recovery_email_address_pattern": recoveryEmailAddressPattern,
		};
	}

  
  @override
  AuthorizationStateWaitPassword copyWith({
    String? passwordHint,
    bool? hasRecoveryEmailAddress,
    String? recoveryEmailAddressPattern,
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateWaitPassword(
    passwordHint: passwordHint ?? this.passwordHint,
    hasRecoveryEmailAddress: hasRecoveryEmailAddress ?? this.hasRecoveryEmailAddress,
    recoveryEmailAddressPattern: recoveryEmailAddressPattern ?? this.recoveryEmailAddressPattern,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateWaitPassword';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateReady** *(authorizationStateReady)* - child of AuthorizationState
///
/// The user has been successfully authorized. TDLib is now ready to answer general requests.
final class AuthorizationStateReady extends AuthorizationState {
  
  /// **AuthorizationStateReady** *(authorizationStateReady)* - child of AuthorizationState
  ///
  /// The user has been successfully authorized. TDLib is now ready to answer general requests.
  const AuthorizationStateReady({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateReady.fromJson(Map<String, dynamic> json) => AuthorizationStateReady(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AuthorizationStateReady copyWith({
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateReady(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateReady';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateLoggingOut** *(authorizationStateLoggingOut)* - child of AuthorizationState
///
/// The user is currently logging out.
final class AuthorizationStateLoggingOut extends AuthorizationState {
  
  /// **AuthorizationStateLoggingOut** *(authorizationStateLoggingOut)* - child of AuthorizationState
  ///
  /// The user is currently logging out.
  const AuthorizationStateLoggingOut({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateLoggingOut.fromJson(Map<String, dynamic> json) => AuthorizationStateLoggingOut(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AuthorizationStateLoggingOut copyWith({
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateLoggingOut(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateLoggingOut';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateClosing** *(authorizationStateClosing)* - child of AuthorizationState
///
/// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received.
final class AuthorizationStateClosing extends AuthorizationState {
  
  /// **AuthorizationStateClosing** *(authorizationStateClosing)* - child of AuthorizationState
  ///
  /// TDLib is closing, all subsequent queries will be answered with the error 500. Note that closing TDLib can take a while. All resources will be freed only after authorizationStateClosed has been received.
  const AuthorizationStateClosing({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateClosing.fromJson(Map<String, dynamic> json) => AuthorizationStateClosing(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AuthorizationStateClosing copyWith({
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateClosing(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateClosing';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthorizationStateClosed** *(authorizationStateClosed)* - child of AuthorizationState
///
/// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to. with error code 500. To continue working, one must create a new instance of the TDLib client.
final class AuthorizationStateClosed extends AuthorizationState {
  
  /// **AuthorizationStateClosed** *(authorizationStateClosed)* - child of AuthorizationState
  ///
  /// TDLib client is in its final state. All databases are closed and all resources are released. No other updates will be received after this. All queries will be responded to. with error code 500. To continue working, one must create a new instance of the TDLib client.
  const AuthorizationStateClosed({
    this.extra,
    this.clientId,
  });
  
  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory AuthorizationStateClosed.fromJson(Map<String, dynamic> json) => AuthorizationStateClosed(
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  AuthorizationStateClosed copyWith({
    dynamic extra,
    int? clientId,
  }) => AuthorizationStateClosed(
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'authorizationStateClosed';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
