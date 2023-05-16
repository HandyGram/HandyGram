part of '../tdapi.dart';

/// **Contact** *(contact)* - basic class
///
/// Describes a user contact.
///
/// * [phoneNumber]: Phone number of the user.
/// * [firstName]: First name of the user; 1-255 characters in length.
/// * [lastName]: Last name of the user.
/// * [vcard]: Additional data about the user in a form of vCard; 0-2048 bytes in length.
/// * [userId]: Identifier of the user, if known; 0 otherwise.
final class Contact extends TdObject {
  
  /// **Contact** *(contact)* - basic class
  ///
  /// Describes a user contact.
  ///
  /// * [phoneNumber]: Phone number of the user.
  /// * [firstName]: First name of the user; 1-255 characters in length.
  /// * [lastName]: Last name of the user.
  /// * [vcard]: Additional data about the user in a form of vCard; 0-2048 bytes in length.
  /// * [userId]: Identifier of the user, if known; 0 otherwise.
  const Contact({
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    required this.vcard,
    required this.userId,
  });
  
  /// Phone number of the user
  final String phoneNumber;

  /// First name of the user; 1-255 characters in length
  final String firstName;

  /// Last name of the user
  final String lastName;

  /// Additional data about the user in a form of vCard; 0-2048 bytes in length
  final String vcard;

  /// Identifier of the user, if known; 0 otherwise
  final int userId;
  
  /// Parse from a json
  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
    phoneNumber: json['phone_number'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    vcard: json['vcard'],
    userId: json['user_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "phone_number": phoneNumber,
      "first_name": firstName,
      "last_name": lastName,
      "vcard": vcard,
      "user_id": userId,
		};
	}

  
  Contact copyWith({
    String? phoneNumber,
    String? firstName,
    String? lastName,
    String? vcard,
    int? userId,
  }) => Contact(
    phoneNumber: phoneNumber ?? this.phoneNumber,
    firstName: firstName ?? this.firstName,
    lastName: lastName ?? this.lastName,
    vcard: vcard ?? this.vcard,
    userId: userId ?? this.userId,
  );

  static const String objectType = 'contact';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
