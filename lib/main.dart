import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/tdlib/td_client.dart';
import 'package:handygram/src/main.dart';
import 'package:wear/wear.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Wear.instance.setAutoResumeEnabled(true);
  await TdPlugin.initialize();
  await settingsStorage.initialize();
  runApp(
    const ProviderScope(
      child: HandyGram(),
    ),
  );
}
