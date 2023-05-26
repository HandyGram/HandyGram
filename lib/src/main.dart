import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/pages/chat.dart';
import 'package:handygram/src/pages/chat_info.dart';
import 'package:handygram/src/pages/chat_menu.dart';
import 'package:handygram/src/pages/gif_message.dart';
import 'package:handygram/src/pages/greeting.dart';
import 'package:handygram/src/pages/home.dart';
import 'package:handygram/src/pages/informator.dart';
import 'package:handygram/src/pages/login.dart';
import 'package:handygram/src/pages/message_menu.dart';
import 'package:handygram/src/pages/pre_attach_page.dart';
import 'package:handygram/src/pages/pre_settings.dart';
import 'package:handygram/src/pages/settings.dart';
import 'package:handygram/src/pages/sticker_message.dart';
import 'package:handygram/src/pages/tdlib_loader.dart';
import 'package:handygram/src/pages/text_message.dart';
import 'package:handygram/src/pages/voice_message.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:wear/wear.dart';

class ClockWrapper extends StatefulWidget {
  const ClockWrapper(this.child, {super.key});

  final Widget child;

  @override
  State<ClockWrapper> createState() => _ClockWrapperState();
}

class _Painter extends CustomPainter {
  _Painter(this.radius, this.clock, this.textStyle);

  final num radius;
  final DateTime clock;
  final TextStyle textStyle;

  final _textPainter = TextPainter(textDirection: TextDirection.ltr);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.translate(size.width / 2, size.height / 2 - radius);

    String text = "${clock.hour.toString().padLeft(2, '0')}:"
        "${clock.minute.toString().padLeft(2, '0')}";

    double angle = 0;
    for (int i = 0; i < text.length; i++) {
      angle = _drawLetter(canvas, text[i], angle, true);
    }

    double initialAngle = -angle * 2;
    final d = 2 * radius * sin(initialAngle / 2);
    final rotationAngle = _calculateRotationAngle(0, initialAngle - 0.05);
    canvas.rotate(rotationAngle);
    canvas.translate(d, 0);

    angle = initialAngle;
    for (int i = 0; i < text.length; i++) {
      angle = _drawLetter(canvas, text[i], angle, false);
    }
  }

  double _drawLetter(
      Canvas canvas, String letter, double prevAngle, bool dryRun) {
    _textPainter.text = TextSpan(text: letter, style: textStyle);
    _textPainter.layout(
      minWidth: 0,
      maxWidth: double.maxFinite,
    );

    final double d = _textPainter.width;
    final double alpha = 2 * asin(d / (2 * radius));

    if (!dryRun) {
      final newAngle = _calculateRotationAngle(prevAngle, alpha);
      canvas.rotate(newAngle);

      _textPainter.paint(canvas, Offset(0, -_textPainter.height));
      canvas.translate(d, 0);
    }

    return alpha;
  }

  double _calculateRotationAngle(double prevAngle, double alpha) =>
      (alpha + prevAngle) / 2;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class _ClockWrapperState extends State<ClockWrapper> {
  DateTime clock = DateTime.now();
  bool isSquare = false;
  Timer? _t;

  @override
  void dispose() {
    _t?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    var now = DateTime.now();
    var nextMinute = DateTime(
      now.year,
      now.month,
      now.day,
      now.hour,
      now.minute + 1,
    );
    _t = Timer(nextMinute.difference(now), () {
      _t = Timer.periodic(const Duration(minutes: 1), (timer) {
        onTime();
      });
      onTime();
    });
    Wear.instance.getShape().then((shape) {
      if (shape != "round") {
        if (context.mounted) {
          setState(() {
            isSquare = true;
          });
        }
      }
    });
  }

  void onTime() {
    if (context.mounted) {
      setState(() {
        clock = DateTime.now();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SizedBox.expand(
            child: widget.child,
          ),
          if (settingsStorage.clockEnabled) ...[
            if (!isSquare)
              SizedBox.expand(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 30,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ),
            if (!isSquare)
              SizedBox.expand(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(),
                    child: CustomPaint(
                      painter: _Painter(
                        MediaQuery.of(context).size.height / 2.5,
                        clock,
                        const TextStyle(),
                      ),
                    ),
                  ),
                ),
              ),
            if (isSquare)
              SizedBox.expand(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text(
                      "${clock.hour.toString().padLeft(2, '0')}:"
                      "${clock.minute.toString().padLeft(2, '0')}",
                      style: const TextStyle(shadows: [Shadow()]),
                    ),
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}

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
          case "/text_message":
            page = TextMessagePage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/sticker_message":
            page = StickerMessagePage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/gif_message":
            page = GifMessagePage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/pre_attach":
            page = PreAttachPage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/informator":
            page = InformatorPage(
              args: s.arguments as Map<String, dynamic>,
            );
            break;
          case "/voice_message":
            page = VoiceMessagePage(
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
            l.e("Router", "No route named ${s.name}");
            break;
        }

        return MaterialPageRoute(
          builder: (context) => ClockWrapper(page),
        );
      },
      // Loads the TDLib and checks auth status
      initialRoute: sessionReady ? '/home' : '/load_tdlib',
    );
  }
}
