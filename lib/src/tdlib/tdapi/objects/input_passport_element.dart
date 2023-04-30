part of '../tdapi.dart';

/// **InputPassportElement** *(inputPassportElement)* - parent
  ///
  /// Contains information about a Telegram Passport element to be saved.
class InputPassportElement extends TdObject {
  
  /// **InputPassportElement** *(inputPassportElement)* - parent
  ///
  /// Contains information about a Telegram Passport element to be saved.
  const InputPassportElement();
  
  /// a InputPassportElement return type can be :
  /// * [InputPassportElementPersonalDetails]
  /// * [InputPassportElementPassport]
  /// * [InputPassportElementDriverLicense]
  /// * [InputPassportElementIdentityCard]
  /// * [InputPassportElementInternalPassport]
  /// * [InputPassportElementAddress]
  /// * [InputPassportElementUtilityBill]
  /// * [InputPassportElementBankStatement]
  /// * [InputPassportElementRentalAgreement]
  /// * [InputPassportElementPassportRegistration]
  /// * [InputPassportElementTemporaryRegistration]
  /// * [InputPassportElementPhoneNumber]
  /// * [InputPassportElementEmailAddress]
  factory InputPassportElement.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputPassportElementPersonalDetails.constructor:
        return InputPassportElementPersonalDetails.fromJson(json);
      case InputPassportElementPassport.constructor:
        return InputPassportElementPassport.fromJson(json);
      case InputPassportElementDriverLicense.constructor:
        return InputPassportElementDriverLicense.fromJson(json);
      case InputPassportElementIdentityCard.constructor:
        return InputPassportElementIdentityCard.fromJson(json);
      case InputPassportElementInternalPassport.constructor:
        return InputPassportElementInternalPassport.fromJson(json);
      case InputPassportElementAddress.constructor:
        return InputPassportElementAddress.fromJson(json);
      case InputPassportElementUtilityBill.constructor:
        return InputPassportElementUtilityBill.fromJson(json);
      case InputPassportElementBankStatement.constructor:
        return InputPassportElementBankStatement.fromJson(json);
      case InputPassportElementRentalAgreement.constructor:
        return InputPassportElementRentalAgreement.fromJson(json);
      case InputPassportElementPassportRegistration.constructor:
        return InputPassportElementPassportRegistration.fromJson(json);
      case InputPassportElementTemporaryRegistration.constructor:
        return InputPassportElementTemporaryRegistration.fromJson(json);
      case InputPassportElementPhoneNumber.constructor:
        return InputPassportElementPhoneNumber.fromJson(json);
      case InputPassportElementEmailAddress.constructor:
        return InputPassportElementEmailAddress.fromJson(json);
      default:
        return const InputPassportElement();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputPassportElement copyWith() => const InputPassportElement();

  static const String constructor = 'inputPassportElement';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementPersonalDetails** *(inputPassportElementPersonalDetails)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's personal details.
  ///
  /// * [personalDetails]: Personal details of the user.
class InputPassportElementPersonalDetails extends InputPassportElement {
  
  /// **InputPassportElementPersonalDetails** *(inputPassportElementPersonalDetails)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's personal details.
  ///
  /// * [personalDetails]: Personal details of the user.
  const InputPassportElementPersonalDetails({
    required this.personalDetails,
  });
  
  /// Personal details of the user
  final PersonalDetails personalDetails;
  
  /// Parse from a json
  factory InputPassportElementPersonalDetails.fromJson(Map<String, dynamic> json) => InputPassportElementPersonalDetails(
    personalDetails: PersonalDetails.fromJson(json['personal_details']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "personal_details": personalDetails.toJson(),
    };
  }
  
  @override
  InputPassportElementPersonalDetails copyWith({
    PersonalDetails? personalDetails,
  }) => InputPassportElementPersonalDetails(
    personalDetails: personalDetails ?? this.personalDetails,
  );

  static const String constructor = 'inputPassportElementPersonalDetails';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementPassport** *(inputPassportElementPassport)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's passport.
  ///
  /// * [passport]: The passport to be saved.
class InputPassportElementPassport extends InputPassportElement {
  
  /// **InputPassportElementPassport** *(inputPassportElementPassport)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's passport.
  ///
  /// * [passport]: The passport to be saved.
  const InputPassportElementPassport({
    required this.passport,
  });
  
  /// The passport to be saved
  final InputIdentityDocument passport;
  
  /// Parse from a json
  factory InputPassportElementPassport.fromJson(Map<String, dynamic> json) => InputPassportElementPassport(
    passport: InputIdentityDocument.fromJson(json['passport']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "passport": passport.toJson(),
    };
  }
  
  @override
  InputPassportElementPassport copyWith({
    InputIdentityDocument? passport,
  }) => InputPassportElementPassport(
    passport: passport ?? this.passport,
  );

  static const String constructor = 'inputPassportElementPassport';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementDriverLicense** *(inputPassportElementDriverLicense)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's driver license.
  ///
  /// * [driverLicense]: The driver license to be saved.
class InputPassportElementDriverLicense extends InputPassportElement {
  
  /// **InputPassportElementDriverLicense** *(inputPassportElementDriverLicense)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's driver license.
  ///
  /// * [driverLicense]: The driver license to be saved.
  const InputPassportElementDriverLicense({
    required this.driverLicense,
  });
  
  /// The driver license to be saved
  final InputIdentityDocument driverLicense;
  
  /// Parse from a json
  factory InputPassportElementDriverLicense.fromJson(Map<String, dynamic> json) => InputPassportElementDriverLicense(
    driverLicense: InputIdentityDocument.fromJson(json['driver_license']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "driver_license": driverLicense.toJson(),
    };
  }
  
  @override
  InputPassportElementDriverLicense copyWith({
    InputIdentityDocument? driverLicense,
  }) => InputPassportElementDriverLicense(
    driverLicense: driverLicense ?? this.driverLicense,
  );

  static const String constructor = 'inputPassportElementDriverLicense';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementIdentityCard** *(inputPassportElementIdentityCard)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's identity card.
  ///
  /// * [identityCard]: The identity card to be saved.
class InputPassportElementIdentityCard extends InputPassportElement {
  
  /// **InputPassportElementIdentityCard** *(inputPassportElementIdentityCard)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's identity card.
  ///
  /// * [identityCard]: The identity card to be saved.
  const InputPassportElementIdentityCard({
    required this.identityCard,
  });
  
  /// The identity card to be saved
  final InputIdentityDocument identityCard;
  
  /// Parse from a json
  factory InputPassportElementIdentityCard.fromJson(Map<String, dynamic> json) => InputPassportElementIdentityCard(
    identityCard: InputIdentityDocument.fromJson(json['identity_card']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "identity_card": identityCard.toJson(),
    };
  }
  
  @override
  InputPassportElementIdentityCard copyWith({
    InputIdentityDocument? identityCard,
  }) => InputPassportElementIdentityCard(
    identityCard: identityCard ?? this.identityCard,
  );

  static const String constructor = 'inputPassportElementIdentityCard';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementInternalPassport** *(inputPassportElementInternalPassport)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's internal passport.
  ///
  /// * [internalPassport]: The internal passport to be saved.
class InputPassportElementInternalPassport extends InputPassportElement {
  
  /// **InputPassportElementInternalPassport** *(inputPassportElementInternalPassport)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's internal passport.
  ///
  /// * [internalPassport]: The internal passport to be saved.
  const InputPassportElementInternalPassport({
    required this.internalPassport,
  });
  
  /// The internal passport to be saved
  final InputIdentityDocument internalPassport;
  
  /// Parse from a json
  factory InputPassportElementInternalPassport.fromJson(Map<String, dynamic> json) => InputPassportElementInternalPassport(
    internalPassport: InputIdentityDocument.fromJson(json['internal_passport']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "internal_passport": internalPassport.toJson(),
    };
  }
  
  @override
  InputPassportElementInternalPassport copyWith({
    InputIdentityDocument? internalPassport,
  }) => InputPassportElementInternalPassport(
    internalPassport: internalPassport ?? this.internalPassport,
  );

  static const String constructor = 'inputPassportElementInternalPassport';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementAddress** *(inputPassportElementAddress)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's address.
  ///
  /// * [address]: The address to be saved.
class InputPassportElementAddress extends InputPassportElement {
  
  /// **InputPassportElementAddress** *(inputPassportElementAddress)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's address.
  ///
  /// * [address]: The address to be saved.
  const InputPassportElementAddress({
    required this.address,
  });
  
  /// The address to be saved
  final Address address;
  
  /// Parse from a json
  factory InputPassportElementAddress.fromJson(Map<String, dynamic> json) => InputPassportElementAddress(
    address: Address.fromJson(json['address']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "address": address.toJson(),
    };
  }
  
  @override
  InputPassportElementAddress copyWith({
    Address? address,
  }) => InputPassportElementAddress(
    address: address ?? this.address,
  );

  static const String constructor = 'inputPassportElementAddress';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementUtilityBill** *(inputPassportElementUtilityBill)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's utility bill.
  ///
  /// * [utilityBill]: The utility bill to be saved.
class InputPassportElementUtilityBill extends InputPassportElement {
  
  /// **InputPassportElementUtilityBill** *(inputPassportElementUtilityBill)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's utility bill.
  ///
  /// * [utilityBill]: The utility bill to be saved.
  const InputPassportElementUtilityBill({
    required this.utilityBill,
  });
  
  /// The utility bill to be saved
  final InputPersonalDocument utilityBill;
  
  /// Parse from a json
  factory InputPassportElementUtilityBill.fromJson(Map<String, dynamic> json) => InputPassportElementUtilityBill(
    utilityBill: InputPersonalDocument.fromJson(json['utility_bill']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "utility_bill": utilityBill.toJson(),
    };
  }
  
  @override
  InputPassportElementUtilityBill copyWith({
    InputPersonalDocument? utilityBill,
  }) => InputPassportElementUtilityBill(
    utilityBill: utilityBill ?? this.utilityBill,
  );

  static const String constructor = 'inputPassportElementUtilityBill';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementBankStatement** *(inputPassportElementBankStatement)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's bank statement.
  ///
  /// * [bankStatement]: The bank statement to be saved.
class InputPassportElementBankStatement extends InputPassportElement {
  
  /// **InputPassportElementBankStatement** *(inputPassportElementBankStatement)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's bank statement.
  ///
  /// * [bankStatement]: The bank statement to be saved.
  const InputPassportElementBankStatement({
    required this.bankStatement,
  });
  
  /// The bank statement to be saved
  final InputPersonalDocument bankStatement;
  
  /// Parse from a json
  factory InputPassportElementBankStatement.fromJson(Map<String, dynamic> json) => InputPassportElementBankStatement(
    bankStatement: InputPersonalDocument.fromJson(json['bank_statement']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "bank_statement": bankStatement.toJson(),
    };
  }
  
  @override
  InputPassportElementBankStatement copyWith({
    InputPersonalDocument? bankStatement,
  }) => InputPassportElementBankStatement(
    bankStatement: bankStatement ?? this.bankStatement,
  );

  static const String constructor = 'inputPassportElementBankStatement';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementRentalAgreement** *(inputPassportElementRentalAgreement)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's rental agreement.
  ///
  /// * [rentalAgreement]: The rental agreement to be saved.
class InputPassportElementRentalAgreement extends InputPassportElement {
  
  /// **InputPassportElementRentalAgreement** *(inputPassportElementRentalAgreement)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's rental agreement.
  ///
  /// * [rentalAgreement]: The rental agreement to be saved.
  const InputPassportElementRentalAgreement({
    required this.rentalAgreement,
  });
  
  /// The rental agreement to be saved
  final InputPersonalDocument rentalAgreement;
  
  /// Parse from a json
  factory InputPassportElementRentalAgreement.fromJson(Map<String, dynamic> json) => InputPassportElementRentalAgreement(
    rentalAgreement: InputPersonalDocument.fromJson(json['rental_agreement']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "rental_agreement": rentalAgreement.toJson(),
    };
  }
  
  @override
  InputPassportElementRentalAgreement copyWith({
    InputPersonalDocument? rentalAgreement,
  }) => InputPassportElementRentalAgreement(
    rentalAgreement: rentalAgreement ?? this.rentalAgreement,
  );

  static const String constructor = 'inputPassportElementRentalAgreement';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementPassportRegistration** *(inputPassportElementPassportRegistration)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's passport registration.
  ///
  /// * [passportRegistration]: The passport registration page to be saved.
class InputPassportElementPassportRegistration extends InputPassportElement {
  
  /// **InputPassportElementPassportRegistration** *(inputPassportElementPassportRegistration)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's passport registration.
  ///
  /// * [passportRegistration]: The passport registration page to be saved.
  const InputPassportElementPassportRegistration({
    required this.passportRegistration,
  });
  
  /// The passport registration page to be saved
  final InputPersonalDocument passportRegistration;
  
  /// Parse from a json
  factory InputPassportElementPassportRegistration.fromJson(Map<String, dynamic> json) => InputPassportElementPassportRegistration(
    passportRegistration: InputPersonalDocument.fromJson(json['passport_registration']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "passport_registration": passportRegistration.toJson(),
    };
  }
  
  @override
  InputPassportElementPassportRegistration copyWith({
    InputPersonalDocument? passportRegistration,
  }) => InputPassportElementPassportRegistration(
    passportRegistration: passportRegistration ?? this.passportRegistration,
  );

  static const String constructor = 'inputPassportElementPassportRegistration';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementTemporaryRegistration** *(inputPassportElementTemporaryRegistration)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's temporary registration.
  ///
  /// * [temporaryRegistration]: The temporary registration document to be saved.
class InputPassportElementTemporaryRegistration extends InputPassportElement {
  
  /// **InputPassportElementTemporaryRegistration** *(inputPassportElementTemporaryRegistration)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's temporary registration.
  ///
  /// * [temporaryRegistration]: The temporary registration document to be saved.
  const InputPassportElementTemporaryRegistration({
    required this.temporaryRegistration,
  });
  
  /// The temporary registration document to be saved
  final InputPersonalDocument temporaryRegistration;
  
  /// Parse from a json
  factory InputPassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) => InputPassportElementTemporaryRegistration(
    temporaryRegistration: InputPersonalDocument.fromJson(json['temporary_registration']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "temporary_registration": temporaryRegistration.toJson(),
    };
  }
  
  @override
  InputPassportElementTemporaryRegistration copyWith({
    InputPersonalDocument? temporaryRegistration,
  }) => InputPassportElementTemporaryRegistration(
    temporaryRegistration: temporaryRegistration ?? this.temporaryRegistration,
  );

  static const String constructor = 'inputPassportElementTemporaryRegistration';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementPhoneNumber** *(inputPassportElementPhoneNumber)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's phone number.
  ///
  /// * [phoneNumber]: The phone number to be saved.
class InputPassportElementPhoneNumber extends InputPassportElement {
  
  /// **InputPassportElementPhoneNumber** *(inputPassportElementPhoneNumber)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's phone number.
  ///
  /// * [phoneNumber]: The phone number to be saved.
  const InputPassportElementPhoneNumber({
    required this.phoneNumber,
  });
  
  /// The phone number to be saved
  final String phoneNumber;
  
  /// Parse from a json
  factory InputPassportElementPhoneNumber.fromJson(Map<String, dynamic> json) => InputPassportElementPhoneNumber(
    phoneNumber: json['phone_number'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "phone_number": phoneNumber,
    };
  }
  
  @override
  InputPassportElementPhoneNumber copyWith({
    String? phoneNumber,
  }) => InputPassportElementPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  static const String constructor = 'inputPassportElementPhoneNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementEmailAddress** *(inputPassportElementEmailAddress)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's email address.
  ///
  /// * [emailAddress]: The email address to be saved.
class InputPassportElementEmailAddress extends InputPassportElement {
  
  /// **InputPassportElementEmailAddress** *(inputPassportElementEmailAddress)* - child of InputPassportElement
  ///
  /// A Telegram Passport element to be saved containing the user's email address.
  ///
  /// * [emailAddress]: The email address to be saved.
  const InputPassportElementEmailAddress({
    required this.emailAddress,
  });
  
  /// The email address to be saved
  final String emailAddress;
  
  /// Parse from a json
  factory InputPassportElementEmailAddress.fromJson(Map<String, dynamic> json) => InputPassportElementEmailAddress(
    emailAddress: json['email_address'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "email_address": emailAddress,
    };
  }
  
  @override
  InputPassportElementEmailAddress copyWith({
    String? emailAddress,
  }) => InputPassportElementEmailAddress(
    emailAddress: emailAddress ?? this.emailAddress,
  );

  static const String constructor = 'inputPassportElementEmailAddress';
  
  @override
  String getConstructor() => constructor;
}
