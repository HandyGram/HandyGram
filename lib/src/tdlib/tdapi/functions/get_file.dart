part of '../tdapi.dart';

/// **GetFile** *(getFile)* - TDLib function
///
/// Returns information about a file; this is an offline request.
///
/// * [fileId]: Identifier of the file to get.
///
/// [File] is returned on completion.
final class GetFile extends TdFunction {
  
  /// **GetFile** *(getFile)* - TDLib function
  ///
  /// Returns information about a file; this is an offline request.
  ///
  /// * [fileId]: Identifier of the file to get.
  ///
  /// [File] is returned on completion.
  const GetFile({
    required this.fileId,
  });
  
  /// Identifier of the file to get
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "@extra": extra,
		};
	}

  
  GetFile copyWith({
    int? fileId,
  }) => GetFile(
    fileId: fileId ?? this.fileId,
  );

  static const String objectType = 'getFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
