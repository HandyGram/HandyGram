part of '../tdapi.dart';

/// **SetTdlibParameters** *(setTdlibParameters)* - TDLib function
///
/// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters.
///
/// * [useTestDc]: Pass true to use Telegram test environment instead of the production environment.
/// * [databaseDirectory]: The path to the directory for the persistent database; if empty, the current working directory will be used.
/// * [filesDirectory]: The path to the directory for storing files; if empty, database_directory will be used.
/// * [databaseEncryptionKey]: Encryption key for the database. If the encryption key is invalid, then an error with code 401 will be returned.
/// * [useFileDatabase]: Pass true to keep information about downloaded and uploaded files between application restarts.
/// * [useChatInfoDatabase]: Pass true to keep cache of users, basic groups, supergroups, channels and secret chats between restarts. Implies use_file_database.
/// * [useMessageDatabase]: Pass true to keep cache of chats and messages between restarts. Implies use_chat_info_database.
/// * [useSecretChats]: Pass true to enable support for secret chats.
/// * [apiId]: Application identifier for Telegram API access, which can be obtained at https://my.telegram.org.
/// * [apiHash]: Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org.
/// * [systemLanguageCode]: IETF language tag of the user's operating system language; must be non-empty.
/// * [deviceModel]: Model of the device the application is being run on; must be non-empty.
/// * [systemVersion]: Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib.
/// * [applicationVersion]: Application version; must be non-empty.
/// * [enableStorageOptimizer]: Pass true to automatically delete old files in background.
/// * [ignoreFileNames]: Pass true to ignore original file names for downloaded files. Otherwise, downloaded files are saved under names as close as possible to the original name.
///
/// [Ok] is returned on completion.
final class SetTdlibParameters extends TdFunction {
  
  /// **SetTdlibParameters** *(setTdlibParameters)* - TDLib function
  ///
  /// Sets the parameters for TDLib initialization. Works only when the current authorization state is authorizationStateWaitTdlibParameters.
  ///
  /// * [useTestDc]: Pass true to use Telegram test environment instead of the production environment.
  /// * [databaseDirectory]: The path to the directory for the persistent database; if empty, the current working directory will be used.
  /// * [filesDirectory]: The path to the directory for storing files; if empty, database_directory will be used.
  /// * [databaseEncryptionKey]: Encryption key for the database. If the encryption key is invalid, then an error with code 401 will be returned.
  /// * [useFileDatabase]: Pass true to keep information about downloaded and uploaded files between application restarts.
  /// * [useChatInfoDatabase]: Pass true to keep cache of users, basic groups, supergroups, channels and secret chats between restarts. Implies use_file_database.
  /// * [useMessageDatabase]: Pass true to keep cache of chats and messages between restarts. Implies use_chat_info_database.
  /// * [useSecretChats]: Pass true to enable support for secret chats.
  /// * [apiId]: Application identifier for Telegram API access, which can be obtained at https://my.telegram.org.
  /// * [apiHash]: Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org.
  /// * [systemLanguageCode]: IETF language tag of the user's operating system language; must be non-empty.
  /// * [deviceModel]: Model of the device the application is being run on; must be non-empty.
  /// * [systemVersion]: Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib.
  /// * [applicationVersion]: Application version; must be non-empty.
  /// * [enableStorageOptimizer]: Pass true to automatically delete old files in background.
  /// * [ignoreFileNames]: Pass true to ignore original file names for downloaded files. Otherwise, downloaded files are saved under names as close as possible to the original name.
  ///
  /// [Ok] is returned on completion.
  const SetTdlibParameters({
    required this.useTestDc,
    required this.databaseDirectory,
    required this.filesDirectory,
    required this.databaseEncryptionKey,
    required this.useFileDatabase,
    required this.useChatInfoDatabase,
    required this.useMessageDatabase,
    required this.useSecretChats,
    required this.apiId,
    required this.apiHash,
    required this.systemLanguageCode,
    required this.deviceModel,
    required this.systemVersion,
    required this.applicationVersion,
    required this.enableStorageOptimizer,
    required this.ignoreFileNames,
  });
  
  /// Pass true to use Telegram test environment instead of the production environment
  final bool useTestDc;

  /// The path to the directory for the persistent database; if empty, the current working directory will be used
  final String databaseDirectory;

  /// The path to the directory for storing files; if empty, database_directory will be used
  final String filesDirectory;

  /// Encryption key for the database. If the encryption key is invalid, then an error with code 401 will be returned
  final String databaseEncryptionKey;

  /// Pass true to keep information about downloaded and uploaded files between application restarts
  final bool useFileDatabase;

  /// Pass true to keep cache of users, basic groups, supergroups, channels and secret chats between restarts. Implies use_file_database
  final bool useChatInfoDatabase;

  /// Pass true to keep cache of chats and messages between restarts. Implies use_chat_info_database
  final bool useMessageDatabase;

  /// Pass true to enable support for secret chats
  final bool useSecretChats;

  /// Application identifier for Telegram API access, which can be obtained at https://my.telegram.org
  final int apiId;

  /// Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org
  final String apiHash;

  /// IETF language tag of the user's operating system language; must be non-empty
  final String systemLanguageCode;

  /// Model of the device the application is being run on; must be non-empty
  final String deviceModel;

  /// Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib
  final String systemVersion;

  /// Application version; must be non-empty
  final String applicationVersion;

  /// Pass true to automatically delete old files in background
  final bool enableStorageOptimizer;

  /// Pass true to ignore original file names for downloaded files. Otherwise, downloaded files are saved under names as close as possible to the original name
  final bool ignoreFileNames;
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
		return {
			"@type": objectType,
      "use_test_dc": useTestDc,
      "database_directory": databaseDirectory,
      "files_directory": filesDirectory,
      "database_encryption_key": databaseEncryptionKey,
      "use_file_database": useFileDatabase,
      "use_chat_info_database": useChatInfoDatabase,
      "use_message_database": useMessageDatabase,
      "use_secret_chats": useSecretChats,
      "api_id": apiId,
      "api_hash": apiHash,
      "system_language_code": systemLanguageCode,
      "device_model": deviceModel,
      "system_version": systemVersion,
      "application_version": applicationVersion,
      "enable_storage_optimizer": enableStorageOptimizer,
      "ignore_file_names": ignoreFileNames,
      "@extra": extra,
		};
	}

  
  SetTdlibParameters copyWith({
    bool? useTestDc,
    String? databaseDirectory,
    String? filesDirectory,
    String? databaseEncryptionKey,
    bool? useFileDatabase,
    bool? useChatInfoDatabase,
    bool? useMessageDatabase,
    bool? useSecretChats,
    int? apiId,
    String? apiHash,
    String? systemLanguageCode,
    String? deviceModel,
    String? systemVersion,
    String? applicationVersion,
    bool? enableStorageOptimizer,
    bool? ignoreFileNames,
  }) => SetTdlibParameters(
    useTestDc: useTestDc ?? this.useTestDc,
    databaseDirectory: databaseDirectory ?? this.databaseDirectory,
    filesDirectory: filesDirectory ?? this.filesDirectory,
    databaseEncryptionKey: databaseEncryptionKey ?? this.databaseEncryptionKey,
    useFileDatabase: useFileDatabase ?? this.useFileDatabase,
    useChatInfoDatabase: useChatInfoDatabase ?? this.useChatInfoDatabase,
    useMessageDatabase: useMessageDatabase ?? this.useMessageDatabase,
    useSecretChats: useSecretChats ?? this.useSecretChats,
    apiId: apiId ?? this.apiId,
    apiHash: apiHash ?? this.apiHash,
    systemLanguageCode: systemLanguageCode ?? this.systemLanguageCode,
    deviceModel: deviceModel ?? this.deviceModel,
    systemVersion: systemVersion ?? this.systemVersion,
    applicationVersion: applicationVersion ?? this.applicationVersion,
    enableStorageOptimizer: enableStorageOptimizer ?? this.enableStorageOptimizer,
    ignoreFileNames: ignoreFileNames ?? this.ignoreFileNames,
  );

  static const String objectType = 'setTdlibParameters';

  @override
  String toString() => jsonEncode(toJson());

  @override
  String get instanceType => objectType;
}
