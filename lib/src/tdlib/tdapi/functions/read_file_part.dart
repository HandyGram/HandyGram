part of '../tdapi.dart';

/// **ReadFilePart** *(readFilePart)* - TDLib function
///
/// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file.
///
/// * [fileId]: Identifier of the file. The file must be located in the TDLib file cache.
/// * [offset]: The offset from which to read the file.
/// * [count]: Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position.
///
/// [FilePart] is returned on completion.
final class ReadFilePart extends TdFunction {
  
  /// **ReadFilePart** *(readFilePart)* - TDLib function
  ///
  /// Reads a part of a file from the TDLib file cache and returns read bytes. This method is intended to be used only if the application has no direct access to TDLib's file system, because it is usually slower than a direct read from the file.
  ///
  /// * [fileId]: Identifier of the file. The file must be located in the TDLib file cache.
  /// * [offset]: The offset from which to read the file.
  /// * [count]: Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position.
  ///
  /// [FilePart] is returned on completion.
  const ReadFilePart({
    required this.fileId,
    required this.offset,
    required this.count,
  });
  
  /// Identifier of the file. The file must be located in the TDLib file cache
  final int fileId;

  /// The offset from which to read the file
  final int offset;

  /// Number of bytes to read. An error will be returned if there are not enough bytes available in the file from the specified position. Pass 0 to read all available data from the specified position
  final int count;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "file_id": fileId,
      "offset": offset,
      "count": count,
      "@extra": extra,
		};
	}

  
  ReadFilePart copyWith({
    int? fileId,
    int? offset,
    int? count,
  }) => ReadFilePart(
    fileId: fileId ?? this.fileId,
    offset: offset ?? this.offset,
    count: count ?? this.count,
  );

  static const String objectType = 'readFilePart';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
