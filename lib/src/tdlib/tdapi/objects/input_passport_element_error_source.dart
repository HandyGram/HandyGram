part of '../tdapi.dart';

/// **InputPassportElementErrorSource** *(inputPassportElementErrorSource)* - parent
  ///
  /// Contains the description of an error in a Telegram Passport element; for bots only.
class InputPassportElementErrorSource extends TdObject {
  
  /// **InputPassportElementErrorSource** *(inputPassportElementErrorSource)* - parent
  ///
  /// Contains the description of an error in a Telegram Passport element; for bots only.
  const InputPassportElementErrorSource();
  
  /// a InputPassportElementErrorSource return type can be :
  /// * [InputPassportElementErrorSourceUnspecified]
  /// * [InputPassportElementErrorSourceDataField]
  /// * [InputPassportElementErrorSourceFrontSide]
  /// * [InputPassportElementErrorSourceReverseSide]
  /// * [InputPassportElementErrorSourceSelfie]
  /// * [InputPassportElementErrorSourceTranslationFile]
  /// * [InputPassportElementErrorSourceTranslationFiles]
  /// * [InputPassportElementErrorSourceFile]
  /// * [InputPassportElementErrorSourceFiles]
  factory InputPassportElementErrorSource.fromJson(Map<String, dynamic> json)  {
    switch(json["@type"]) {
      case InputPassportElementErrorSourceUnspecified.constructor:
        return InputPassportElementErrorSourceUnspecified.fromJson(json);
      case InputPassportElementErrorSourceDataField.constructor:
        return InputPassportElementErrorSourceDataField.fromJson(json);
      case InputPassportElementErrorSourceFrontSide.constructor:
        return InputPassportElementErrorSourceFrontSide.fromJson(json);
      case InputPassportElementErrorSourceReverseSide.constructor:
        return InputPassportElementErrorSourceReverseSide.fromJson(json);
      case InputPassportElementErrorSourceSelfie.constructor:
        return InputPassportElementErrorSourceSelfie.fromJson(json);
      case InputPassportElementErrorSourceTranslationFile.constructor:
        return InputPassportElementErrorSourceTranslationFile.fromJson(json);
      case InputPassportElementErrorSourceTranslationFiles.constructor:
        return InputPassportElementErrorSourceTranslationFiles.fromJson(json);
      case InputPassportElementErrorSourceFile.constructor:
        return InputPassportElementErrorSourceFile.fromJson(json);
      case InputPassportElementErrorSourceFiles.constructor:
        return InputPassportElementErrorSourceFiles.fromJson(json);
      default:
        return const InputPassportElementErrorSource();
    }
  }
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      
    };
  }
  
  InputPassportElementErrorSource copyWith() => const InputPassportElementErrorSource();

  static const String constructor = 'inputPassportElementErrorSource';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceUnspecified** *(inputPassportElementErrorSourceUnspecified)* - child of InputPassportElementErrorSource
  ///
  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
  ///
  /// * [elementHash]: Current hash of the entire element.
class InputPassportElementErrorSourceUnspecified extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceUnspecified** *(inputPassportElementErrorSourceUnspecified)* - child of InputPassportElementErrorSource
  ///
  /// The element contains an error in an unspecified place. The error will be considered resolved when new data is added.
  ///
  /// * [elementHash]: Current hash of the entire element.
  const InputPassportElementErrorSourceUnspecified({
    required this.elementHash,
  });
  
  /// Current hash of the entire element
  final String elementHash;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceUnspecified.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceUnspecified(
    elementHash: json['element_hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "element_hash": elementHash,
    };
  }
  
  @override
  InputPassportElementErrorSourceUnspecified copyWith({
    String? elementHash,
  }) => InputPassportElementErrorSourceUnspecified(
    elementHash: elementHash ?? this.elementHash,
  );

  static const String constructor = 'inputPassportElementErrorSourceUnspecified';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceDataField** *(inputPassportElementErrorSourceDataField)* - child of InputPassportElementErrorSource
  ///
  /// A data field contains an error. The error is considered resolved when the field's value changes.
  ///
  /// * [fieldName]: Field name.
  /// * [dataHash]: Current data hash.
class InputPassportElementErrorSourceDataField extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceDataField** *(inputPassportElementErrorSourceDataField)* - child of InputPassportElementErrorSource
  ///
  /// A data field contains an error. The error is considered resolved when the field's value changes.
  ///
  /// * [fieldName]: Field name.
  /// * [dataHash]: Current data hash.
  const InputPassportElementErrorSourceDataField({
    required this.fieldName,
    required this.dataHash,
  });
  
  /// Field name 
  final String fieldName;

  /// Current data hash
  final String dataHash;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceDataField.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceDataField(
    fieldName: json['field_name'],
    dataHash: json['data_hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "field_name": fieldName,
      "data_hash": dataHash,
    };
  }
  
  @override
  InputPassportElementErrorSourceDataField copyWith({
    String? fieldName,
    String? dataHash,
  }) => InputPassportElementErrorSourceDataField(
    fieldName: fieldName ?? this.fieldName,
    dataHash: dataHash ?? this.dataHash,
  );

  static const String constructor = 'inputPassportElementErrorSourceDataField';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceFrontSide** *(inputPassportElementErrorSourceFrontSide)* - child of InputPassportElementErrorSource
  ///
  /// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes.
  ///
  /// * [fileHash]: Current hash of the file containing the front side.
class InputPassportElementErrorSourceFrontSide extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceFrontSide** *(inputPassportElementErrorSourceFrontSide)* - child of InputPassportElementErrorSource
  ///
  /// The front side of the document contains an error. The error is considered resolved when the file with the front side of the document changes.
  ///
  /// * [fileHash]: Current hash of the file containing the front side.
  const InputPassportElementErrorSourceFrontSide({
    required this.fileHash,
  });
  
  /// Current hash of the file containing the front side
  final String fileHash;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceFrontSide.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceFrontSide(
    fileHash: json['file_hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_hash": fileHash,
    };
  }
  
  @override
  InputPassportElementErrorSourceFrontSide copyWith({
    String? fileHash,
  }) => InputPassportElementErrorSourceFrontSide(
    fileHash: fileHash ?? this.fileHash,
  );

  static const String constructor = 'inputPassportElementErrorSourceFrontSide';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceReverseSide** *(inputPassportElementErrorSourceReverseSide)* - child of InputPassportElementErrorSource
  ///
  /// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes.
  ///
  /// * [fileHash]: Current hash of the file containing the reverse side.
class InputPassportElementErrorSourceReverseSide extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceReverseSide** *(inputPassportElementErrorSourceReverseSide)* - child of InputPassportElementErrorSource
  ///
  /// The reverse side of the document contains an error. The error is considered resolved when the file with the reverse side of the document changes.
  ///
  /// * [fileHash]: Current hash of the file containing the reverse side.
  const InputPassportElementErrorSourceReverseSide({
    required this.fileHash,
  });
  
  /// Current hash of the file containing the reverse side
  final String fileHash;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceReverseSide.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceReverseSide(
    fileHash: json['file_hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_hash": fileHash,
    };
  }
  
  @override
  InputPassportElementErrorSourceReverseSide copyWith({
    String? fileHash,
  }) => InputPassportElementErrorSourceReverseSide(
    fileHash: fileHash ?? this.fileHash,
  );

  static const String constructor = 'inputPassportElementErrorSourceReverseSide';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceSelfie** *(inputPassportElementErrorSourceSelfie)* - child of InputPassportElementErrorSource
  ///
  /// The selfie contains an error. The error is considered resolved when the file with the selfie changes.
  ///
  /// * [fileHash]: Current hash of the file containing the selfie.
class InputPassportElementErrorSourceSelfie extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceSelfie** *(inputPassportElementErrorSourceSelfie)* - child of InputPassportElementErrorSource
  ///
  /// The selfie contains an error. The error is considered resolved when the file with the selfie changes.
  ///
  /// * [fileHash]: Current hash of the file containing the selfie.
  const InputPassportElementErrorSourceSelfie({
    required this.fileHash,
  });
  
  /// Current hash of the file containing the selfie
  final String fileHash;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceSelfie.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceSelfie(
    fileHash: json['file_hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_hash": fileHash,
    };
  }
  
  @override
  InputPassportElementErrorSourceSelfie copyWith({
    String? fileHash,
  }) => InputPassportElementErrorSourceSelfie(
    fileHash: fileHash ?? this.fileHash,
  );

  static const String constructor = 'inputPassportElementErrorSourceSelfie';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceTranslationFile** *(inputPassportElementErrorSourceTranslationFile)* - child of InputPassportElementErrorSource
  ///
  /// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes.
  ///
  /// * [fileHash]: Current hash of the file containing the translation.
class InputPassportElementErrorSourceTranslationFile extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceTranslationFile** *(inputPassportElementErrorSourceTranslationFile)* - child of InputPassportElementErrorSource
  ///
  /// One of the files containing the translation of the document contains an error. The error is considered resolved when the file with the translation changes.
  ///
  /// * [fileHash]: Current hash of the file containing the translation.
  const InputPassportElementErrorSourceTranslationFile({
    required this.fileHash,
  });
  
  /// Current hash of the file containing the translation
  final String fileHash;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceTranslationFile.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceTranslationFile(
    fileHash: json['file_hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_hash": fileHash,
    };
  }
  
  @override
  InputPassportElementErrorSourceTranslationFile copyWith({
    String? fileHash,
  }) => InputPassportElementErrorSourceTranslationFile(
    fileHash: fileHash ?? this.fileHash,
  );

  static const String constructor = 'inputPassportElementErrorSourceTranslationFile';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceTranslationFiles** *(inputPassportElementErrorSourceTranslationFiles)* - child of InputPassportElementErrorSource
  ///
  /// The translation of the document contains an error. The error is considered resolved when the list of files changes.
  ///
  /// * [fileHashes]: Current hashes of all files with the translation.
class InputPassportElementErrorSourceTranslationFiles extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceTranslationFiles** *(inputPassportElementErrorSourceTranslationFiles)* - child of InputPassportElementErrorSource
  ///
  /// The translation of the document contains an error. The error is considered resolved when the list of files changes.
  ///
  /// * [fileHashes]: Current hashes of all files with the translation.
  const InputPassportElementErrorSourceTranslationFiles({
    required this.fileHashes,
  });
  
  /// Current hashes of all files with the translation
  final List<String> fileHashes;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceTranslationFiles.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceTranslationFiles(
    fileHashes: List<String>.from((json['file_hashes'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_hashes": fileHashes.map((i) => i).toList(),
    };
  }
  
  @override
  InputPassportElementErrorSourceTranslationFiles copyWith({
    List<String>? fileHashes,
  }) => InputPassportElementErrorSourceTranslationFiles(
    fileHashes: fileHashes ?? this.fileHashes,
  );

  static const String constructor = 'inputPassportElementErrorSourceTranslationFiles';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceFile** *(inputPassportElementErrorSourceFile)* - child of InputPassportElementErrorSource
  ///
  /// The file contains an error. The error is considered resolved when the file changes.
  ///
  /// * [fileHash]: Current hash of the file which has the error.
class InputPassportElementErrorSourceFile extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceFile** *(inputPassportElementErrorSourceFile)* - child of InputPassportElementErrorSource
  ///
  /// The file contains an error. The error is considered resolved when the file changes.
  ///
  /// * [fileHash]: Current hash of the file which has the error.
  const InputPassportElementErrorSourceFile({
    required this.fileHash,
  });
  
  /// Current hash of the file which has the error
  final String fileHash;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceFile.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceFile(
    fileHash: json['file_hash'],
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_hash": fileHash,
    };
  }
  
  @override
  InputPassportElementErrorSourceFile copyWith({
    String? fileHash,
  }) => InputPassportElementErrorSourceFile(
    fileHash: fileHash ?? this.fileHash,
  );

  static const String constructor = 'inputPassportElementErrorSourceFile';
  
  @override
  String getConstructor() => constructor;
}


/// **InputPassportElementErrorSourceFiles** *(inputPassportElementErrorSourceFiles)* - child of InputPassportElementErrorSource
  ///
  /// The list of attached files contains an error. The error is considered resolved when the file list changes.
  ///
  /// * [fileHashes]: Current hashes of all attached files.
class InputPassportElementErrorSourceFiles extends InputPassportElementErrorSource {
  
  /// **InputPassportElementErrorSourceFiles** *(inputPassportElementErrorSourceFiles)* - child of InputPassportElementErrorSource
  ///
  /// The list of attached files contains an error. The error is considered resolved when the file list changes.
  ///
  /// * [fileHashes]: Current hashes of all attached files.
  const InputPassportElementErrorSourceFiles({
    required this.fileHashes,
  });
  
  /// Current hashes of all attached files
  final List<String> fileHashes;
  
  /// Parse from a json
  factory InputPassportElementErrorSourceFiles.fromJson(Map<String, dynamic> json) => InputPassportElementErrorSourceFiles(
    fileHashes: List<String>.from((json['file_hashes'] ?? []).map((item) => item).toList()),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_hashes": fileHashes.map((i) => i).toList(),
    };
  }
  
  @override
  InputPassportElementErrorSourceFiles copyWith({
    List<String>? fileHashes,
  }) => InputPassportElementErrorSourceFiles(
    fileHashes: fileHashes ?? this.fileHashes,
  );

  static const String constructor = 'inputPassportElementErrorSourceFiles';
  
  @override
  String getConstructor() => constructor;
}
