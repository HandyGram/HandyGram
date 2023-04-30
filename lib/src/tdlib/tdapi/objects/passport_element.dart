part of '../tdapi.dart';

/// **PassportElement** *(passportElement)* - parent
  ///
  /// Contains information about a Telegram Passport element.
class PassportElement extends TdObject {
  
  /// **PassportElement** *(passportElement)* - parent
  ///
  /// Contains information about a Telegram Passport element.
  const PassportElement();
  
  /// a PassportElement return type can be :
  /// * [PassportElementPersonalDetails]
  /// * [PassportElementPassport]
  /// * [PassportElementDriverLicense]
  /// * [PassportElementIdentityCard]
  /// * [PassportElementInternalPassport]
  /// * [PassportElementAddress]
  /// * [PassportElementUtilityBill]
  /// * [PassportElementBankStatement]
  /// * [PassportElementRentalAgreement]
  /// * [PassportElementPassportRegistration]
  /// * [PassportElementTemporaryRegistration]
  /// * [PassportElementPhoneNumber]
  /// * [PassportElementEmailAddress]
  factory PassportElement.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PassportElementPersonalDetails.constructor:
        return PassportElementPersonalDetails.fromJson(json);
      case PassportElementPassport.constructor:
        return PassportElementPassport.fromJson(json);
      case PassportElementDriverLicense.constructor:
        return PassportElementDriverLicense.fromJson(json);
      case PassportElementIdentityCard.constructor:
        return PassportElementIdentityCard.fromJson(json);
      case PassportElementInternalPassport.constructor:
        return PassportElementInternalPassport.fromJson(json);
      case PassportElementAddress.constructor:
        return PassportElementAddress.fromJson(json);
      case PassportElementUtilityBill.constructor:
        return PassportElementUtilityBill.fromJson(json);
      case PassportElementBankStatement.constructor:
        return PassportElementBankStatement.fromJson(json);
      case PassportElementRentalAgreement.constructor:
        return PassportElementRentalAgreement.fromJson(json);
      case PassportElementPassportRegistration.constructor:
        return PassportElementPassportRegistration.fromJson(json);
      case PassportElementTemporaryRegistration.constructor:
        return PassportElementTemporaryRegistration.fromJson(json);
      case PassportElementPhoneNumber.constructor:
        return PassportElementPhoneNumber.fromJson(json);
      case PassportElementEmailAddress.constructor:
        return PassportElementEmailAddress.fromJson(json);
      default:
        return const PassportElement();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PassportElement copyWith() => const PassportElement();

  static const String constructor = 'passportElement';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementPersonalDetails** *(passportElementPersonalDetails)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's personal details.
  ///
  /// * [personalDetails]: Personal details of the user.
class PassportElementPersonalDetails extends PassportElement {
  
  /// **PassportElementPersonalDetails** *(passportElementPersonalDetails)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's personal details.
  ///
  /// * [personalDetails]: Personal details of the user.
  const PassportElementPersonalDetails({
    required this.personalDetails,
    this.extra,
    this.clientId,
  });
  
  /// Personal details of the user
  final PersonalDetails personalDetails;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPersonalDetails.fromJson(Map<String, dynamic> json) => PassportElementPersonalDetails(
    personalDetails: PersonalDetails.fromJson(json['personal_details']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "personal_details": personalDetails.toJson(),
    };
  }
  
  @override
  PassportElementPersonalDetails copyWith({
    PersonalDetails? personalDetails,
    dynamic extra,
    int? clientId,
  }) => PassportElementPersonalDetails(
    personalDetails: personalDetails ?? this.personalDetails,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementPersonalDetails';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementPassport** *(passportElementPassport)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's passport.
  ///
  /// * [passport]: Passport.
class PassportElementPassport extends PassportElement {
  
  /// **PassportElementPassport** *(passportElementPassport)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's passport.
  ///
  /// * [passport]: Passport.
  const PassportElementPassport({
    required this.passport,
    this.extra,
    this.clientId,
  });
  
  /// Passport
  final IdentityDocument passport;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPassport.fromJson(Map<String, dynamic> json) => PassportElementPassport(
    passport: IdentityDocument.fromJson(json['passport']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "passport": passport.toJson(),
    };
  }
  
  @override
  PassportElementPassport copyWith({
    IdentityDocument? passport,
    dynamic extra,
    int? clientId,
  }) => PassportElementPassport(
    passport: passport ?? this.passport,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementPassport';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementDriverLicense** *(passportElementDriverLicense)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's driver license.
  ///
  /// * [driverLicense]: Driver license.
class PassportElementDriverLicense extends PassportElement {
  
  /// **PassportElementDriverLicense** *(passportElementDriverLicense)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's driver license.
  ///
  /// * [driverLicense]: Driver license.
  const PassportElementDriverLicense({
    required this.driverLicense,
    this.extra,
    this.clientId,
  });
  
  /// Driver license
  final IdentityDocument driverLicense;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementDriverLicense.fromJson(Map<String, dynamic> json) => PassportElementDriverLicense(
    driverLicense: IdentityDocument.fromJson(json['driver_license']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "driver_license": driverLicense.toJson(),
    };
  }
  
  @override
  PassportElementDriverLicense copyWith({
    IdentityDocument? driverLicense,
    dynamic extra,
    int? clientId,
  }) => PassportElementDriverLicense(
    driverLicense: driverLicense ?? this.driverLicense,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementDriverLicense';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementIdentityCard** *(passportElementIdentityCard)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's identity card.
  ///
  /// * [identityCard]: Identity card.
class PassportElementIdentityCard extends PassportElement {
  
  /// **PassportElementIdentityCard** *(passportElementIdentityCard)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's identity card.
  ///
  /// * [identityCard]: Identity card.
  const PassportElementIdentityCard({
    required this.identityCard,
    this.extra,
    this.clientId,
  });
  
  /// Identity card
  final IdentityDocument identityCard;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementIdentityCard.fromJson(Map<String, dynamic> json) => PassportElementIdentityCard(
    identityCard: IdentityDocument.fromJson(json['identity_card']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "identity_card": identityCard.toJson(),
    };
  }
  
  @override
  PassportElementIdentityCard copyWith({
    IdentityDocument? identityCard,
    dynamic extra,
    int? clientId,
  }) => PassportElementIdentityCard(
    identityCard: identityCard ?? this.identityCard,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementIdentityCard';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementInternalPassport** *(passportElementInternalPassport)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's internal passport.
  ///
  /// * [internalPassport]: Internal passport.
class PassportElementInternalPassport extends PassportElement {
  
  /// **PassportElementInternalPassport** *(passportElementInternalPassport)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's internal passport.
  ///
  /// * [internalPassport]: Internal passport.
  const PassportElementInternalPassport({
    required this.internalPassport,
    this.extra,
    this.clientId,
  });
  
  /// Internal passport
  final IdentityDocument internalPassport;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementInternalPassport.fromJson(Map<String, dynamic> json) => PassportElementInternalPassport(
    internalPassport: IdentityDocument.fromJson(json['internal_passport']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "internal_passport": internalPassport.toJson(),
    };
  }
  
  @override
  PassportElementInternalPassport copyWith({
    IdentityDocument? internalPassport,
    dynamic extra,
    int? clientId,
  }) => PassportElementInternalPassport(
    internalPassport: internalPassport ?? this.internalPassport,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementInternalPassport';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementAddress** *(passportElementAddress)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's address.
  ///
  /// * [address]: Address.
class PassportElementAddress extends PassportElement {
  
  /// **PassportElementAddress** *(passportElementAddress)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's address.
  ///
  /// * [address]: Address.
  const PassportElementAddress({
    required this.address,
    this.extra,
    this.clientId,
  });
  
  /// Address
  final Address address;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementAddress.fromJson(Map<String, dynamic> json) => PassportElementAddress(
    address: Address.fromJson(json['address']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "address": address.toJson(),
    };
  }
  
  @override
  PassportElementAddress copyWith({
    Address? address,
    dynamic extra,
    int? clientId,
  }) => PassportElementAddress(
    address: address ?? this.address,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementAddress';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementUtilityBill** *(passportElementUtilityBill)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's utility bill.
  ///
  /// * [utilityBill]: Utility bill.
class PassportElementUtilityBill extends PassportElement {
  
  /// **PassportElementUtilityBill** *(passportElementUtilityBill)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's utility bill.
  ///
  /// * [utilityBill]: Utility bill.
  const PassportElementUtilityBill({
    required this.utilityBill,
    this.extra,
    this.clientId,
  });
  
  /// Utility bill
  final PersonalDocument utilityBill;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementUtilityBill.fromJson(Map<String, dynamic> json) => PassportElementUtilityBill(
    utilityBill: PersonalDocument.fromJson(json['utility_bill']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "utility_bill": utilityBill.toJson(),
    };
  }
  
  @override
  PassportElementUtilityBill copyWith({
    PersonalDocument? utilityBill,
    dynamic extra,
    int? clientId,
  }) => PassportElementUtilityBill(
    utilityBill: utilityBill ?? this.utilityBill,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementUtilityBill';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementBankStatement** *(passportElementBankStatement)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's bank statement.
  ///
  /// * [bankStatement]: Bank statement.
class PassportElementBankStatement extends PassportElement {
  
  /// **PassportElementBankStatement** *(passportElementBankStatement)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's bank statement.
  ///
  /// * [bankStatement]: Bank statement.
  const PassportElementBankStatement({
    required this.bankStatement,
    this.extra,
    this.clientId,
  });
  
  /// Bank statement
  final PersonalDocument bankStatement;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementBankStatement.fromJson(Map<String, dynamic> json) => PassportElementBankStatement(
    bankStatement: PersonalDocument.fromJson(json['bank_statement']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "bank_statement": bankStatement.toJson(),
    };
  }
  
  @override
  PassportElementBankStatement copyWith({
    PersonalDocument? bankStatement,
    dynamic extra,
    int? clientId,
  }) => PassportElementBankStatement(
    bankStatement: bankStatement ?? this.bankStatement,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementBankStatement';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementRentalAgreement** *(passportElementRentalAgreement)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's rental agreement.
  ///
  /// * [rentalAgreement]: Rental agreement.
class PassportElementRentalAgreement extends PassportElement {
  
  /// **PassportElementRentalAgreement** *(passportElementRentalAgreement)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's rental agreement.
  ///
  /// * [rentalAgreement]: Rental agreement.
  const PassportElementRentalAgreement({
    required this.rentalAgreement,
    this.extra,
    this.clientId,
  });
  
  /// Rental agreement
  final PersonalDocument rentalAgreement;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementRentalAgreement.fromJson(Map<String, dynamic> json) => PassportElementRentalAgreement(
    rentalAgreement: PersonalDocument.fromJson(json['rental_agreement']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "rental_agreement": rentalAgreement.toJson(),
    };
  }
  
  @override
  PassportElementRentalAgreement copyWith({
    PersonalDocument? rentalAgreement,
    dynamic extra,
    int? clientId,
  }) => PassportElementRentalAgreement(
    rentalAgreement: rentalAgreement ?? this.rentalAgreement,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementRentalAgreement';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementPassportRegistration** *(passportElementPassportRegistration)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's passport registration pages.
  ///
  /// * [passportRegistration]: Passport registration pages.
class PassportElementPassportRegistration extends PassportElement {
  
  /// **PassportElementPassportRegistration** *(passportElementPassportRegistration)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's passport registration pages.
  ///
  /// * [passportRegistration]: Passport registration pages.
  const PassportElementPassportRegistration({
    required this.passportRegistration,
    this.extra,
    this.clientId,
  });
  
  /// Passport registration pages
  final PersonalDocument passportRegistration;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPassportRegistration.fromJson(Map<String, dynamic> json) => PassportElementPassportRegistration(
    passportRegistration: PersonalDocument.fromJson(json['passport_registration']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "passport_registration": passportRegistration.toJson(),
    };
  }
  
  @override
  PassportElementPassportRegistration copyWith({
    PersonalDocument? passportRegistration,
    dynamic extra,
    int? clientId,
  }) => PassportElementPassportRegistration(
    passportRegistration: passportRegistration ?? this.passportRegistration,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementPassportRegistration';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementTemporaryRegistration** *(passportElementTemporaryRegistration)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's temporary registration.
  ///
  /// * [temporaryRegistration]: Temporary registration.
class PassportElementTemporaryRegistration extends PassportElement {
  
  /// **PassportElementTemporaryRegistration** *(passportElementTemporaryRegistration)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's temporary registration.
  ///
  /// * [temporaryRegistration]: Temporary registration.
  const PassportElementTemporaryRegistration({
    required this.temporaryRegistration,
    this.extra,
    this.clientId,
  });
  
  /// Temporary registration
  final PersonalDocument temporaryRegistration;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementTemporaryRegistration.fromJson(Map<String, dynamic> json) => PassportElementTemporaryRegistration(
    temporaryRegistration: PersonalDocument.fromJson(json['temporary_registration']),
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "temporary_registration": temporaryRegistration.toJson(),
    };
  }
  
  @override
  PassportElementTemporaryRegistration copyWith({
    PersonalDocument? temporaryRegistration,
    dynamic extra,
    int? clientId,
  }) => PassportElementTemporaryRegistration(
    temporaryRegistration: temporaryRegistration ?? this.temporaryRegistration,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementTemporaryRegistration';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementPhoneNumber** *(passportElementPhoneNumber)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's phone number.
  ///
  /// * [phoneNumber]: Phone number.
class PassportElementPhoneNumber extends PassportElement {
  
  /// **PassportElementPhoneNumber** *(passportElementPhoneNumber)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's phone number.
  ///
  /// * [phoneNumber]: Phone number.
  const PassportElementPhoneNumber({
    required this.phoneNumber,
    this.extra,
    this.clientId,
  });
  
  /// Phone number
  final String phoneNumber;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementPhoneNumber.fromJson(Map<String, dynamic> json) => PassportElementPhoneNumber(
    phoneNumber: json['phone_number'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "phone_number": phoneNumber,
    };
  }
  
  @override
  PassportElementPhoneNumber copyWith({
    String? phoneNumber,
    dynamic extra,
    int? clientId,
  }) => PassportElementPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementPhoneNumber';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementEmailAddress** *(passportElementEmailAddress)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's email address.
  ///
  /// * [emailAddress]: Email address.
class PassportElementEmailAddress extends PassportElement {
  
  /// **PassportElementEmailAddress** *(passportElementEmailAddress)* - child of PassportElement
  ///
  /// A Telegram Passport element containing the user's email address.
  ///
  /// * [emailAddress]: Email address.
  const PassportElementEmailAddress({
    required this.emailAddress,
    this.extra,
    this.clientId,
  });
  
  /// Email address
  final String emailAddress;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory PassportElementEmailAddress.fromJson(Map<String, dynamic> json) => PassportElementEmailAddress(
    emailAddress: json['email_address'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "email_address": emailAddress,
    };
  }
  
  @override
  PassportElementEmailAddress copyWith({
    String? emailAddress,
    dynamic extra,
    int? clientId,
  }) => PassportElementEmailAddress(
    emailAddress: emailAddress ?? this.emailAddress,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String constructor = 'passportElementEmailAddress';
  
  @override
  String getConstructor() => constructor;
}
