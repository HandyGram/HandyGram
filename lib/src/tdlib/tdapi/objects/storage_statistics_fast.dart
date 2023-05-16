part of '../tdapi.dart';

/// **StorageStatisticsFast** *(storageStatisticsFast)* - basic class
///
/// Contains approximate storage usage statistics, excluding files of unknown file type.
///
/// * [filesSize]: Approximate total size of files, in bytes.
/// * [fileCount]: Approximate number of files.
/// * [databaseSize]: Size of the database.
/// * [languagePackDatabaseSize]: Size of the language pack database.
/// * [logSize]: Size of the TDLib internal log.
final class StorageStatisticsFast extends TdObject {
  
  /// **StorageStatisticsFast** *(storageStatisticsFast)* - basic class
  ///
  /// Contains approximate storage usage statistics, excluding files of unknown file type.
  ///
  /// * [filesSize]: Approximate total size of files, in bytes.
  /// * [fileCount]: Approximate number of files.
  /// * [databaseSize]: Size of the database.
  /// * [languagePackDatabaseSize]: Size of the language pack database.
  /// * [logSize]: Size of the TDLib internal log.
  const StorageStatisticsFast({
    required this.filesSize,
    required this.fileCount,
    required this.databaseSize,
    required this.languagePackDatabaseSize,
    required this.logSize,
    this.extra,
    this.clientId,
  });
  
  /// Approximate total size of files, in bytes
  final int filesSize;

  /// Approximate number of files
  final int fileCount;

  /// Size of the database
  final int databaseSize;

  /// Size of the language pack database
  final int languagePackDatabaseSize;

  /// Size of the TDLib internal log
  final int logSize;

  /// [extra] callback sign
  @override
  final dynamic extra;

  /// [clientId] client identifier
  @override
  final int? clientId;
  
  /// Parse from a json
  factory StorageStatisticsFast.fromJson(Map<String, dynamic> json) => StorageStatisticsFast(
    filesSize: json['files_size'],
    fileCount: json['file_count'],
    databaseSize: json['database_size'],
    languagePackDatabaseSize: json['language_pack_database_size'],
    logSize: json['log_size'],
    extra: json['@extra'],
    clientId: json['@client_id'],
  );
  
  
  @override
  Map<String, dynamic> toJson() {
		return {
			"@type": objectType,
      "files_size": filesSize,
      "file_count": fileCount,
      "database_size": databaseSize,
      "language_pack_database_size": languagePackDatabaseSize,
      "log_size": logSize,
		};
	}

  
  StorageStatisticsFast copyWith({
    int? filesSize,
    int? fileCount,
    int? databaseSize,
    int? languagePackDatabaseSize,
    int? logSize,
    dynamic extra,
    int? clientId,
  }) => StorageStatisticsFast(
    filesSize: filesSize ?? this.filesSize,
    fileCount: fileCount ?? this.fileCount,
    databaseSize: databaseSize ?? this.databaseSize,
    languagePackDatabaseSize: languagePackDatabaseSize ?? this.languagePackDatabaseSize,
    logSize: logSize ?? this.logSize,
    extra: extra ?? this.extra,
    clientId: clientId ?? this.clientId,
  );

  static const String objectType = 'storageStatisticsFast';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
