import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:battery_info/battery_info_plugin.dart';
import 'package:battery_info/enums/charging_status.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/native_utils.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
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
import 'package:handygram/src/pages/wear_shape_chooser.dart';
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
  static bool isSquare = false;
  Timer? _t;

  @override
  void dispose() {
    _t?.cancel();
    super.dispose();
  }

  void _syncShape() async {
    if (sessionReady) {
      isSquare = session.isSquareScreen;
      return;
    }

    String? shape;
    try {
      shape = await Wear.instance.getShape();
    } catch (_) {
      shape = null;
    }
    if (shape != "round") {
      if (context.mounted) {
        setState(() {
          isSquare = true;
        });
      }
    }
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
    _syncShape();
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
                    padding: const EdgeInsets.only(left: 5, top: 3),
                    child: Container(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(99),
                      ),
                      child: Text(
                        "${clock.hour.toString().padLeft(2, '0')}:"
                        "${clock.minute.toString().padLeft(2, '0')}",
                        style: const TextStyle(shadows: [Shadow()]),
                      ),
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

class NetworkInfoWrapper extends ConsumerStatefulWidget {
  const NetworkInfoWrapper({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NetworkInfoWrapperState();
}

class _NetworkInfoWrapperState extends ConsumerState<NetworkInfoWrapper>
    with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    value: 0.0,
    duration: const Duration(seconds: 1),
  );
  Timer? _t;
  DateTime clock = DateTime.now();
  bool inAmbientMode = false;

  int batteryLevel = 0;
  bool isCharging = false;

  IconData _netIcon = Icons.bluetooth_connected;

  void _show() async {
    controller.animateTo(
      1,
      curve: Curves.easeInOutSine,
    );
    await Future.delayed(const Duration(seconds: 5));
    controller.animateTo(
      0,
      curve: Curves.easeInOutSine,
    );
  }

  void _selectIcon(NetworkInfo? info) {
    if (info == null) return;
    switch (info.type) {
      case NetworkType.cellular:
        if (info.isConnected) {
          if (info.hasInternetConnection) {
            _netIcon = Icons.signal_cellular_4_bar;
          } else {
            _netIcon = Icons.signal_cellular_nodata;
          }
        } else {
          _netIcon = Icons.signal_cellular_off;
        }
      case NetworkType.wifi:
        if (info.isConnected) {
          if (info.hasInternetConnection) {
            _netIcon = Icons.signal_wifi_4_bar;
          } else {
            _netIcon = Icons.signal_wifi_connected_no_internet_4;
          }
        } else {
          _netIcon = Icons.signal_wifi_off;
        }
      case NetworkType.bluetooth:
        _netIcon = Icons.bluetooth_connected;
      case NetworkType.unknown:
        _netIcon = Icons.wifi_tethering_error;
    }
    setState(() {});
    _show();
  }

  @override
  void initState() {
    super.initState();
    BatteryInfoPlugin().androidBatteryInfoStream.listen(
      (event) {
        if (event == null) {
          l.e("BatteryStreamProvider", "could't get battery data stream");
        }
        batteryLevel = event?.batteryLevel ?? 0;
        isCharging = event?.chargingStatus == ChargingStatus.Charging;
        if (inAmbientMode) setState(() {});
      },
    );
    BatteryInfoPlugin().androidBatteryInfo.then(
      (value) {
        if (value == null) {
          l.e("BatteryDataProvider", "could't get battery data");
        }
        batteryLevel = value?.batteryLevel ?? 0;
        isCharging = value?.chargingStatus == ChargingStatus.Charging;
      },
    );
    Future.delayed(const Duration(seconds: 10)).then(
      (_) => ref.listenManual(
        session.nativesP.select((n) => n.networkInfo),
        (_, next) => _selectIcon(next),
      ),
    );

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
  }

  void onTime() {
    if (context.mounted && inAmbientMode) {
      setState(() {
        clock = DateTime.now();
      });
    }
  }

  @override
  void dispose() {
    _t?.cancel();
    super.dispose();
  }

  final List<IconData> _batsDischarging = [
    Icons.battery_0_bar,
    Icons.battery_1_bar,
    Icons.battery_2_bar,
    Icons.battery_3_bar,
    Icons.battery_4_bar,
    Icons.battery_5_bar,
    Icons.battery_6_bar,
    Icons.battery_full,
  ];

  Widget _getBatteryIcon(
      int level, bool charging, double size, Color fg, Color bg) {
    if (level < 0) {
      return Icon(
        Icons.battery_alert,
        size: size,
        color: fg,
      );
    }
    int index = ((_batsDischarging.length - 1) / 100 * level).round();

    if (!charging) {
      return Icon(
        _batsDischarging[index],
        size: size,
        color: fg,
      );
    }

    return Stack(
      fit: StackFit.loose,
      children: [
        SizedBox(
          height: size,
          width: size,
          child: Center(
            child: Icon(
              _batsDischarging[index],
              size: size,
              color: fg,
            ),
          ),
        ),
        SizedBox(
          height: size,
          width: size,
          child: Center(
            child: Icon(
              Icons.bolt,
              size: size / 2,
              color: Colors.green,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      builder: (context, mode, ch) {
        l.i("ambient", "mode: $mode");

        if (mode == WearMode.ambient && sessionReady) {
          inAmbientMode = true;
          clock = DateTime.now();
          return Directionality(
            textDirection: TextDirection.ltr,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Theme(
                data: ThemeData.dark(useMaterial3: true),
                child: Scaffold(
                  backgroundColor: Colors.black,
                  body: Center(
                    child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Consumer(
                          builder: (context, ref, _) {
                            int unreadCount = ref.watch(
                              session.chatsInfoCacheP
                                  .select((v) => v.unreadCount),
                            );
                            int unreadMentionCount = ref.watch(
                              session.chatsInfoCacheP
                                  .select((v) => v.unreadMentionCount),
                            );
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${clock.hour.toString().padLeft(2, '0')}:"
                                  "${clock.minute.toString().padLeft(2, '0')}",
                                  style: TextStyle(fontSize: scaleText(36)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "${clock.year}.${clock.month}.${clock.day}",
                                      style: TextStyle(fontSize: scaleText(12)),
                                    ),
                                    const SizedBox(width: 5),
                                    _getBatteryIcon(
                                      batteryLevel,
                                      isCharging,
                                      scaleText(15),
                                      Colors.white,
                                      Colors.black,
                                    ),
                                    Text(
                                      "$batteryLevel%",
                                      style: TextStyle(fontSize: scaleText(12)),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.mail,
                                      size: scaleText(15),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "$unreadCount",
                                      style: TextStyle(fontSize: scaleText(12)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      size: scaleText(15),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      "$unreadMentionCount",
                                      style: TextStyle(fontSize: scaleText(12)),
                                    ),
                                  ],
                                )
                              ],
                            );
                          },
                        )),
                  ),
                ),
              ),
            ),
          );
        }

        bool square = _ClockWrapperState.isSquare;

        return Directionality(
          textDirection: TextDirection.ltr,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              fit: StackFit.expand,
              children: [
                widget.child,
                SizedBox.expand(
                  child: Align(
                    alignment:
                        square ? Alignment.topRight : Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: square ? 5 : 0,
                        top: square ? 5 : 0,
                        bottom: square ? 0 : 40,
                      ),
                      child: AnimatedBuilder(
                        animation: controller,
                        builder: (context, _) {
                          return Icon(
                            _netIcon,
                            color: Colors.white.withOpacity(controller.value),
                            size: 16,
                            opticalSize: 16,
                            shadows: [
                              Shadow(
                                color:
                                    Colors.black.withOpacity(controller.value),
                                blurRadius: 5,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class HandyGram extends StatelessWidget {
  const HandyGram({super.key});

  @override
  Widget build(BuildContext context) {
    return NetworkInfoWrapper(
      child: MaterialApp(
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

          if (sessionReady && settingsStorage.showWatchShapeChooser) {
            name = "/wear_shape_chooser";
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
            case "/wear_shape_chooser":
              page = const WearShapeChooserPage();
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

          return CupertinoPageRoute(
            builder: (context) => ClockWrapper(page),
          );
        },
        // Loads the TDLib and checks auth status
        initialRoute: sessionReady ? '/home' : '/load_tdlib',
      ),
    );
  }
}
