part of '../tdapi.dart';

/// **GetFileDownloadedPrefixSize** *(getFileDownloadedPrefixSize)* - TDLib function
///
/// Returns file downloaded prefix size from a given offset, in bytes.
///
/// * [fileId]: Identifier of the file.
/// * [offset]: Offset from which downloaded prefix size needs to be calculated.
///
/// [FileDownloadedPrefixSize] is returned on completion.
final class GetFileDownloadedPrefixSize extends TdFunction {
  
  /// **GetFileDownloadedPrefixSize** *(getFileDownloadedPrefixSize)* - TDLib function
  ///
  /// Returns file downloaded prefix size from a given offset, in bytes.
  ///
  /// * [fileId]: Identifier of the file.
  /// * [offset]: Offset from which downloaded prefix size needs to be calculated.
  ///
  /// [FileDownloadedPrefixSize] is returned on completion.
  const GetFileDownloadedPrefixSize({
    required this.fileId,
    required this.offset,
  });
  
  /// Identifier of the file 
  final int fileId;

  /// Offset from which downloaded prefix size needs to be calculated
  final int offset;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "offset": offset,
      "@extra": extra,
		};
	}

  
  GetFileDownloadedPrefixSize copyWith({
    int? fileId,
    int? offset,
  }) => GetFileDownloadedPrefixSize(
    fileId: fileId ?? this.fileId,
    offset: offset ?? this.offset,
  );

  static const String objectType = 'getFileDownloadedPrefixSize';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
