part of '../tdapi.dart';

/// **GetFileMimeType** *(getFileMimeType)* - TDLib function
  ///
  /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously.
  ///
  /// * [fileName]: The name of the file or path to the file.
  ///
  /// [Text] is returned on completion.
class GetFileMimeType extends TdFunction {
  
  /// **GetFileMimeType** *(getFileMimeType)* - TDLib function
  ///
  /// Returns the MIME type of a file, guessed by its extension. Returns an empty string on failure. Can be called synchronously.
  ///
  /// * [fileName]: The name of the file or path to the file.
  ///
  /// [Text] is returned on completion.
  const GetFileMimeType({
    required this.fileName,
  });
  
  /// The name of the file or path to the file
  final String fileName;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_name": fileName,
      "@extra": extra,
    };
  }
  
  GetFileMimeType copyWith({
    String? fileName,
  }) => GetFileMimeType(
    fileName: fileName ?? this.fileName,
  );

  static const String constructor = 'getFileMimeType';
  
  @override
  String getConstructor() => constructor;
}
