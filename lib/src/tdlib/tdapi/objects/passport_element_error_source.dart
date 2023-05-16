part of '../tdapi.dart';

/// **PassportElementErrorSource** *(passportElementErrorSource)* - parent
///
/// Contains the description of an error in a Telegram Passport element.
sealed class PassportElementErrorSource extends TdObject {
  
  /// **PassportElementErrorSource** *(passportElementErrorSource)* - parent
  ///
  /// Contains the description of an error in a Telegram Passport element.
  const PassportElementErrorSource();
  
  /// a PassportElementErrorSource return type can be :
  /// * [PassportElementErrorSourceUnspecified]
  /// * [PassportElementErrorSourceDataField]
  /// * [PassportElementErrorSourceFrontSide]
  /// * [PassportElementErrorSourceReverseSide]
  /// * [PassportElementErrorSourceSelfie]
  /// * [PassportElementErrorSourceTranslationFile]
  /// * [PassportElementErrorSourceTranslationFiles]
  /// * [PassportElementErrorSourceFile]
  /// * [PassportElementErrorSourceFiles]
  factory PassportElementErrorSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case PassportElementErrorSourceUnspecified.objectType:
        return PassportElementErrorSourceUnspecified.fromJson(json);
      case PassportElementErrorSourceDataField.objectType:
        return PassportElementErrorSourceDataField.fromJson(json);
      case PassportElementErrorSourceFrontSide.objectType:
        return PassportElementErrorSourceFrontSide.fromJson(json);
      case PassportElementErrorSourceReverseSide.objectType:
        return PassportElementErrorSourceReverseSide.fromJson(json);
      case PassportElementErrorSourceSelfie.objectType:
        return PassportElementErrorSourceSelfie.fromJson(json);
      case PassportElementErrorSourceTranslationFile.objectType:
        return PassportElementErrorSourceTranslationFile.fromJson(json);
      case PassportElementErrorSourceTranslationFiles.objectType:
        return PassportElementErrorSourceTranslationFiles.fromJson(json);
      case PassportElementErrorSourceFile.objectType:
        return PassportElementErrorSourceFile.fromJson(json);
      case PassportElementErrorSourceFiles.objectType:
        return PassportElementErrorSourceFiles.fromJson(json);
      default:
        throw FormatException(
          "Unknown object ${json["@type"]} (expected child of PassportElementErrorSource)",
          json,
        );
    }
  }
  
  @override
  Map<String, dynamic> toJson();

  
  PassportElementErrorSource copyWith();

  static const String objectType = 'passportElementErrorSource';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceUnspecified** *(passportElementErrorSourceUnspecified)* - child of PassportElementErrorSource
///
/// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
final class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceUnspecified** *(passportElementErrorSourceUnspecified)* - child of PassportElementErrorSource
  ///
  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
  const PassportElementErrorSourceUnspecified();
  
  /// Parse from a json
  factory PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceUnspecified();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementErrorSourceUnspecified copyWith() => const PassportElementErrorSourceUnspecified();

  static const String objectType = 'passportElementErrorSourceUnspecified';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceDataField** *(passportElementErrorSourceDataField)* - child of PassportElementErrorSource
///
/// One of the data fields contains an error. The error will be considered resolved when the value of the field changes.
///
/// * [fieldName]: Field name.
final class PassportElementErrorSourceDataField extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceDataField** *(passportElementErrorSourceDataField)* - child of PassportElementErrorSource
  ///
  /// One of the data fields contains an error. The error will be considered resolved when the value of the field changes.
  ///
  /// * [fieldName]: Field name.
  const PassportElementErrorSourceDataField({
    required this.fieldName,
  });
  
  /// Field name
  final String fieldName;
  
  /// Parse from a json
  factory PassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceDataField(
    fieldName: json['field_name'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "field_name": fieldName,
		};
	}

  
  @override
  PassportElementErrorSourceDataField copyWith({
    String? fieldName,
  }) => PassportElementErrorSourceDataField(
    fieldName: fieldName ?? this.fieldName,
  );

  static const String objectType = 'passportElementErrorSourceDataField';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceFrontSide** *(passportElementErrorSourceFrontSide)* - child of PassportElementErrorSource
///
/// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes.
final class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceFrontSide** *(passportElementErrorSourceFrontSide)* - child of PassportElementErrorSource
  ///
  /// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes.
  const PassportElementErrorSourceFrontSide();
  
  /// Parse from a json
  factory PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceFrontSide();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementErrorSourceFrontSide copyWith() => const PassportElementErrorSourceFrontSide();

  static const String objectType = 'passportElementErrorSourceFrontSide';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceReverseSide** *(passportElementErrorSourceReverseSide)* - child of PassportElementErrorSource
///
/// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes.
final class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceReverseSide** *(passportElementErrorSourceReverseSide)* - child of PassportElementErrorSource
  ///
  /// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes.
  const PassportElementErrorSourceReverseSide();
  
  /// Parse from a json
  factory PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceReverseSide();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementErrorSourceReverseSide copyWith() => const PassportElementErrorSourceReverseSide();

  static const String objectType = 'passportElementErrorSourceReverseSide';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceSelfie** *(passportElementErrorSourceSelfie)* - child of PassportElementErrorSource
///
/// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes.
final class PassportElementErrorSourceSelfie extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceSelfie** *(passportElementErrorSourceSelfie)* - child of PassportElementErrorSource
  ///
  /// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes.
  const PassportElementErrorSourceSelfie();
  
  /// Parse from a json
  factory PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceSelfie();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementErrorSourceSelfie copyWith() => const PassportElementErrorSourceSelfie();

  static const String objectType = 'passportElementErrorSourceSelfie';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceTranslationFile** *(passportElementErrorSourceTranslationFile)* - child of PassportElementErrorSource
///
/// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes.
///
/// * [fileIndex]: Index of a file with the error.
final class PassportElementErrorSourceTranslationFile extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceTranslationFile** *(passportElementErrorSourceTranslationFile)* - child of PassportElementErrorSource
  ///
  /// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes.
  ///
  /// * [fileIndex]: Index of a file with the error.
  const PassportElementErrorSourceTranslationFile({
    required this.fileIndex,
  });
  
  /// Index of a file with the error
  final int fileIndex;
  
  /// Parse from a json
  factory PassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceTranslationFile(
    fileIndex: json['file_index'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_index": fileIndex,
		};
	}

  
  @override
  PassportElementErrorSourceTranslationFile copyWith({
    int? fileIndex,
  }) => PassportElementErrorSourceTranslationFile(
    fileIndex: fileIndex ?? this.fileIndex,
  );

  static const String objectType = 'passportElementErrorSourceTranslationFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceTranslationFiles** *(passportElementErrorSourceTranslationFiles)* - child of PassportElementErrorSource
///
/// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes.
final class PassportElementErrorSourceTranslationFiles extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceTranslationFiles** *(passportElementErrorSourceTranslationFiles)* - child of PassportElementErrorSource
  ///
  /// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes.
  const PassportElementErrorSourceTranslationFiles();
  
  /// Parse from a json
  factory PassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceTranslationFiles();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementErrorSourceTranslationFiles copyWith() => const PassportElementErrorSourceTranslationFiles();

  static const String objectType = 'passportElementErrorSourceTranslationFiles';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceFile** *(passportElementErrorSourceFile)* - child of PassportElementErrorSource
///
/// The file contains an error. The error will be considered resolved when the file changes.
///
/// * [fileIndex]: Index of a file with the error.
final class PassportElementErrorSourceFile extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceFile** *(passportElementErrorSourceFile)* - child of PassportElementErrorSource
  ///
  /// The file contains an error. The error will be considered resolved when the file changes.
  ///
  /// * [fileIndex]: Index of a file with the error.
  const PassportElementErrorSourceFile({
    required this.fileIndex,
  });
  
  /// Index of a file with the error
  final int fileIndex;
  
  /// Parse from a json
  factory PassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) => PassportElementErrorSourceFile(
    fileIndex: json['file_index'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_index": fileIndex,
		};
	}

  
  @override
  PassportElementErrorSourceFile copyWith({
    int? fileIndex,
  }) => PassportElementErrorSourceFile(
    fileIndex: fileIndex ?? this.fileIndex,
  );

  static const String objectType = 'passportElementErrorSourceFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}


/// **PassportElementErrorSourceFiles** *(passportElementErrorSourceFiles)* - child of PassportElementErrorSource
///
/// The list of attached files contains an error. The error will be considered resolved when the list of files changes.
final class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceFiles** *(passportElementErrorSourceFiles)* - child of PassportElementErrorSource
  ///
  /// The list of attached files contains an error. The error will be considered resolved when the list of files changes.
  const PassportElementErrorSourceFiles();
  
  /// Parse from a json
  factory PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceFiles();
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
		};
	}

  
  @override
  PassportElementErrorSourceFiles copyWith() => const PassportElementErrorSourceFiles();

  static const String objectType = 'passportElementErrorSourceFiles';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
