part of '../tdapi.dart';

/// **PassportElementErrorSource** *(passportElementErrorSource)* - parent
  ///
  /// Contains the description of an error in a Telegram Passport element.
class PassportElementErrorSource extends TdObject {
  
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
      case PassportElementErrorSourceUnspecified.constructor:
        return PassportElementErrorSourceUnspecified.fromJson(json);
      case PassportElementErrorSourceDataField.constructor:
        return PassportElementErrorSourceDataField.fromJson(json);
      case PassportElementErrorSourceFrontSide.constructor:
        return PassportElementErrorSourceFrontSide.fromJson(json);
      case PassportElementErrorSourceReverseSide.constructor:
        return PassportElementErrorSourceReverseSide.fromJson(json);
      case PassportElementErrorSourceSelfie.constructor:
        return PassportElementErrorSourceSelfie.fromJson(json);
      case PassportElementErrorSourceTranslationFile.constructor:
        return PassportElementErrorSourceTranslationFile.fromJson(json);
      case PassportElementErrorSourceTranslationFiles.constructor:
        return PassportElementErrorSourceTranslationFiles.fromJson(json);
      case PassportElementErrorSourceFile.constructor:
        return PassportElementErrorSourceFile.fromJson(json);
      case PassportElementErrorSourceFiles.constructor:
        return PassportElementErrorSourceFiles.fromJson(json);
      default:
        return const PassportElementErrorSource();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  PassportElementErrorSource copyWith() => const PassportElementErrorSource();

  static const String constructor = 'passportElementErrorSource';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceUnspecified** *(passportElementErrorSourceUnspecified)* - child of PassportElementErrorSource
  ///
  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
class PassportElementErrorSourceUnspecified extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceUnspecified** *(passportElementErrorSourceUnspecified)* - child of PassportElementErrorSource
  ///
  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
  const PassportElementErrorSourceUnspecified();
  
  /// Parse from a json
  factory PassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceUnspecified();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementErrorSourceUnspecified copyWith() => const PassportElementErrorSourceUnspecified();

  static const String constructor = 'passportElementErrorSourceUnspecified';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceDataField** *(passportElementErrorSourceDataField)* - child of PassportElementErrorSource
  ///
  /// One of the data fields contains an error. The error will be considered resolved when the value of the field changes.
  ///
  /// * [fieldName]: Field name.
class PassportElementErrorSourceDataField extends PassportElementErrorSource {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "field_name": fieldName,
    };
  }
  
  @override
  PassportElementErrorSourceDataField copyWith({
    String? fieldName,
  }) => PassportElementErrorSourceDataField(
    fieldName: fieldName ?? this.fieldName,
  );

  static const String constructor = 'passportElementErrorSourceDataField';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceFrontSide** *(passportElementErrorSourceFrontSide)* - child of PassportElementErrorSource
  ///
  /// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes.
class PassportElementErrorSourceFrontSide extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceFrontSide** *(passportElementErrorSourceFrontSide)* - child of PassportElementErrorSource
  ///
  /// The front side of the document contains an error. The error will be considered resolved when the file with the front side changes.
  const PassportElementErrorSourceFrontSide();
  
  /// Parse from a json
  factory PassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceFrontSide();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementErrorSourceFrontSide copyWith() => const PassportElementErrorSourceFrontSide();

  static const String constructor = 'passportElementErrorSourceFrontSide';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceReverseSide** *(passportElementErrorSourceReverseSide)* - child of PassportElementErrorSource
  ///
  /// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes.
class PassportElementErrorSourceReverseSide extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceReverseSide** *(passportElementErrorSourceReverseSide)* - child of PassportElementErrorSource
  ///
  /// The reverse side of the document contains an error. The error will be considered resolved when the file with the reverse side changes.
  const PassportElementErrorSourceReverseSide();
  
  /// Parse from a json
  factory PassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceReverseSide();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementErrorSourceReverseSide copyWith() => const PassportElementErrorSourceReverseSide();

  static const String constructor = 'passportElementErrorSourceReverseSide';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceSelfie** *(passportElementErrorSourceSelfie)* - child of PassportElementErrorSource
  ///
  /// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes.
class PassportElementErrorSourceSelfie extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceSelfie** *(passportElementErrorSourceSelfie)* - child of PassportElementErrorSource
  ///
  /// The selfie with the document contains an error. The error will be considered resolved when the file with the selfie changes.
  const PassportElementErrorSourceSelfie();
  
  /// Parse from a json
  factory PassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceSelfie();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementErrorSourceSelfie copyWith() => const PassportElementErrorSourceSelfie();

  static const String constructor = 'passportElementErrorSourceSelfie';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceTranslationFile** *(passportElementErrorSourceTranslationFile)* - child of PassportElementErrorSource
  ///
  /// One of files with the translation of the document contains an error. The error will be considered resolved when the file changes.
  ///
  /// * [fileIndex]: Index of a file with the error.
class PassportElementErrorSourceTranslationFile extends PassportElementErrorSource {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_index": fileIndex,
    };
  }
  
  @override
  PassportElementErrorSourceTranslationFile copyWith({
    int? fileIndex,
  }) => PassportElementErrorSourceTranslationFile(
    fileIndex: fileIndex ?? this.fileIndex,
  );

  static const String constructor = 'passportElementErrorSourceTranslationFile';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceTranslationFiles** *(passportElementErrorSourceTranslationFiles)* - child of PassportElementErrorSource
  ///
  /// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes.
class PassportElementErrorSourceTranslationFiles extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceTranslationFiles** *(passportElementErrorSourceTranslationFiles)* - child of PassportElementErrorSource
  ///
  /// The translation of the document contains an error. The error will be considered resolved when the list of translation files changes.
  const PassportElementErrorSourceTranslationFiles();
  
  /// Parse from a json
  factory PassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceTranslationFiles();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementErrorSourceTranslationFiles copyWith() => const PassportElementErrorSourceTranslationFiles();

  static const String constructor = 'passportElementErrorSourceTranslationFiles';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceFile** *(passportElementErrorSourceFile)* - child of PassportElementErrorSource
  ///
  /// The file contains an error. The error will be considered resolved when the file changes.
  ///
  /// * [fileIndex]: Index of a file with the error.
class PassportElementErrorSourceFile extends PassportElementErrorSource {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_index": fileIndex,
    };
  }
  
  @override
  PassportElementErrorSourceFile copyWith({
    int? fileIndex,
  }) => PassportElementErrorSourceFile(
    fileIndex: fileIndex ?? this.fileIndex,
  );

  static const String constructor = 'passportElementErrorSourceFile';
  
  @override
  String getConstructor() => constructor;
}


/// **PassportElementErrorSourceFiles** *(passportElementErrorSourceFiles)* - child of PassportElementErrorSource
  ///
  /// The list of attached files contains an error. The error will be considered resolved when the list of files changes.
class PassportElementErrorSourceFiles extends PassportElementErrorSource {
  
  /// **PassportElementErrorSourceFiles** *(passportElementErrorSourceFiles)* - child of PassportElementErrorSource
  ///
  /// The list of attached files contains an error. The error will be considered resolved when the list of files changes.
  const PassportElementErrorSourceFiles();
  
  /// Parse from a json
  factory PassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) => const PassportElementErrorSourceFiles();
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
    };
  }
  
  @override
  PassportElementErrorSourceFiles copyWith() => const PassportElementErrorSourceFiles();

  static const String constructor = 'passportElementErrorSourceFiles';
  
  @override
  String getConstructor() => constructor;
}
