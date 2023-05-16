part of '../tdapi.dart';

/// **ToggleDownloadIsPaused** *(toggleDownloadIsPaused)* - TDLib function
///
/// Changes pause state of a file in the file download list.
///
/// * [fileId]: Identifier of the downloaded file.
/// * [isPaused]: Pass true if the download is paused.
///
/// [Ok] is returned on completion.
final class ToggleDownloadIsPaused extends TdFunction {
  
  /// **ToggleDownloadIsPaused** *(toggleDownloadIsPaused)* - TDLib function
  ///
  /// Changes pause state of a file in the file download list.
  ///
  /// * [fileId]: Identifier of the downloaded file.
  /// * [isPaused]: Pass true if the download is paused.
  ///
  /// [Ok] is returned on completion.
  const ToggleDownloadIsPaused({
    required this.fileId,
    required this.isPaused,
  });
  
  /// Identifier of the downloaded file
  final int fileId;

  /// Pass true if the download is paused
  final bool isPaused;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "is_paused": isPaused,
      "@extra": extra,
		};
	}

  
  ToggleDownloadIsPaused copyWith({
    int? fileId,
    bool? isPaused,
  }) => ToggleDownloadIsPaused(
    fileId: fileId ?? this.fileId,
    isPaused: isPaused ?? this.isPaused,
  );

  static const String objectType = 'toggleDownloadIsPaused';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
