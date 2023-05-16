part of '../tdapi.dart';

/// **AuthenticationCodeType** *(authenticationCodeType)* - parent
///
/// Provides information about the method by which an authentication code is delivered to the user.
sealed class AuthenticationCodeType extends TdObject {
  
  /// **AuthenticationCodeType** *(authenticationCodeType)* - parent
  ///
  /// Provides information about the method by which an authentication code is delivered to the user.
  const AuthenticationCodeType();
  
  /// a AuthenticationCodeType return type can be :
  /// * [AuthenticationCodeTypeTelegramMessage]
  /// * [AuthenticationCodeTypeSms]
  /// * [AuthenticationCodeTypeCall]
  /// * [AuthenticationCodeTypeFlashCall]
  /// * [AuthenticationCodeTypeMissedCall]
  /// * [AuthenticationCodeTypeFragment]
  factory AuthenticationCodeType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case AuthenticationCodeTypeTelegramMessage.objectType:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);
      case AuthenticationCodeTypeSms.objectType:
        return AuthenticationCodeTypeSms.fromJson(json);
      case AuthenticationCodeTypeCall.objectType:
        return AuthenticationCodeTypeCall.fromJson(json);
      case AuthenticationCodeTypeFlashCall.objectType:
        return AuthenticationCodeTypeFlashCall.fromJson(json);
      case AuthenticationCodeTypeMissedCall.objectType:
        return AuthenticationCodeTypeMissedCall.fromJson(json);
      case AuthenticationCodeTypeFragment.objectType:
        return AuthenticationCodeTypeFragment.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of AuthenticationCodeType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  AuthenticationCodeType copyWith();

  static const String objectType = 'authenticationCodeType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthenticationCodeTypeTelegramMessage** *(authenticationCodeTypeTelegramMessage)* - child of AuthenticationCodeType
///
/// An authentication code is delivered via a private Telegram message, which can be viewed from another active session.
///
/// * [length]: Length of the code.
final class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  
  /// **AuthenticationCodeTypeTelegramMessage** *(authenticationCodeTypeTelegramMessage)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered via a private Telegram message, which can be viewed from another active session.
  ///
  /// * [length]: Length of the code.
  const AuthenticationCodeTypeTelegramMessage({
    required this.length,
  });
  
  /// Length of the code
  final int length;
  
  /// Parse from a json
  factory AuthenticationCodeTypeTelegramMessage.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeTelegramMessage(
    length: json['length'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "length": length,
		};
	}

  
  @override
  AuthenticationCodeTypeTelegramMessage copyWith({
    int? length,
  }) => AuthenticationCodeTypeTelegramMessage(
    length: length ?? this.length,
  );

  static const String objectType = 'authenticationCodeTypeTelegramMessage';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthenticationCodeTypeSms** *(authenticationCodeTypeSms)* - child of AuthenticationCodeType
///
/// An authentication code is delivered via an SMS message to the specified phone number.
///
/// * [length]: Length of the code.
final class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  
  /// **AuthenticationCodeTypeSms** *(authenticationCodeTypeSms)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered via an SMS message to the specified phone number.
  ///
  /// * [length]: Length of the code.
  const AuthenticationCodeTypeSms({
    required this.length,
  });
  
  /// Length of the code
  final int length;
  
  /// Parse from a json
  factory AuthenticationCodeTypeSms.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeSms(
    length: json['length'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "length": length,
		};
	}

  
  @override
  AuthenticationCodeTypeSms copyWith({
    int? length,
  }) => AuthenticationCodeTypeSms(
    length: length ?? this.length,
  );

  static const String objectType = 'authenticationCodeTypeSms';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthenticationCodeTypeCall** *(authenticationCodeTypeCall)* - child of AuthenticationCodeType
///
/// An authentication code is delivered via a phone call to the specified phone number.
///
/// * [length]: Length of the code.
final class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  
  /// **AuthenticationCodeTypeCall** *(authenticationCodeTypeCall)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered via a phone call to the specified phone number.
  ///
  /// * [length]: Length of the code.
  const AuthenticationCodeTypeCall({
    required this.length,
  });
  
  /// Length of the code
  final int length;
  
  /// Parse from a json
  factory AuthenticationCodeTypeCall.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeCall(
    length: json['length'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "length": length,
		};
	}

  
  @override
  AuthenticationCodeTypeCall copyWith({
    int? length,
  }) => AuthenticationCodeTypeCall(
    length: length ?? this.length,
  );

  static const String objectType = 'authenticationCodeTypeCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthenticationCodeTypeFlashCall** *(authenticationCodeTypeFlashCall)* - child of AuthenticationCodeType
///
/// An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically.
///
/// * [pattern]: Pattern of the phone number from which the call will be made.
final class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  
  /// **AuthenticationCodeTypeFlashCall** *(authenticationCodeTypeFlashCall)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically.
  ///
  /// * [pattern]: Pattern of the phone number from which the call will be made.
  const AuthenticationCodeTypeFlashCall({
    required this.pattern,
  });
  
  /// Pattern of the phone number from which the call will be made
  final String pattern;
  
  /// Parse from a json
  factory AuthenticationCodeTypeFlashCall.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeFlashCall(
    pattern: json['pattern'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "pattern": pattern,
		};
	}

  
  @override
  AuthenticationCodeTypeFlashCall copyWith({
    String? pattern,
  }) => AuthenticationCodeTypeFlashCall(
    pattern: pattern ?? this.pattern,
  );

  static const String objectType = 'authenticationCodeTypeFlashCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthenticationCodeTypeMissedCall** *(authenticationCodeTypeMissedCall)* - child of AuthenticationCodeType
///
/// An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user.
///
/// * [phoneNumberPrefix]: Prefix of the phone number from which the call will be made.
/// * [length]: Number of digits in the code, excluding the prefix.
final class AuthenticationCodeTypeMissedCall extends AuthenticationCodeType {
  
  /// **AuthenticationCodeTypeMissedCall** *(authenticationCodeTypeMissedCall)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user.
  ///
  /// * [phoneNumberPrefix]: Prefix of the phone number from which the call will be made.
  /// * [length]: Number of digits in the code, excluding the prefix.
  const AuthenticationCodeTypeMissedCall({
    required this.phoneNumberPrefix,
    required this.length,
  });
  
  /// Prefix of the phone number from which the call will be made
  final String phoneNumberPrefix;

  /// Number of digits in the code, excluding the prefix
  final int length;
  
  /// Parse from a json
  factory AuthenticationCodeTypeMissedCall.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeMissedCall(
    phoneNumberPrefix: json['phone_number_prefix'],
    length: json['length'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "phone_number_prefix": phoneNumberPrefix,
      "length": length,
		};
	}

  
  @override
  AuthenticationCodeTypeMissedCall copyWith({
    String? phoneNumberPrefix,
    int? length,
  }) => AuthenticationCodeTypeMissedCall(
    phoneNumberPrefix: phoneNumberPrefix ?? this.phoneNumberPrefix,
    length: length ?? this.length,
  );

  static const String objectType = 'authenticationCodeTypeMissedCall';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **AuthenticationCodeTypeFragment** *(authenticationCodeTypeFragment)* - child of AuthenticationCodeType
///
/// An authentication code is delivered to https://fragment.com. The user must be logged in there via a wallet owning the phone number's NFT.
///
/// * [url]: URL to open to receive the code.
/// * [length]: Length of the code.
final class AuthenticationCodeTypeFragment extends AuthenticationCodeType {
  
  /// **AuthenticationCodeTypeFragment** *(authenticationCodeTypeFragment)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered to https://fragment.com. The user must be logged in there via a wallet owning the phone number's NFT.
  ///
  /// * [url]: URL to open to receive the code.
  /// * [length]: Length of the code.
  const AuthenticationCodeTypeFragment({
    required this.url,
    required this.length,
  });
  
  /// URL to open to receive the code
  final String url;

  /// Length of the code
  final int length;
  
  /// Parse from a json
  factory AuthenticationCodeTypeFragment.fromJson(Map<String, dynamic> json) => AuthenticationCodeTypeFragment(
    url: json['url'],
    length: json['length'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "url": url,
      "length": length,
		};
	}

  
  @override
  AuthenticationCodeTypeFragment copyWith({
    String? url,
    int? length,
  }) => AuthenticationCodeTypeFragment(
    url: url ?? this.url,
    length: length ?? this.length,
  );

  static const String objectType = 'authenticationCodeTypeFragment';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
