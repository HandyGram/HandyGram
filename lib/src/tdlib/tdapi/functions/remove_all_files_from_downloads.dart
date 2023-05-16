part of '../tdapi.dart';

/// **RemoveAllFilesFromDownloads** *(removeAllFilesFromDownloads)* - TDLib function
///
/// Removes all files from the file download list.
///
/// * [onlyActive]: Pass true to remove only active downloads, including paused.
/// * [onlyCompleted]: Pass true to remove only completed downloads.
/// * [deleteFromCache]: Pass true to delete the file from the TDLib file cache.
///
/// [Ok] is returned on completion.
final class RemoveAllFilesFromDownloads extends TdFunction {
  
  /// **RemoveAllFilesFromDownloads** *(removeAllFilesFromDownloads)* - TDLib function
  ///
  /// Removes all files from the file download list.
  ///
  /// * [onlyActive]: Pass true to remove only active downloads, including paused.
  /// * [onlyCompleted]: Pass true to remove only completed downloads.
  /// * [deleteFromCache]: Pass true to delete the file from the TDLib file cache.
  ///
  /// [Ok] is returned on completion.
  const RemoveAllFilesFromDownloads({
    required this.onlyActive,
    required this.onlyCompleted,
    required this.deleteFromCache,
  });
  
  /// Pass true to remove only active downloads, including paused
  final bool onlyActive;

  /// Pass true to remove only completed downloads
  final bool onlyCompleted;

  /// Pass true to delete the file from the TDLib file cache
  final bool deleteFromCache;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "only_active": onlyActive,
      "only_completed": onlyCompleted,
      "delete_from_cache": deleteFromCache,
      "@extra": extra,
		};
	}

  
  RemoveAllFilesFromDownloads copyWith({
    bool? onlyActive,
    bool? onlyCompleted,
    bool? deleteFromCache,
  }) => RemoveAllFilesFromDownloads(
    onlyActive: onlyActive ?? this.onlyActive,
    onlyCompleted: onlyCompleted ?? this.onlyCompleted,
    deleteFromCache: deleteFromCache ?? this.deleteFromCache,
  );

  static const String objectType = 'removeAllFilesFromDownloads';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
