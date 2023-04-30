part of '../tdapi.dart';

/// **DeleteFile** *(deleteFile)* - TDLib function
  ///
  /// Deletes a file from the TDLib file cache.
  ///
  /// * [fileId]: Identifier of the file to delete.
  ///
  /// [Ok] is returned on completion.
class DeleteFile extends TdFunction {
  
  /// **DeleteFile** *(deleteFile)* - TDLib function
  ///
  /// Deletes a file from the TDLib file cache.
  ///
  /// * [fileId]: Identifier of the file to delete.
  ///
  /// [Ok] is returned on completion.
  const DeleteFile({
    required this.fileId,
  });
  
  /// Identifier of the file to delete
  final int fileId;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
      "file_id": fileId,
      "@extra": extra,
    };
  }
  
  DeleteFile copyWith({
    int? fileId,
  }) => DeleteFile(
    fileId: fileId ?? this.fileId,
  );

  static const String constructor = 'deleteFile';
  
  @override
  String getConstructor() => constructor;
}
