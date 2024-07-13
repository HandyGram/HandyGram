/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:convert';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/tdlib/client/configuration/keys.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

final class TdlibParameters {
  static const String tag = "TdlibParameters";

  // Telegram API parameters
  final int apiId = TelegramAPIKeys.apiId;
  final String apiHash = TelegramAPIKeys.apiHash;

  // Const TDLib parameters
  final bool useTestDc = false;
  final bool useFileDatabase = true;
  final bool useChatInfoDatabase = true;
  final bool useMessageDatabase = true;
  final bool useSecretChats = false;
  final bool enableStorageOptimizer = true;
  final bool ignoreFileNames = true;

  // Non-late runtime-set parameters
  final String systemLanguageCode = Platform.localeName;

  // Runtime-set parameters
  late final String databaseDirectory;
  late final String filesDirectory;
  late final List<int> databaseEncryptionKey;
  late final String deviceModel;
  late final String systemVersion;
  late final String applicationVersion; // Retrieved from package info

  final int databaseId;

  String _getSystemVersion(AndroidDeviceInfo info) {
    if (HandyNatives().ready && HandyNatives().isWearOS) {
      String? wearOS = HandyNatives().wearOSVersion;
      if (wearOS == null) {
        return "Android ${info.version.release} (with Wear services)";
      }
      return "WearOS $wearOS";
    } else {
      return "Android ${info.version.release}";
    }
  }

  static Future<String> getDatabasesRoot() async {
    final Directory persistentFilesDir = await getApplicationSupportDirectory();
    return p.join(persistentFilesDir.path, 'tdlib');
  }

  Future<void> _init() async {
    final Directory persistentFilesDir = await getApplicationSupportDirectory();
    final Directory documentsDir = await getApplicationDocumentsDirectory();
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

    databaseDirectory =
        p.join(persistentFilesDir.path, 'tdlib', "db-$databaseId");
    filesDirectory = p.join(documentsDir.path, 'files', "client-$databaseId");
    deviceModel = "${androidInfo.brand} ${androidInfo.product}";
    databaseEncryptionKey = utf8.encode(
      "hg-${androidInfo.serialNumber}-$databaseId",
    );
    systemVersion = _getSystemVersion(androidInfo);
    applicationVersion =
        HandyNatives().ready ? HandyNatives().appVersion : "unknown";

    await Directory(databaseDirectory).create(recursive: true);
    await Directory(filesDirectory).create(recursive: true);

    l.d(tag, "App version: $applicationVersion");
    l.d(tag, "DB directory: $databaseDirectory");
    l.d(tag, "Files directory: $filesDirectory");
    l.d(tag, "Device: $deviceModel");
    l.d(tag, "OS: $systemVersion");
    l.d(tag, "Language: ${Platform.localeName}");
  }

  static Future<TdlibParameters> init(int databaseId) async {
    TdlibParameters p = TdlibParameters._(databaseId);
    await p._init();
    return p;
  }

  TdlibParameters._(this.databaseId);
}
