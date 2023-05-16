part of '../tdapi.dart';

/// **CancelDownloadFile** *(cancelDownloadFile)* - TDLib function
///
/// Stops the downloading of a file. If a file has already been downloaded, does nothing.
///
/// * [fileId]: Identifier of a file to stop downloading.
/// * [onlyIfPending]: Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server.
///
/// [Ok] is returned on completion.
final class CancelDownloadFile extends TdFunction {
  
  /// **CancelDownloadFile** *(cancelDownloadFile)* - TDLib function
  ///
  /// Stops the downloading of a file. If a file has already been downloaded, does nothing.
  ///
  /// * [fileId]: Identifier of a file to stop downloading.
  /// * [onlyIfPending]: Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server.
  ///
  /// [Ok] is returned on completion.
  const CancelDownloadFile({
    required this.fileId,
    required this.onlyIfPending,
  });
  
  /// Identifier of a file to stop downloading 
  final int fileId;

  /// Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server
  final bool onlyIfPending;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "only_if_pending": onlyIfPending,
      "@extra": extra,
		};
	}

  
  CancelDownloadFile copyWith({
    int? fileId,
    bool? onlyIfPending,
  }) => CancelDownloadFile(
    fileId: fileId ?? this.fileId,
    onlyIfPending: onlyIfPending ?? this.onlyIfPending,
  );

  static const String objectType = 'cancelDownloadFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
