/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:handygram/firebase_options.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/services/firebase/firebase.dart';
import 'package:handygram/src/main.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting();

  await loadLocalizations();
  await Settings.start();
  await HandyNatives().init();

  if (Settings().get(SettingsEntries.runInBackground)) {
    FirebaseMessaging.onBackgroundMessage(
      TdlibFirebaseService.backgroundHandler,
    );
  }

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const HandyGram());
}
