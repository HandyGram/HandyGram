part of '../tdapi.dart';

/// **AuthenticationCodeType** *(authenticationCodeType)* - parent
  ///
  /// Provides information about the method by which an authentication code is delivered to the user.
class AuthenticationCodeType extends TdObject {
  
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
      case AuthenticationCodeTypeTelegramMessage.constructor:
        return AuthenticationCodeTypeTelegramMessage.fromJson(json);
      case AuthenticationCodeTypeSms.constructor:
        return AuthenticationCodeTypeSms.fromJson(json);
      case AuthenticationCodeTypeCall.constructor:
        return AuthenticationCodeTypeCall.fromJson(json);
      case AuthenticationCodeTypeFlashCall.constructor:
        return AuthenticationCodeTypeFlashCall.fromJson(json);
      case AuthenticationCodeTypeMissedCall.constructor:
        return AuthenticationCodeTypeMissedCall.fromJson(json);
      case AuthenticationCodeTypeFragment.constructor:
        return AuthenticationCodeTypeFragment.fromJson(json);
      default:
        return const AuthenticationCodeType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  AuthenticationCodeType copyWith() => const AuthenticationCodeType();

  static const String constructor = 'authenticationCodeType';
  
  @override
  String getConstructor() => constructor;
}


/// **AuthenticationCodeTypeTelegramMessage** *(authenticationCodeTypeTelegramMessage)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered via a private Telegram message, which can be viewed from another active session.
  ///
  /// * [length]: Length of the code.
class AuthenticationCodeTypeTelegramMessage extends AuthenticationCodeType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "length": length,
    };
  }
  
  @override
  AuthenticationCodeTypeTelegramMessage copyWith({
    int? length,
  }) => AuthenticationCodeTypeTelegramMessage(
    length: length ?? this.length,
  );

  static const String constructor = 'authenticationCodeTypeTelegramMessage';
  
  @override
  String getConstructor() => constructor;
}


/// **AuthenticationCodeTypeSms** *(authenticationCodeTypeSms)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered via an SMS message to the specified phone number.
  ///
  /// * [length]: Length of the code.
class AuthenticationCodeTypeSms extends AuthenticationCodeType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "length": length,
    };
  }
  
  @override
  AuthenticationCodeTypeSms copyWith({
    int? length,
  }) => AuthenticationCodeTypeSms(
    length: length ?? this.length,
  );

  static const String constructor = 'authenticationCodeTypeSms';
  
  @override
  String getConstructor() => constructor;
}


/// **AuthenticationCodeTypeCall** *(authenticationCodeTypeCall)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered via a phone call to the specified phone number.
  ///
  /// * [length]: Length of the code.
class AuthenticationCodeTypeCall extends AuthenticationCodeType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "length": length,
    };
  }
  
  @override
  AuthenticationCodeTypeCall copyWith({
    int? length,
  }) => AuthenticationCodeTypeCall(
    length: length ?? this.length,
  );

  static const String constructor = 'authenticationCodeTypeCall';
  
  @override
  String getConstructor() => constructor;
}


/// **AuthenticationCodeTypeFlashCall** *(authenticationCodeTypeFlashCall)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The phone number that calls is the code that must be entered automatically.
  ///
  /// * [pattern]: Pattern of the phone number from which the call will be made.
class AuthenticationCodeTypeFlashCall extends AuthenticationCodeType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "pattern": pattern,
    };
  }
  
  @override
  AuthenticationCodeTypeFlashCall copyWith({
    String? pattern,
  }) => AuthenticationCodeTypeFlashCall(
    pattern: pattern ?? this.pattern,
  );

  static const String constructor = 'authenticationCodeTypeFlashCall';
  
  @override
  String getConstructor() => constructor;
}


/// **AuthenticationCodeTypeMissedCall** *(authenticationCodeTypeMissedCall)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered by an immediately canceled call to the specified phone number. The last digits of the phone number that calls are the code that must be entered manually by the user.
  ///
  /// * [phoneNumberPrefix]: Prefix of the phone number from which the call will be made.
  /// * [length]: Number of digits in the code, excluding the prefix.
class AuthenticationCodeTypeMissedCall extends AuthenticationCodeType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'authenticationCodeTypeMissedCall';
  
  @override
  String getConstructor() => constructor;
}


/// **AuthenticationCodeTypeFragment** *(authenticationCodeTypeFragment)* - child of AuthenticationCodeType
  ///
  /// An authentication code is delivered to https://fragment.com. The user must be logged in there via a wallet owning the phone number's NFT.
  ///
  /// * [url]: URL to open to receive the code.
  /// * [length]: Length of the code.
class AuthenticationCodeTypeFragment extends AuthenticationCodeType {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'authenticationCodeTypeFragment';
  
  @override
  String getConstructor() => constructor;
}
