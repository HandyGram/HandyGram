part of '../tdapi.dart';

/// **RemoveFileFromDownloads** *(removeFileFromDownloads)* - TDLib function
///
/// Removes a file from the file download list.
///
/// * [fileId]: Identifier of the downloaded file.
/// * [deleteFromCache]: Pass true to delete the file from the TDLib file cache.
///
/// [Ok] is returned on completion.
final class RemoveFileFromDownloads extends TdFunction {
  
  /// **RemoveFileFromDownloads** *(removeFileFromDownloads)* - TDLib function
  ///
  /// Removes a file from the file download list.
  ///
  /// * [fileId]: Identifier of the downloaded file.
  /// * [deleteFromCache]: Pass true to delete the file from the TDLib file cache.
  ///
  /// [Ok] is returned on completion.
  const RemoveFileFromDownloads({
    required this.fileId,
    required this.deleteFromCache,
  });
  
  /// Identifier of the downloaded file 
  final int fileId;

  /// Pass true to delete the file from the TDLib file cache
  final bool deleteFromCache;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "delete_from_cache": deleteFromCache,
      "@extra": extra,
		};
	}

  
  RemoveFileFromDownloads copyWith({
    int? fileId,
    bool? deleteFromCache,
  }) => RemoveFileFromDownloads(
    fileId: fileId ?? this.fileId,
    deleteFromCache: deleteFromCache ?? this.deleteFromCache,
  );

  static const String objectType = 'removeFileFromDownloads';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
