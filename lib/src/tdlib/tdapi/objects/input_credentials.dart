part of '../tdapi.dart';

/// **InputCredentials** *(inputCredentials)* - parent
  ///
  /// Contains information about the payment method chosen by the user.
class InputCredentials extends TdObject {
  
  /// **InputCredentials** *(inputCredentials)* - parent
  ///
  /// Contains information about the payment method chosen by the user.
  const InputCredentials();
  
  /// a InputCredentials return type can be :
  /// * [InputCredentialsSaved]
  /// * [InputCredentialsNew]
  /// * [InputCredentialsApplePay]
  /// * [InputCredentialsGooglePay]
  factory InputCredentials.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputCredentialsSaved.constructor:
        return InputCredentialsSaved.fromJson(json);
      case InputCredentialsNew.constructor:
        return InputCredentialsNew.fromJson(json);
      case InputCredentialsApplePay.constructor:
        return InputCredentialsApplePay.fromJson(json);
      case InputCredentialsGooglePay.constructor:
        return InputCredentialsGooglePay.fromJson(json);
      default:
        return const InputCredentials();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputCredentials copyWith() => const InputCredentials();

  static const String constructor = 'inputCredentials';
  
  @override
  String getConstructor() => constructor;
}


/// **InputCredentialsSaved** *(inputCredentialsSaved)* - child of InputCredentials
  ///
  /// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password.
  ///
  /// * [savedCredentialsId]: Identifier of the saved credentials.
class InputCredentialsSaved extends InputCredentials {
  
  /// **InputCredentialsSaved** *(inputCredentialsSaved)* - child of InputCredentials
  ///
  /// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password.
  ///
  /// * [savedCredentialsId]: Identifier of the saved credentials.
  const InputCredentialsSaved({
    required this.savedCredentialsId,
  });
  
  /// Identifier of the saved credentials
  final String savedCredentialsId;
  
  /// Parse from a json
  factory InputCredentialsSaved.fromJson(Map<String, dynamic> json) => InputCredentialsSaved(
    savedCredentialsId: json['saved_credentials_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "saved_credentials_id": savedCredentialsId,
    };
  }
  
  @override
  InputCredentialsSaved copyWith({
    String? savedCredentialsId,
  }) => InputCredentialsSaved(
    savedCredentialsId: savedCredentialsId ?? this.savedCredentialsId,
  );

  static const String constructor = 'inputCredentialsSaved';
  
  @override
  String getConstructor() => constructor;
}


/// **InputCredentialsNew** *(inputCredentialsNew)* - child of InputCredentials
  ///
  /// Applies if a user enters new credentials on a payment provider website.
  ///
  /// * [data]: JSON-encoded data with the credential identifier from the payment provider.
  /// * [allowSave]: True, if the credential identifier can be saved on the server side.
class InputCredentialsNew extends InputCredentials {
  
  /// **InputCredentialsNew** *(inputCredentialsNew)* - child of InputCredentials
  ///
  /// Applies if a user enters new credentials on a payment provider website.
  ///
  /// * [data]: JSON-encoded data with the credential identifier from the payment provider.
  /// * [allowSave]: True, if the credential identifier can be saved on the server side.
  const InputCredentialsNew({
    required this.data,
    required this.allowSave,
  });
  
  /// JSON-encoded data with the credential identifier from the payment provider 
  final String data;

  /// True, if the credential identifier can be saved on the server side
  final bool allowSave;
  
  /// Parse from a json
  factory InputCredentialsNew.fromJson(Map<String, dynamic> json) => InputCredentialsNew(
    data: json['data'],
    allowSave: json['allow_save'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "data": data,
      "allow_save": allowSave,
    };
  }
  
  @override
  InputCredentialsNew copyWith({
    String? data,
    bool? allowSave,
  }) => InputCredentialsNew(
    data: data ?? this.data,
    allowSave: allowSave ?? this.allowSave,
  );

  static const String constructor = 'inputCredentialsNew';
  
  @override
  String getConstructor() => constructor;
}


/// **InputCredentialsApplePay** *(inputCredentialsApplePay)* - child of InputCredentials
  ///
  /// Applies if a user enters new credentials using Apple Pay.
  ///
  /// * [data]: JSON-encoded data with the credential identifier.
class InputCredentialsApplePay extends InputCredentials {
  
  /// **InputCredentialsApplePay** *(inputCredentialsApplePay)* - child of InputCredentials
  ///
  /// Applies if a user enters new credentials using Apple Pay.
  ///
  /// * [data]: JSON-encoded data with the credential identifier.
  const InputCredentialsApplePay({
    required this.data,
  });
  
  /// JSON-encoded data with the credential identifier
  final String data;
  
  /// Parse from a json
  factory InputCredentialsApplePay.fromJson(Map<String, dynamic> json) => InputCredentialsApplePay(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "data": data,
    };
  }
  
  @override
  InputCredentialsApplePay copyWith({
    String? data,
  }) => InputCredentialsApplePay(
    data: data ?? this.data,
  );

  static const String constructor = 'inputCredentialsApplePay';
  
  @override
  String getConstructor() => constructor;
}


/// **InputCredentialsGooglePay** *(inputCredentialsGooglePay)* - child of InputCredentials
  ///
  /// Applies if a user enters new credentials using Google Pay.
  ///
  /// * [data]: JSON-encoded data with the credential identifier.
class InputCredentialsGooglePay extends InputCredentials {
  
  /// **InputCredentialsGooglePay** *(inputCredentialsGooglePay)* - child of InputCredentials
  ///
  /// Applies if a user enters new credentials using Google Pay.
  ///
  /// * [data]: JSON-encoded data with the credential identifier.
  const InputCredentialsGooglePay({
    required this.data,
  });
  
  /// JSON-encoded data with the credential identifier
  final String data;
  
  /// Parse from a json
  factory InputCredentialsGooglePay.fromJson(Map<String, dynamic> json) => InputCredentialsGooglePay(
    data: json['data'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "data": data,
    };
  }
  
  @override
  InputCredentialsGooglePay copyWith({
    String? data,
  }) => InputCredentialsGooglePay(
    data: data ?? this.data,
  );

  static const String constructor = 'inputCredentialsGooglePay';
  
  @override
  String getConstructor() => constructor;
}
