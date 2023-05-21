import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/pages/chat.dart';
import 'package:handygram/src/pages/chat_info.dart';
import 'package:handygram/src/pages/chat_menu.dart';
import 'package:handygram/src/pages/greeting.dart';
import 'package:handygram/src/pages/home.dart';
import 'package:handygram/src/pages/login.dart';
import 'package:handygram/src/pages/message_menu.dart';
import 'package:handygram/src/pages/pre_settings.dart';
import 'package:handygram/src/pages/settings.dart';
import 'package:handygram/src/pages/tdlib_loader.dart';
import 'package:handygram/src/telegram/session.dart';

class HandyGram extends StatelessWidget {
  const HandyGram({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HandyGram',
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      onGenerateRoute: (s) {
        Widget page;
        String? name = s.name;

        // Skip loading TDLib if it was already done
        if (name == "/load_tdlib" && sessionReady) {
          name = "/home";
        }

        switch (name) {
          case "/login":
            page = const LoginPage();
            break;
          case "/greeting":
            page = const GreetingPage();
            break;
          case "/load_tdlib":
            page = const TDLibLoader();
            break;
          case "/home":
            page = WillPopScope(
              child: const HomePage(),
              onWillPop: () {
                settingsStorage.lastClientId = -1;
                exit(0);
              },
            );
            break;
          case "/chat":
            page = ChatPage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/settings":
            page = const SettingsPage();
            break;
          case "/pre_settings":
            page = const PreSettingsPage();
            break;
          case "/chat_menu":
            page = ChatMenuPage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/chat_info":
            page = ChatInfoPage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/message_menu":
            page = MessageMenuPage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          default:
            page = const Scaffold(
              body: Center(
                child: Text(
                  "Unexpected error",
                ),
              ),
            );
            break;
        }

        return MaterialPageRoute(
          builder: (context) => page,
        );
      },
      // Loads the TDLib and checks auth status
      initialRoute: sessionReady ? '/home' : '/load_tdlib',
    );
  }
}
