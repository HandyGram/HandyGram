part of '../tdapi.dart';

/// **DownloadFile** *(downloadFile)* - TDLib function
///
/// Downloads a file from the cloud. Download progress and completion of the download will be notified through updateFile updates.
///
/// * [fileId]: Identifier of the file to download.
/// * [priority]: Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called will be downloaded first.
/// * [offset]: The starting position from which the file needs to be downloaded.
/// * [limit]: Number of bytes which need to be downloaded starting from the "offset" position before the download will automatically be canceled; use 0 to download without a limit.
/// * [synchronous]: Pass true to return response only after the file download has succeeded, has failed, has been canceled, or a new downloadFile request with different offset/limit parameters was sent; pass false to return file state immediately, just after the download has been started.
///
/// [File] is returned on completion.
final class DownloadFile extends TdFunction {
  
  /// **DownloadFile** *(downloadFile)* - TDLib function
  ///
  /// Downloads a file from the cloud. Download progress and completion of the download will be notified through updateFile updates.
  ///
  /// * [fileId]: Identifier of the file to download.
  /// * [priority]: Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called will be downloaded first.
  /// * [offset]: The starting position from which the file needs to be downloaded.
  /// * [limit]: Number of bytes which need to be downloaded starting from the "offset" position before the download will automatically be canceled; use 0 to download without a limit.
  /// * [synchronous]: Pass true to return response only after the file download has succeeded, has failed, has been canceled, or a new downloadFile request with different offset/limit parameters was sent; pass false to return file state immediately, just after the download has been started.
  ///
  /// [File] is returned on completion.
  const DownloadFile({
    required this.fileId,
    required this.priority,
    required this.offset,
    required this.limit,
    required this.synchronous,
  });
  
  /// Identifier of the file to download
  final int fileId;

  /// Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called will be downloaded first
  final int priority;

  /// The starting position from which the file needs to be downloaded
  final int offset;

  /// Number of bytes which need to be downloaded starting from the "offset" position before the download will automatically be canceled; use 0 to download without a limit
  final int limit;

  /// Pass true to return response only after the file download has succeeded, has failed, has been canceled, or a new downloadFile request with different offset/limit parameters was sent; pass false to return file state immediately, just after the download has been started
  final bool synchronous;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "priority": priority,
      "offset": offset,
      "limit": limit,
      "synchronous": synchronous,
      "@extra": extra,
		};
	}

  
  DownloadFile copyWith({
    int? fileId,
    int? priority,
    int? offset,
    int? limit,
    bool? synchronous,
  }) => DownloadFile(
    fileId: fileId ?? this.fileId,
    priority: priority ?? this.priority,
    offset: offset ?? this.offset,
    limit: limit ?? this.limit,
    synchronous: synchronous ?? this.synchronous,
  );

  static const String objectType = 'downloadFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
