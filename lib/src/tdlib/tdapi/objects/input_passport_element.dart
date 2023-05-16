part of '../tdapi.dart';

/// **InputPassportElement** *(inputPassportElement)* - parent
///
/// Contains information about a Telegram Passport element to be saved.
sealed class InputPassportElement extends TdObject {
  
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
      case InputPassportElementPersonalDetails.objectType:
        return InputPassportElementPersonalDetails.fromJson(json);
      case InputPassportElementPassport.objectType:
        return InputPassportElementPassport.fromJson(json);
      case InputPassportElementDriverLicense.objectType:
        return InputPassportElementDriverLicense.fromJson(json);
      case InputPassportElementIdentityCard.objectType:
        return InputPassportElementIdentityCard.fromJson(json);
      case InputPassportElementInternalPassport.objectType:
        return InputPassportElementInternalPassport.fromJson(json);
      case InputPassportElementAddress.objectType:
        return InputPassportElementAddress.fromJson(json);
      case InputPassportElementUtilityBill.objectType:
        return InputPassportElementUtilityBill.fromJson(json);
      case InputPassportElementBankStatement.objectType:
        return InputPassportElementBankStatement.fromJson(json);
      case InputPassportElementRentalAgreement.objectType:
        return InputPassportElementRentalAgreement.fromJson(json);
      case InputPassportElementPassportRegistration.objectType:
        return InputPassportElementPassportRegistration.fromJson(json);
      case InputPassportElementTemporaryRegistration.objectType:
        return InputPassportElementTemporaryRegistration.fromJson(json);
      case InputPassportElementPhoneNumber.objectType:
        return InputPassportElementPhoneNumber.fromJson(json);
      case InputPassportElementEmailAddress.objectType:
        return InputPassportElementEmailAddress.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of InputPassportElement)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  InputPassportElement copyWith();

  static const String objectType = 'inputPassportElement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementPersonalDetails** *(inputPassportElementPersonalDetails)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's personal details.
///
/// * [personalDetails]: Personal details of the user.
final class InputPassportElementPersonalDetails extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "personal_details": personalDetails.toJson(),
		};
	}

  
  @override
  InputPassportElementPersonalDetails copyWith({
    PersonalDetails? personalDetails,
  }) => InputPassportElementPersonalDetails(
    personalDetails: personalDetails ?? this.personalDetails,
  );

  static const String objectType = 'inputPassportElementPersonalDetails';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementPassport** *(inputPassportElementPassport)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's passport.
///
/// * [passport]: The passport to be saved.
final class InputPassportElementPassport extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "passport": passport.toJson(),
		};
	}

  
  @override
  InputPassportElementPassport copyWith({
    InputIdentityDocument? passport,
  }) => InputPassportElementPassport(
    passport: passport ?? this.passport,
  );

  static const String objectType = 'inputPassportElementPassport';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementDriverLicense** *(inputPassportElementDriverLicense)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's driver license.
///
/// * [driverLicense]: The driver license to be saved.
final class InputPassportElementDriverLicense extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "driver_license": driverLicense.toJson(),
		};
	}

  
  @override
  InputPassportElementDriverLicense copyWith({
    InputIdentityDocument? driverLicense,
  }) => InputPassportElementDriverLicense(
    driverLicense: driverLicense ?? this.driverLicense,
  );

  static const String objectType = 'inputPassportElementDriverLicense';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementIdentityCard** *(inputPassportElementIdentityCard)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's identity card.
///
/// * [identityCard]: The identity card to be saved.
final class InputPassportElementIdentityCard extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "identity_card": identityCard.toJson(),
		};
	}

  
  @override
  InputPassportElementIdentityCard copyWith({
    InputIdentityDocument? identityCard,
  }) => InputPassportElementIdentityCard(
    identityCard: identityCard ?? this.identityCard,
  );

  static const String objectType = 'inputPassportElementIdentityCard';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementInternalPassport** *(inputPassportElementInternalPassport)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's internal passport.
///
/// * [internalPassport]: The internal passport to be saved.
final class InputPassportElementInternalPassport extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "internal_passport": internalPassport.toJson(),
		};
	}

  
  @override
  InputPassportElementInternalPassport copyWith({
    InputIdentityDocument? internalPassport,
  }) => InputPassportElementInternalPassport(
    internalPassport: internalPassport ?? this.internalPassport,
  );

  static const String objectType = 'inputPassportElementInternalPassport';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementAddress** *(inputPassportElementAddress)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's address.
///
/// * [address]: The address to be saved.
final class InputPassportElementAddress extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "address": address.toJson(),
		};
	}

  
  @override
  InputPassportElementAddress copyWith({
    Address? address,
  }) => InputPassportElementAddress(
    address: address ?? this.address,
  );

  static const String objectType = 'inputPassportElementAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementUtilityBill** *(inputPassportElementUtilityBill)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's utility bill.
///
/// * [utilityBill]: The utility bill to be saved.
final class InputPassportElementUtilityBill extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "utility_bill": utilityBill.toJson(),
		};
	}

  
  @override
  InputPassportElementUtilityBill copyWith({
    InputPersonalDocument? utilityBill,
  }) => InputPassportElementUtilityBill(
    utilityBill: utilityBill ?? this.utilityBill,
  );

  static const String objectType = 'inputPassportElementUtilityBill';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementBankStatement** *(inputPassportElementBankStatement)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's bank statement.
///
/// * [bankStatement]: The bank statement to be saved.
final class InputPassportElementBankStatement extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "bank_statement": bankStatement.toJson(),
		};
	}

  
  @override
  InputPassportElementBankStatement copyWith({
    InputPersonalDocument? bankStatement,
  }) => InputPassportElementBankStatement(
    bankStatement: bankStatement ?? this.bankStatement,
  );

  static const String objectType = 'inputPassportElementBankStatement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementRentalAgreement** *(inputPassportElementRentalAgreement)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's rental agreement.
///
/// * [rentalAgreement]: The rental agreement to be saved.
final class InputPassportElementRentalAgreement extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "rental_agreement": rentalAgreement.toJson(),
		};
	}

  
  @override
  InputPassportElementRentalAgreement copyWith({
    InputPersonalDocument? rentalAgreement,
  }) => InputPassportElementRentalAgreement(
    rentalAgreement: rentalAgreement ?? this.rentalAgreement,
  );

  static const String objectType = 'inputPassportElementRentalAgreement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementPassportRegistration** *(inputPassportElementPassportRegistration)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's passport registration.
///
/// * [passportRegistration]: The passport registration page to be saved.
final class InputPassportElementPassportRegistration extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "passport_registration": passportRegistration.toJson(),
		};
	}

  
  @override
  InputPassportElementPassportRegistration copyWith({
    InputPersonalDocument? passportRegistration,
  }) => InputPassportElementPassportRegistration(
    passportRegistration: passportRegistration ?? this.passportRegistration,
  );

  static const String objectType = 'inputPassportElementPassportRegistration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementTemporaryRegistration** *(inputPassportElementTemporaryRegistration)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's temporary registration.
///
/// * [temporaryRegistration]: The temporary registration document to be saved.
final class InputPassportElementTemporaryRegistration extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "temporary_registration": temporaryRegistration.toJson(),
		};
	}

  
  @override
  InputPassportElementTemporaryRegistration copyWith({
    InputPersonalDocument? temporaryRegistration,
  }) => InputPassportElementTemporaryRegistration(
    temporaryRegistration: temporaryRegistration ?? this.temporaryRegistration,
  );

  static const String objectType = 'inputPassportElementTemporaryRegistration';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementPhoneNumber** *(inputPassportElementPhoneNumber)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's phone number.
///
/// * [phoneNumber]: The phone number to be saved.
final class InputPassportElementPhoneNumber extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "phone_number": phoneNumber,
		};
	}

  
  @override
  InputPassportElementPhoneNumber copyWith({
    String? phoneNumber,
  }) => InputPassportElementPhoneNumber(
    phoneNumber: phoneNumber ?? this.phoneNumber,
  );

  static const String objectType = 'inputPassportElementPhoneNumber';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **InputPassportElementEmailAddress** *(inputPassportElementEmailAddress)* - child of InputPassportElement
///
/// A Telegram Passport element to be saved containing the user's email address.
///
/// * [emailAddress]: The email address to be saved.
final class InputPassportElementEmailAddress extends InputPassportElement {
  
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
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "email_address": emailAddress,
		};
	}

  
  @override
  InputPassportElementEmailAddress copyWith({
    String? emailAddress,
  }) => InputPassportElementEmailAddress(
    emailAddress: emailAddress ?? this.emailAddress,
  );

  static const String objectType = 'inputPassportElementEmailAddress';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
