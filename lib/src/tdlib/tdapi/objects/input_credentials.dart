part of '../tdapi.dart';

/// **InputCredentials** *(inputCredentials)* - parent
///
/// Contains information about the payment method chosen by the user.
sealed class InputCredentials extends TdObject {
  
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
      case InputCredentialsSaved.objectType:
        return InputCredentialsSaved.fromJson(json);
      case InputCredentialsNew.objectType:
        return InputCredentialsNew.fromJson(json);
      case InputCredentialsApplePay.objectType:
        return InputCredentialsApplePay.fromJson(json);
      case InputCredentialsGooglePay.objectType:
        return InputCredentialsGooglePay.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputCredentials)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  InputCredentials copyWith();

  static const String objectType = 'inputCredentials';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputCredentialsSaved** *(inputCredentialsSaved)* - child of InputCredentials
///
/// Applies if a user chooses some previously saved payment credentials. To use their previously saved credentials, the user must have a valid temporary password.
///
/// * [savedCredentialsId]: Identifier of the saved credentials.
final class InputCredentialsSaved extends InputCredentials {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "saved_credentials_id": savedCredentialsId,
		};
	}

  
  @override
  InputCredentialsSaved copyWith({
    String? savedCredentialsId,
  }) => InputCredentialsSaved(
    savedCredentialsId: savedCredentialsId ?? this.savedCredentialsId,
  );

  static const String objectType = 'inputCredentialsSaved';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputCredentialsNew** *(inputCredentialsNew)* - child of InputCredentials
///
/// Applies if a user enters new credentials on a payment provider website.
///
/// * [data]: JSON-encoded data with the credential identifier from the payment provider.
/// * [allowSave]: True, if the credential identifier can be saved on the server side.
final class InputCredentialsNew extends InputCredentials {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'inputCredentialsNew';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputCredentialsApplePay** *(inputCredentialsApplePay)* - child of InputCredentials
///
/// Applies if a user enters new credentials using Apple Pay.
///
/// * [data]: JSON-encoded data with the credential identifier.
final class InputCredentialsApplePay extends InputCredentials {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "data": data,
		};
	}

  
  @override
  InputCredentialsApplePay copyWith({
    String? data,
  }) => InputCredentialsApplePay(
    data: data ?? this.data,
  );

  static const String objectType = 'inputCredentialsApplePay';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputCredentialsGooglePay** *(inputCredentialsGooglePay)* - child of InputCredentials
///
/// Applies if a user enters new credentials using Google Pay.
///
/// * [data]: JSON-encoded data with the credential identifier.
final class InputCredentialsGooglePay extends InputCredentials {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "data": data,
		};
	}

  
  @override
  InputCredentialsGooglePay copyWith({
    String? data,
  }) => InputCredentialsGooglePay(
    data: data ?? this.data,
  );

  static const String objectType = 'inputCredentialsGooglePay';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
