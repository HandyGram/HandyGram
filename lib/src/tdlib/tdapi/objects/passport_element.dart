part of '../tdapi.dart';

/// **PassportElement** *(passportElement)* - parent
///
/// Contains information about a Telegram Passport element.
sealed class PassportElement extends TdObject {
  
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
      case PassportElementPersonalDetails.objectType:
        return PassportElementPersonalDetails.fromJson(json);
      case PassportElementPassport.objectType:
        return PassportElementPassport.fromJson(json);
      case PassportElementDriverLicense.objectType:
        return PassportElementDriverLicense.fromJson(json);
      case PassportElementIdentityCard.objectType:
        return PassportElementIdentityCard.fromJson(json);
      case PassportElementInternalPassport.objectType:
        return PassportElementInternalPassport.fromJson(json);
      case PassportElementAddress.objectType:
        return PassportElementAddress.fromJson(json);
      case PassportElementUtilityBill.objectType:
        return PassportElementUtilityBill.fromJson(json);
      case PassportElementBankStatement.objectType:
        return PassportElementBankStatement.fromJson(json);
      case PassportElementRentalAgreement.objectType:
        return PassportElementRentalAgreement.fromJson(json);
      case PassportElementPassportRegistration.objectType:
        return PassportElementPassportRegistration.fromJson(json);
      case PassportElementTemporaryRegistration.objectType:
        return PassportElementTemporaryRegistration.fromJson(json);
      case PassportElementPhoneNumber.objectType:
        return PassportElementPhoneNumber.fromJson(json);
      case PassportElementEmailAddress.objectType:
        return PassportElementEmailAddress.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PassportElement)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PassportElement copyWith();

  static const String objectType = 'passportElement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementPersonalDetails** *(passportElementPersonalDetails)* - child of PassportElement
///
/// A Telegram Passport element containing the user's personal details.
///
/// * [personalDetails]: Personal details of the user.
final class PassportElementPersonalDetails extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementPersonalDetails';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementPassport** *(passportElementPassport)* - child of PassportElement
///
/// A Telegram Passport element containing the user's passport.
///
/// * [passport]: Passport.
final class PassportElementPassport extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementPassport';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementDriverLicense** *(passportElementDriverLicense)* - child of PassportElement
///
/// A Telegram Passport element containing the user's driver license.
///
/// * [driverLicense]: Driver license.
final class PassportElementDriverLicense extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementDriverLicense';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementIdentityCard** *(passportElementIdentityCard)* - child of PassportElement
///
/// A Telegram Passport element containing the user's identity card.
///
/// * [identityCard]: Identity card.
final class PassportElementIdentityCard extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementIdentityCard';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementInternalPassport** *(passportElementInternalPassport)* - child of PassportElement
///
/// A Telegram Passport element containing the user's internal passport.
///
/// * [internalPassport]: Internal passport.
final class PassportElementInternalPassport extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementInternalPassport';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementAddress** *(passportElementAddress)* - child of PassportElement
///
/// A Telegram Passport element containing the user's address.
///
/// * [address]: Address.
final class PassportElementAddress extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementUtilityBill** *(passportElementUtilityBill)* - child of PassportElement
///
/// A Telegram Passport element containing the user's utility bill.
///
/// * [utilityBill]: Utility bill.
final class PassportElementUtilityBill extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementUtilityBill';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementBankStatement** *(passportElementBankStatement)* - child of PassportElement
///
/// A Telegram Passport element containing the user's bank statement.
///
/// * [bankStatement]: Bank statement.
final class PassportElementBankStatement extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementBankStatement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementRentalAgreement** *(passportElementRentalAgreement)* - child of PassportElement
///
/// A Telegram Passport element containing the user's rental agreement.
///
/// * [rentalAgreement]: Rental agreement.
final class PassportElementRentalAgreement extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementRentalAgreement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementPassportRegistration** *(passportElementPassportRegistration)* - child of PassportElement
///
/// A Telegram Passport element containing the user's passport registration pages.
///
/// * [passportRegistration]: Passport registration pages.
final class PassportElementPassportRegistration extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementPassportRegistration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementTemporaryRegistration** *(passportElementTemporaryRegistration)* - child of PassportElement
///
/// A Telegram Passport element containing the user's temporary registration.
///
/// * [temporaryRegistration]: Temporary registration.
final class PassportElementTemporaryRegistration extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementTemporaryRegistration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementPhoneNumber** *(passportElementPhoneNumber)* - child of PassportElement
///
/// A Telegram Passport element containing the user's phone number.
///
/// * [phoneNumber]: Phone number.
final class PassportElementPhoneNumber extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementEmailAddress** *(passportElementEmailAddress)* - child of PassportElement
///
/// A Telegram Passport element containing the user's email address.
///
/// * [emailAddress]: Email address.
final class PassportElementEmailAddress extends PassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
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

  static const String objectType = 'passportElementEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
