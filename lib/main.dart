import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/tdlib/td_client.dart';
import 'package:handygram/src/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TdPlugin.initialize();
  await settingsStorage.initialize();
  boostNetwork();
  runApp(
    const ProviderScope(
      child: HandyGram(),
    ),
  );
}
