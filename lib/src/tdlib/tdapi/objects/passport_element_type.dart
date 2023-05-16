part of '../tdapi.dart';

/// **PassportElementType** *(passportElementType)* - parent
///
/// Contains the type of a Telegram Passport element.
sealed class PassportElementType extends TdObject {
  
  /// **PassportElementType** *(passportElementType)* - parent
  ///
  /// Contains the type of a Telegram Passport element.
  const PassportElementType();
  
  /// a PassportElementType return type can be :
  /// * [PassportElementTypePersonalDetails]
  /// * [PassportElementTypePassport]
  /// * [PassportElementTypeDriverLicense]
  /// * [PassportElementTypeIdentityCard]
  /// * [PassportElementTypeInternalPassport]
  /// * [PassportElementTypeAddress]
  /// * [PassportElementTypeUtilityBill]
  /// * [PassportElementTypeBankStatement]
  /// * [PassportElementTypeRentalAgreement]
  /// * [PassportElementTypePassportRegistration]
  /// * [PassportElementTypeTemporaryRegistration]
  /// * [PassportElementTypePhoneNumber]
  /// * [PassportElementTypeEmailAddress]
  factory PassportElementType.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PassportElementTypePersonalDetails.objectType:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePassport.objectType:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypeDriverLicense.objectType:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.objectType:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.objectType:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypeAddress.objectType:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeUtilityBill.objectType:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypeBankStatement.objectType:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeRentalAgreement.objectType:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypePassportRegistration.objectType:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeTemporaryRegistration.objectType:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.objectType:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeEmailAddress.objectType:
        return PassportElementTypeEmailAddress.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PassportElementType)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PassportElementType copyWith();

  static const String objectType = 'passportElementType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypePersonalDetails** *(passportElementTypePersonalDetails)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's personal details.
final class PassportElementTypePersonalDetails extends PassportElementType {
  
  /// **PassportElementTypePersonalDetails** *(passportElementTypePersonalDetails)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's personal details.
  const PassportElementTypePersonalDetails();
  
  /// Parse from a json
  factory PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json) => const PassportElementTypePersonalDetails();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypePersonalDetails copyWith() => const PassportElementTypePersonalDetails();

  static const String objectType = 'passportElementTypePersonalDetails';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypePassport** *(passportElementTypePassport)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's passport.
final class PassportElementTypePassport extends PassportElementType {
  
  /// **PassportElementTypePassport** *(passportElementTypePassport)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's passport.
  const PassportElementTypePassport();
  
  /// Parse from a json
  factory PassportElementTypePassport.fromJson(Map<String, dynamic> json) => const PassportElementTypePassport();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypePassport copyWith() => const PassportElementTypePassport();

  static const String objectType = 'passportElementTypePassport';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeDriverLicense** *(passportElementTypeDriverLicense)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's driver license.
final class PassportElementTypeDriverLicense extends PassportElementType {
  
  /// **PassportElementTypeDriverLicense** *(passportElementTypeDriverLicense)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's driver license.
  const PassportElementTypeDriverLicense();
  
  /// Parse from a json
  factory PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json) => const PassportElementTypeDriverLicense();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeDriverLicense copyWith() => const PassportElementTypeDriverLicense();

  static const String objectType = 'passportElementTypeDriverLicense';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeIdentityCard** *(passportElementTypeIdentityCard)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's identity card.
final class PassportElementTypeIdentityCard extends PassportElementType {
  
  /// **PassportElementTypeIdentityCard** *(passportElementTypeIdentityCard)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's identity card.
  const PassportElementTypeIdentityCard();
  
  /// Parse from a json
  factory PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json) => const PassportElementTypeIdentityCard();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeIdentityCard copyWith() => const PassportElementTypeIdentityCard();

  static const String objectType = 'passportElementTypeIdentityCard';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeInternalPassport** *(passportElementTypeInternalPassport)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's internal passport.
final class PassportElementTypeInternalPassport extends PassportElementType {
  
  /// **PassportElementTypeInternalPassport** *(passportElementTypeInternalPassport)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's internal passport.
  const PassportElementTypeInternalPassport();
  
  /// Parse from a json
  factory PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json) => const PassportElementTypeInternalPassport();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeInternalPassport copyWith() => const PassportElementTypeInternalPassport();

  static const String objectType = 'passportElementTypeInternalPassport';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeAddress** *(passportElementTypeAddress)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's address.
final class PassportElementTypeAddress extends PassportElementType {
  
  /// **PassportElementTypeAddress** *(passportElementTypeAddress)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's address.
  const PassportElementTypeAddress();
  
  /// Parse from a json
  factory PassportElementTypeAddress.fromJson(Map<String, dynamic> json) => const PassportElementTypeAddress();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeAddress copyWith() => const PassportElementTypeAddress();

  static const String objectType = 'passportElementTypeAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeUtilityBill** *(passportElementTypeUtilityBill)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's utility bill.
final class PassportElementTypeUtilityBill extends PassportElementType {
  
  /// **PassportElementTypeUtilityBill** *(passportElementTypeUtilityBill)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's utility bill.
  const PassportElementTypeUtilityBill();
  
  /// Parse from a json
  factory PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json) => const PassportElementTypeUtilityBill();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeUtilityBill copyWith() => const PassportElementTypeUtilityBill();

  static const String objectType = 'passportElementTypeUtilityBill';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeBankStatement** *(passportElementTypeBankStatement)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's bank statement.
final class PassportElementTypeBankStatement extends PassportElementType {
  
  /// **PassportElementTypeBankStatement** *(passportElementTypeBankStatement)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's bank statement.
  const PassportElementTypeBankStatement();
  
  /// Parse from a json
  factory PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json) => const PassportElementTypeBankStatement();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeBankStatement copyWith() => const PassportElementTypeBankStatement();

  static const String objectType = 'passportElementTypeBankStatement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeRentalAgreement** *(passportElementTypeRentalAgreement)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's rental agreement.
final class PassportElementTypeRentalAgreement extends PassportElementType {
  
  /// **PassportElementTypeRentalAgreement** *(passportElementTypeRentalAgreement)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's rental agreement.
  const PassportElementTypeRentalAgreement();
  
  /// Parse from a json
  factory PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json) => const PassportElementTypeRentalAgreement();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeRentalAgreement copyWith() => const PassportElementTypeRentalAgreement();

  static const String objectType = 'passportElementTypeRentalAgreement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypePassportRegistration** *(passportElementTypePassportRegistration)* - child of PassportElementType
///
/// A Telegram Passport element containing the registration page of the user's passport.
final class PassportElementTypePassportRegistration extends PassportElementType {
  
  /// **PassportElementTypePassportRegistration** *(passportElementTypePassportRegistration)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the registration page of the user's passport.
  const PassportElementTypePassportRegistration();
  
  /// Parse from a json
  factory PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json) => const PassportElementTypePassportRegistration();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypePassportRegistration copyWith() => const PassportElementTypePassportRegistration();

  static const String objectType = 'passportElementTypePassportRegistration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeTemporaryRegistration** *(passportElementTypeTemporaryRegistration)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's temporary registration.
final class PassportElementTypeTemporaryRegistration extends PassportElementType {
  
  /// **PassportElementTypeTemporaryRegistration** *(passportElementTypeTemporaryRegistration)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's temporary registration.
  const PassportElementTypeTemporaryRegistration();
  
  /// Parse from a json
  factory PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json) => const PassportElementTypeTemporaryRegistration();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeTemporaryRegistration copyWith() => const PassportElementTypeTemporaryRegistration();

  static const String objectType = 'passportElementTypeTemporaryRegistration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypePhoneNumber** *(passportElementTypePhoneNumber)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's phone number.
final class PassportElementTypePhoneNumber extends PassportElementType {
  
  /// **PassportElementTypePhoneNumber** *(passportElementTypePhoneNumber)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's phone number.
  const PassportElementTypePhoneNumber();
  
  /// Parse from a json
  factory PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json) => const PassportElementTypePhoneNumber();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypePhoneNumber copyWith() => const PassportElementTypePhoneNumber();

  static const String objectType = 'passportElementTypePhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTypeEmailAddress** *(passportElementTypeEmailAddress)* - child of PassportElementType
///
/// A Telegram Passport element containing the user's email address.
final class PassportElementTypeEmailAddress extends PassportElementType {
  
  /// **PassportElementTypeEmailAddress** *(passportElementTypeEmailAddress)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's email address.
  const PassportElementTypeEmailAddress();
  
  /// Parse from a json
  factory PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json) => const PassportElementTypeEmailAddress();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementTypeEmailAddress copyWith() => const PassportElementTypeEmailAddress();

  static const String objectType = 'passportElementTypeEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
