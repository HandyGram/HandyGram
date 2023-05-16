part of '../tdapi.dart';

/// **StorageStatisticsByFileType** *(storageStatisticsByFileType)* - basic class
///
/// Contains the storage usage statistics for a specific file type.
///
/// * [fileType]: File type.
/// * [size]: Total size of the files, in bytes.
/// * [count]: Total number of files.
final class StorageStatisticsByFileType extends TdObject {
  
  /// **StorageStatisticsByFileType** *(storageStatisticsByFileType)* - basic class
  ///
  /// Contains the storage usage statistics for a specific file type.
  ///
  /// * [fileType]: File type.
  /// * [size]: Total size of the files, in bytes.
  /// * [count]: Total number of files.
  const StorageStatisticsByFileType({
    required this.fileType,
    required this.size,
    required this.count,
  });
  
  /// File type
  final FileType fileType;

  /// Total size of the files, in bytes
  final int size;

  /// Total number of files
  final int count;
  
  /// Parse from a json
  factory StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) => StorageStatisticsByFileType(
    fileType: FileType.fromJson(json['file_type']),
    size: json['size'],
    count: json['count'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "file_type": fileType.toJson(),
      "size": size,
      "count": count,
		};
	}

  
  StorageStatisticsByFileType copyWith({
    FileType? fileType,
    int? size,
    int? count,
  }) => StorageStatisticsByFileType(
    fileType: fileType ?? this.fileType,
    size: size ?? this.size,
    count: count ?? this.count,
  );

  static const String objectType = 'storageStatisticsByFileType';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
