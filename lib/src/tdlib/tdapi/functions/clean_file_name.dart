part of '../tdapi.dart';

/// **CleanFileName** *(cleanFileName)* - TDLib function
///
/// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously.
///
/// * [fileName]: File name or path to the file.
///
/// [Text] is returned on completion.
final class CleanFileName extends TdFunction {
  
  /// **CleanFileName** *(cleanFileName)* - TDLib function
  ///
  /// Removes potentially dangerous characters from the name of a file. The encoding of the file name is supposed to be UTF-8. Returns an empty string on failure. Can be called synchronously.
  ///
  /// * [fileName]: File name or path to the file.
  ///
  /// [Text] is returned on completion.
  const CleanFileName({
    required this.fileName,
  });
  
  /// File name or path to the file
  final String fileName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_name": fileName,
      "@extra": extra,
		};
	}

  
  CleanFileName copyWith({
    String? fileName,
  }) => CleanFileName(
    fileName: fileName ?? this.fileName,
  );

  static const String objectType = 'cleanFileName';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
