part of '../tdapi.dart';

/// **PreliminaryUploadFile** *(preliminaryUploadFile)* - TDLib function
///
/// Preliminary uploads a file to the cloud before sending it in a message, which can be useful for uploading of being recorded voice and video notes. Updates updateFile will be used. to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message.
///
/// * [file]: File to upload.
/// * [fileType]: File type; pass null if unknown *(optional)*.
/// * [priority]: Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be uploaded first.
///
/// [File] is returned on completion.
final class PreliminaryUploadFile extends TdFunction {
  
  /// **PreliminaryUploadFile** *(preliminaryUploadFile)* - TDLib function
  ///
  /// Preliminary uploads a file to the cloud before sending it in a message, which can be useful for uploading of being recorded voice and video notes. Updates updateFile will be used. to notify about upload progress and successful completion of the upload. The file will not have a persistent remote identifier until it will be sent in a message.
  ///
  /// * [file]: File to upload.
  /// * [fileType]: File type; pass null if unknown *(optional)*.
  /// * [priority]: Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be uploaded first.
  ///
  /// [File] is returned on completion.
  const PreliminaryUploadFile({
    required this.file,
    this.fileType,
    required this.priority,
  });
  
  /// File to upload
  final InputFile file;

  /// File type; pass null if unknown
  final FileType? fileType;

  /// Priority of the upload (1-32). The higher the priority, the earlier the file will be uploaded. If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be uploaded first
  final int priority;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file": file.toJson(),
      "file_type": fileType?.toJson(),
      "priority": priority,
      "@extra": extra,
		};
	}

  
  PreliminaryUploadFile copyWith({
    InputFile? file,
    FileType? fileType,
    int? priority,
  }) => PreliminaryUploadFile(
    file: file ?? this.file,
    fileType: fileType ?? this.fileType,
    priority: priority ?? this.priority,
  );

  static const String objectType = 'preliminaryUploadFile';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
