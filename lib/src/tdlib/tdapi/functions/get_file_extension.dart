part of '../tdapi.dart';

/// **GetFileExtension** *(getFileExtension)* - TDLib function
///
/// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously.
///
/// * [mimeType]: The MIME type of the file.
///
/// [Text] is returned on completion.
final class GetFileExtension extends TdFunction {
  
  /// **GetFileExtension** *(getFileExtension)* - TDLib function
  ///
  /// Returns the extension of a file, guessed by its MIME type. Returns an empty string on failure. Can be called synchronously.
  ///
  /// * [mimeType]: The MIME type of the file.
  ///
  /// [Text] is returned on completion.
  const GetFileExtension({
    required this.mimeType,
  });
  
  /// The MIME type of the file
  final String mimeType;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "mime_type": mimeType,
      "@extra": extra,
		};
	}

  
  GetFileExtension copyWith({
    String? mimeType,
  }) => GetFileExtension(
    mimeType: mimeType ?? this.mimeType,
  );

  static const String objectType = 'getFileExtension';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
