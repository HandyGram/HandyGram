part of '../tdapi.dart';

/// **PassportElementType** *(passportElementType)* - parent
  ///
  /// Contains the type of a Telegram Passport element.
class PassportElementType extends TdObject {
  
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
      case PassportElementTypePersonalDetails.constructor:
        return PassportElementTypePersonalDetails.fromJson(json);
      case PassportElementTypePassport.constructor:
        return PassportElementTypePassport.fromJson(json);
      case PassportElementTypeDriverLicense.constructor:
        return PassportElementTypeDriverLicense.fromJson(json);
      case PassportElementTypeIdentityCard.constructor:
        return PassportElementTypeIdentityCard.fromJson(json);
      case PassportElementTypeInternalPassport.constructor:
        return PassportElementTypeInternalPassport.fromJson(json);
      case PassportElementTypeAddress.constructor:
        return PassportElementTypeAddress.fromJson(json);
      case PassportElementTypeUtilityBill.constructor:
        return PassportElementTypeUtilityBill.fromJson(json);
      case PassportElementTypeBankStatement.constructor:
        return PassportElementTypeBankStatement.fromJson(json);
      case PassportElementTypeRentalAgreement.constructor:
        return PassportElementTypeRentalAgreement.fromJson(json);
      case PassportElementTypePassportRegistration.constructor:
        return PassportElementTypePassportRegistration.fromJson(json);
      case PassportElementTypeTemporaryRegistration.constructor:
        return PassportElementTypeTemporaryRegistration.fromJson(json);
      case PassportElementTypePhoneNumber.constructor:
        return PassportElementTypePhoneNumber.fromJson(json);
      case PassportElementTypeEmailAddress.constructor:
        return PassportElementTypeEmailAddress.fromJson(json);
      default:
        return const PassportElementType();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PassportElementType copyWith() => const PassportElementType();

  static const String constructor = 'passportElementType';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypePersonalDetails** *(passportElementTypePersonalDetails)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's personal details.
class PassportElementTypePersonalDetails extends PassportElementType {
  
  /// **PassportElementTypePersonalDetails** *(passportElementTypePersonalDetails)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's personal details.
  const PassportElementTypePersonalDetails();
  
  /// Parse from a json
  factory PassportElementTypePersonalDetails.fromJson(Map<String, dynamic> json) => const PassportElementTypePersonalDetails();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypePersonalDetails copyWith() => const PassportElementTypePersonalDetails();

  static const String constructor = 'passportElementTypePersonalDetails';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypePassport** *(passportElementTypePassport)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's passport.
class PassportElementTypePassport extends PassportElementType {
  
  /// **PassportElementTypePassport** *(passportElementTypePassport)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's passport.
  const PassportElementTypePassport();
  
  /// Parse from a json
  factory PassportElementTypePassport.fromJson(Map<String, dynamic> json) => const PassportElementTypePassport();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypePassport copyWith() => const PassportElementTypePassport();

  static const String constructor = 'passportElementTypePassport';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeDriverLicense** *(passportElementTypeDriverLicense)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's driver license.
class PassportElementTypeDriverLicense extends PassportElementType {
  
  /// **PassportElementTypeDriverLicense** *(passportElementTypeDriverLicense)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's driver license.
  const PassportElementTypeDriverLicense();
  
  /// Parse from a json
  factory PassportElementTypeDriverLicense.fromJson(Map<String, dynamic> json) => const PassportElementTypeDriverLicense();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeDriverLicense copyWith() => const PassportElementTypeDriverLicense();

  static const String constructor = 'passportElementTypeDriverLicense';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeIdentityCard** *(passportElementTypeIdentityCard)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's identity card.
class PassportElementTypeIdentityCard extends PassportElementType {
  
  /// **PassportElementTypeIdentityCard** *(passportElementTypeIdentityCard)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's identity card.
  const PassportElementTypeIdentityCard();
  
  /// Parse from a json
  factory PassportElementTypeIdentityCard.fromJson(Map<String, dynamic> json) => const PassportElementTypeIdentityCard();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeIdentityCard copyWith() => const PassportElementTypeIdentityCard();

  static const String constructor = 'passportElementTypeIdentityCard';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeInternalPassport** *(passportElementTypeInternalPassport)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's internal passport.
class PassportElementTypeInternalPassport extends PassportElementType {
  
  /// **PassportElementTypeInternalPassport** *(passportElementTypeInternalPassport)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's internal passport.
  const PassportElementTypeInternalPassport();
  
  /// Parse from a json
  factory PassportElementTypeInternalPassport.fromJson(Map<String, dynamic> json) => const PassportElementTypeInternalPassport();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeInternalPassport copyWith() => const PassportElementTypeInternalPassport();

  static const String constructor = 'passportElementTypeInternalPassport';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeAddress** *(passportElementTypeAddress)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's address.
class PassportElementTypeAddress extends PassportElementType {
  
  /// **PassportElementTypeAddress** *(passportElementTypeAddress)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's address.
  const PassportElementTypeAddress();
  
  /// Parse from a json
  factory PassportElementTypeAddress.fromJson(Map<String, dynamic> json) => const PassportElementTypeAddress();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeAddress copyWith() => const PassportElementTypeAddress();

  static const String constructor = 'passportElementTypeAddress';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeUtilityBill** *(passportElementTypeUtilityBill)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's utility bill.
class PassportElementTypeUtilityBill extends PassportElementType {
  
  /// **PassportElementTypeUtilityBill** *(passportElementTypeUtilityBill)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's utility bill.
  const PassportElementTypeUtilityBill();
  
  /// Parse from a json
  factory PassportElementTypeUtilityBill.fromJson(Map<String, dynamic> json) => const PassportElementTypeUtilityBill();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeUtilityBill copyWith() => const PassportElementTypeUtilityBill();

  static const String constructor = 'passportElementTypeUtilityBill';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeBankStatement** *(passportElementTypeBankStatement)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's bank statement.
class PassportElementTypeBankStatement extends PassportElementType {
  
  /// **PassportElementTypeBankStatement** *(passportElementTypeBankStatement)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's bank statement.
  const PassportElementTypeBankStatement();
  
  /// Parse from a json
  factory PassportElementTypeBankStatement.fromJson(Map<String, dynamic> json) => const PassportElementTypeBankStatement();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeBankStatement copyWith() => const PassportElementTypeBankStatement();

  static const String constructor = 'passportElementTypeBankStatement';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeRentalAgreement** *(passportElementTypeRentalAgreement)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's rental agreement.
class PassportElementTypeRentalAgreement extends PassportElementType {
  
  /// **PassportElementTypeRentalAgreement** *(passportElementTypeRentalAgreement)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's rental agreement.
  const PassportElementTypeRentalAgreement();
  
  /// Parse from a json
  factory PassportElementTypeRentalAgreement.fromJson(Map<String, dynamic> json) => const PassportElementTypeRentalAgreement();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeRentalAgreement copyWith() => const PassportElementTypeRentalAgreement();

  static const String constructor = 'passportElementTypeRentalAgreement';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypePassportRegistration** *(passportElementTypePassportRegistration)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the registration page of the user's passport.
class PassportElementTypePassportRegistration extends PassportElementType {
  
  /// **PassportElementTypePassportRegistration** *(passportElementTypePassportRegistration)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the registration page of the user's passport.
  const PassportElementTypePassportRegistration();
  
  /// Parse from a json
  factory PassportElementTypePassportRegistration.fromJson(Map<String, dynamic> json) => const PassportElementTypePassportRegistration();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypePassportRegistration copyWith() => const PassportElementTypePassportRegistration();

  static const String constructor = 'passportElementTypePassportRegistration';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeTemporaryRegistration** *(passportElementTypeTemporaryRegistration)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's temporary registration.
class PassportElementTypeTemporaryRegistration extends PassportElementType {
  
  /// **PassportElementTypeTemporaryRegistration** *(passportElementTypeTemporaryRegistration)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's temporary registration.
  const PassportElementTypeTemporaryRegistration();
  
  /// Parse from a json
  factory PassportElementTypeTemporaryRegistration.fromJson(Map<String, dynamic> json) => const PassportElementTypeTemporaryRegistration();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeTemporaryRegistration copyWith() => const PassportElementTypeTemporaryRegistration();

  static const String constructor = 'passportElementTypeTemporaryRegistration';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypePhoneNumber** *(passportElementTypePhoneNumber)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's phone number.
class PassportElementTypePhoneNumber extends PassportElementType {
  
  /// **PassportElementTypePhoneNumber** *(passportElementTypePhoneNumber)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's phone number.
  const PassportElementTypePhoneNumber();
  
  /// Parse from a json
  factory PassportElementTypePhoneNumber.fromJson(Map<String, dynamic> json) => const PassportElementTypePhoneNumber();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypePhoneNumber copyWith() => const PassportElementTypePhoneNumber();

  static const String constructor = 'passportElementTypePhoneNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTypeEmailAddress** *(passportElementTypeEmailAddress)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's email address.
class PassportElementTypeEmailAddress extends PassportElementType {
  
  /// **PassportElementTypeEmailAddress** *(passportElementTypeEmailAddress)* - child of PassportElementType
  ///
  /// A Telegram Passport element containing the user's email address.
  const PassportElementTypeEmailAddress();
  
  /// Parse from a json
  factory PassportElementTypeEmailAddress.fromJson(Map<String, dynamic> json) => const PassportElementTypeEmailAddress();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementTypeEmailAddress copyWith() => const PassportElementTypeEmailAddress();

  static const String constructor = 'passportElementTypeEmailAddress';
  
  @override
  String getConstructor() => constructor;
}
