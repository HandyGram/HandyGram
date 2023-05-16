part of '../tdapi.dart';

/// **EncryptedPassportElement** *(encryptedPassportElement)* - basic class
///
/// Contains information about an encrypted Telegram Passport element; for bots only.
///
/// * [type]: Type of Telegram Passport element.
/// * [data]: Encrypted JSON-encoded data about the user.
/// * [frontSide]: The front side of an identity document.
/// * [reverseSide]: The reverse side of an identity document; may be null *(optional)*.
/// * [selfie]: Selfie with the document; may be null *(optional)*.
/// * [translation]: List of files containing a certified English translation of the document.
/// * [files]: List of attached files.
/// * [value]: Unencrypted data, phone number or email address.
/// * [hash]: Hash of the entire element.
final class EncryptedPassportElement extends TdObject {
  
  /// **EncryptedPassportElement** *(encryptedPassportElement)* - basic class
  ///
  /// Contains information about an encrypted Telegram Passport element; for bots only.
  ///
  /// * [type]: Type of Telegram Passport element.
  /// * [data]: Encrypted JSON-encoded data about the user.
  /// * [frontSide]: The front side of an identity document.
  /// * [reverseSide]: The reverse side of an identity document; may be null *(optional)*.
  /// * [selfie]: Selfie with the document; may be null *(optional)*.
  /// * [translation]: List of files containing a certified English translation of the document.
  /// * [files]: List of attached files.
  /// * [value]: Unencrypted data, phone number or email address.
  /// * [hash]: Hash of the entire element.
  const EncryptedPassportElement({
    required this.type,
    required this.data,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
    required this.files,
    required this.value,
    required this.hash,
  });
  
  /// Type of Telegram Passport element
  final PassportElementType type;

  /// Encrypted JSON-encoded data about the user
  final String data;

  /// The front side of an identity document
  final DatedFile frontSide;

  /// The reverse side of an identity document; may be null
  final DatedFile? reverseSide;

  /// Selfie with the document; may be null
  final DatedFile? selfie;

  /// List of files containing a certified English translation of the document
  final List<DatedFile> translation;

  /// List of attached files
  final List<DatedFile> files;

  /// Unencrypted data, phone number or email address
  final String value;

  /// Hash of the entire element
  final String hash;
  
  /// Parse from a json
  factory EncryptedPassportElement.fromJson(Map<String, dynamic> json) => EncryptedPassportElement(
    type: PassportElementType.fromJson(json['type']),
    data: json['data'],
    frontSide: DatedFile.fromJson(json['front_side']),
    reverseSide: json['reverse_side'] == null ? null : DatedFile.fromJson(json['reverse_side']),
    selfie: json['selfie'] == null ? null : DatedFile.fromJson(json['selfie']),
    translation: List<DatedFile>.from((json['translation'] ?? []).map((item) => DatedFile.fromJson(item)).toList()),
    files: List<DatedFile>.from((json['files'] ?? []).map((item) => DatedFile.fromJson(item)).toList()),
    value: json['value'],
    hash: json['hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "type": type.toJson(),
      "data": data,
      "front_side": frontSide.toJson(),
      "reverse_side": reverseSide?.toJson(),
      "selfie": selfie?.toJson(),
      "translation": translation.map((i) => i.toJson()).toList(),
      "files": files.map((i) => i.toJson()).toList(),
      "value": value,
      "hash": hash,
		};
	}

  
  EncryptedPassportElement copyWith({
    PassportElementType? type,
    String? data,
    DatedFile? frontSide,
    DatedFile? reverseSide,
    DatedFile? selfie,
    List<DatedFile>? translation,
    List<DatedFile>? files,
    String? value,
    String? hash,
  }) => EncryptedPassportElement(
    type: type ?? this.type,
    data: data ?? this.data,
    frontSide: frontSide ?? this.frontSide,
    reverseSide: reverseSide ?? this.reverseSide,
    selfie: selfie ?? this.selfie,
    translation: translation ?? this.translation,
    files: files ?? this.files,
    value: value ?? this.value,
    hash: hash ?? this.hash,
  );

  static const String objectType = 'encryptedPassportElement';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
