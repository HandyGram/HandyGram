part of '../tdapi.dart';

/// **StorageStatisticsByFileType** *(storageStatisticsByFileType)* - basic class
  ///
  /// Contains the storage usage statistics for a specific file type.
  ///
  /// * [fileType]: File type.
  /// * [size]: Total size of the files, in bytes.
  /// * [count]: Total number of files.
class StorageStatisticsByFileType extends TdObject {
  
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
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": constructor,
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

  static const String constructor = 'storageStatisticsByFileType';
  
  @override
  String getConstructor() => constructor;
}
