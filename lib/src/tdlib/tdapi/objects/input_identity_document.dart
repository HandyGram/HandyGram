part of '../tdapi.dart';

/// **InputIdentityDocument** *(inputIdentityDocument)* - basic class
///
/// An identity document to be saved to Telegram Passport.
///
/// * [number]: Document number; 1-24 characters.
/// * [expiryDate]: Document expiry date; pass null if not applicable *(optional)*.
/// * [frontSide]: Front side of the document.
/// * [reverseSide]: Reverse side of the document; only for driver license and identity card; pass null otherwise *(optional)*.
/// * [selfie]: Selfie with the document; pass null if unavailable *(optional)*.
/// * [translation]: List of files containing a certified English translation of the document.
final class InputIdentityDocument extends TdObject {
  
  /// **InputIdentityDocument** *(inputIdentityDocument)* - basic class
  ///
  /// An identity document to be saved to Telegram Passport.
  ///
  /// * [number]: Document number; 1-24 characters.
  /// * [expiryDate]: Document expiry date; pass null if not applicable *(optional)*.
  /// * [frontSide]: Front side of the document.
  /// * [reverseSide]: Reverse side of the document; only for driver license and identity card; pass null otherwise *(optional)*.
  /// * [selfie]: Selfie with the document; pass null if unavailable *(optional)*.
  /// * [translation]: List of files containing a certified English translation of the document.
  const InputIdentityDocument({
    required this.number,
    this.expiryDate,
    required this.frontSide,
    this.reverseSide,
    this.selfie,
    required this.translation,
  });
  
  /// Document number; 1-24 characters
  final String number;

  /// Document expiry date; pass null if not applicable
  final Date? expiryDate;

  /// Front side of the document
  final InputFile frontSide;

  /// Reverse side of the document; only for driver license and identity card; pass null otherwise
  final InputFile? reverseSide;

  /// Selfie with the document; pass null if unavailable
  final InputFile? selfie;

  /// List of files containing a certified English translation of the document
  final List<InputFile> translation;
  
  /// Parse from a json
  factory InputIdentityDocument.fromJson(Map<String, dynamic> json) => InputIdentityDocument(
    number: json['number'],
    expiryDate: json['expiry_date'] == null ? null : Date.fromJson(json['expiry_date']),
    frontSide: InputFile.fromJson(json['front_side']),
    reverseSide: json['reverse_side'] == null ? null : InputFile.fromJson(json['reverse_side']),
    selfie: json['selfie'] == null ? null : InputFile.fromJson(json['selfie']),
    translation: List<InputFile>.from((json['translation'] ?? []).map((item) => InputFile.fromJson(item)).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "number": number,
      "expiry_date": expiryDate?.toJson(),
      "front_side": frontSide.toJson(),
      "reverse_side": reverseSide?.toJson(),
      "selfie": selfie?.toJson(),
      "translation": translation.map((i) => i.toJson()).toList(),
		};
	}

  
  InputIdentityDocument copyWith({
    String? number,
    Date? expiryDate,
    InputFile? frontSide,
    InputFile? reverseSide,
    InputFile? selfie,
    List<InputFile>? translation,
  }) => InputIdentityDocument(
    number: number ?? this.number,
    expiryDate: expiryDate ?? this.expiryDate,
    frontSide: frontSide ?? this.frontSide,
    reverseSide: reverseSide ?? this.reverseSide,
    selfie: selfie ?? this.selfie,
    translation: translation ?? this.translation,
  );

  static const String objectType = 'inputIdentityDocument';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
