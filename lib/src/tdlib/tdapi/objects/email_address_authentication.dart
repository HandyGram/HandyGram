part of '../tdapi.dart';

/// **EmailAddressAuthentication** *(emailAddressAuthentication)* - parent
  ///
  /// Contains authentication data for a email address.
class EmailAddressAuthentication extends TdObject {
  
  /// **EmailAddressAuthentication** *(emailAddressAuthentication)* - parent
  ///
  /// Contains authentication data for a email address.
  const EmailAddressAuthentication();
  
  /// a EmailAddressAuthentication return type can be :
  /// * [EmailAddressAuthenticationCode]
  /// * [EmailAddressAuthenticationAppleId]
  /// * [EmailAddressAuthenticationGoogleId]
  factory EmailAddressAuthentication.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case EmailAddressAuthenticationCode.constructor:
        return EmailAddressAuthenticationCode.fromJson(json);
      case EmailAddressAuthenticationAppleId.constructor:
        return EmailAddressAuthenticationAppleId.fromJson(json);
      case EmailAddressAuthenticationGoogleId.constructor:
        return EmailAddressAuthenticationGoogleId.fromJson(json);
      default:
        return const EmailAddressAuthentication();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  EmailAddressAuthentication copyWith() => const EmailAddressAuthentication();

  static const String constructor = 'emailAddressAuthentication';
  
  @override
  String getConstructor() => constructor;
}


/// **EmailAddressAuthenticationCode** *(emailAddressAuthenticationCode)* - child of EmailAddressAuthentication
  ///
  /// An authentication code delivered to a user's email address.
  ///
  /// * [code]: The code.
class EmailAddressAuthenticationCode extends EmailAddressAuthentication {
  
  /// **EmailAddressAuthenticationCode** *(emailAddressAuthenticationCode)* - child of EmailAddressAuthentication
  ///
  /// An authentication code delivered to a user's email address.
  ///
  /// * [code]: The code.
  const EmailAddressAuthenticationCode({
    required this.code,
  });
  
  /// The code
  final String code;
  
  /// Parse from a json
  factory EmailAddressAuthenticationCode.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationCode(
    code: json['code'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "code": code,
    };
  }
  
  @override
  EmailAddressAuthenticationCode copyWith({
    String? code,
  }) => EmailAddressAuthenticationCode(
    code: code ?? this.code,
  );

  static const String constructor = 'emailAddressAuthenticationCode';
  
  @override
  String getConstructor() => constructor;
}


/// **EmailAddressAuthenticationAppleId** *(emailAddressAuthenticationAppleId)* - child of EmailAddressAuthentication
  ///
  /// An authentication token received through Apple emailAddressAuthenticationAppleId.
  ///
  /// * [token]: The token.
class EmailAddressAuthenticationAppleId extends EmailAddressAuthentication {
  
  /// **EmailAddressAuthenticationAppleId** *(emailAddressAuthenticationAppleId)* - child of EmailAddressAuthentication
  ///
  /// An authentication token received through Apple emailAddressAuthenticationAppleId.
  ///
  /// * [token]: The token.
  const EmailAddressAuthenticationAppleId({
    required this.token,
  });
  
  /// The token
  final String token;
  
  /// Parse from a json
  factory EmailAddressAuthenticationAppleId.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationAppleId(
    token: json['token'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "token": token,
    };
  }
  
  @override
  EmailAddressAuthenticationAppleId copyWith({
    String? token,
  }) => EmailAddressAuthenticationAppleId(
    token: token ?? this.token,
  );

  static const String constructor = 'emailAddressAuthenticationAppleId';
  
  @override
  String getConstructor() => constructor;
}


/// **EmailAddressAuthenticationGoogleId** *(emailAddressAuthenticationGoogleId)* - child of EmailAddressAuthentication
  ///
  /// An authentication token received through Google emailAddressAuthenticationGoogleId.
  ///
  /// * [token]: The token.
class EmailAddressAuthenticationGoogleId extends EmailAddressAuthentication {
  
  /// **EmailAddressAuthenticationGoogleId** *(emailAddressAuthenticationGoogleId)* - child of EmailAddressAuthentication
  ///
  /// An authentication token received through Google emailAddressAuthenticationGoogleId.
  ///
  /// * [token]: The token.
  const EmailAddressAuthenticationGoogleId({
    required this.token,
  });
  
  /// The token
  final String token;
  
  /// Parse from a json
  factory EmailAddressAuthenticationGoogleId.fromJson(Map<String, dynamic> json) => EmailAddressAuthenticationGoogleId(
    token: json['token'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "token": token,
    };
  }
  
  @override
  EmailAddressAuthenticationGoogleId copyWith({
    String? token,
  }) => EmailAddressAuthenticationGoogleId(
    token: token ?? this.token,
  );

  static const String constructor = 'emailAddressAuthenticationGoogleId';
  
  @override
  String getConstructor() => constructor;
}
