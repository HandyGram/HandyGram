import 'package:flutter/material.dart';
import 'package:handygram/src/pages/chat.dart';
import 'package:handygram/src/pages/greeting.dart';
import 'package:handygram/src/pages/home.dart';
import 'package:handygram/src/pages/login.dart';
import 'package:handygram/src/pages/settings.dart';
import 'package:handygram/src/pages/tdlib_loader.dart';

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
      onGenerateRoute: (settings) {
        Widget page;
        switch (settings.name) {
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
            page = const HomePage();
            break;
          case "/chat":
            page = ChatPage(
              args: settings.arguments as Map<String, dynamic>,
            );
            break;
          case "/settings":
            page = const SettingsPage();
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
      initialRoute: '/load_tdlib',
    );
  }
}
