import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/tdlib/tdclient/platform_interfaces/td_olugin.dart';
import 'package:handygram/src/telegram/session.dart';

class TDLibLoader extends StatefulWidget {
  const TDLibLoader({super.key});

  @override
  State<TDLibLoader> createState() => _TDLibLoaderState();
}

enum _State {
  loading,
  connecting,
  error,
}

class _TDLibLoaderState extends State<TDLibLoader> {
  String msg = "Unknown error";
  _State state = _State.loading;
  bool clientWasDestroyed = false;
  int lastClientId = -1;

  void _loadSession() {
    // Kill old session if present
    if (settingsStorage.lastClientId != -1) {
      try {
        TdPlugin.instance!.tdJsonClientDestroy(settingsStorage.lastClientId);
      } catch (_) {}
      settingsStorage.lastClientId = -1;
    }
    try {
      TgSession.init().then(
        (value) {
          session = value;
          setState(() {
            state = _State.connecting;
          });
          _checkLogin();
        },
      );
    } catch (e) {
      setState(() {
        state = _State.error;
        msg = e.toString();
      });
    }
  }

  void _checkLogin() {
    session.isLoggedIn().then((value) {
      if (value == true) {
        Navigator.pushReplacementNamed(context, "/home");
        session.functions.getChatList();
      } else if (value == false) {
        Navigator.pushReplacementNamed(context, "/greeting");
      } else {
        setState(() {
          msg = "Error";
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    if (settingsStorage.lastClientId != -1) {
      clientWasDestroyed = true;
      lastClientId = settingsStorage.lastClientId;
    }
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        _loadSession();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: state == _State.error
              ? [
                  Text(msg),
                  TextButton(
                    child: const Text("Try again"),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/load_tdlib");
                    },
                  ),
                ]
              : [
                  GestureDetector(
                    onLongPress: () {
                      session.kill();
                      _loadSession();
                    },
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(state == _State.connecting
                      ? "Logging in..."
                      : clientWasDestroyed
                          ? "Reloading TDLib..."
                          : "Loading TDLib..."),
                  const Text(
                    "Pro tip:\n"
                    "connect to a Wi-Fi\n"
                    "(even phone hotspot!)\n"
                    "on watch to speed up load",
                    style: TextStyle(
                      fontSize: 8,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  if (settingsStorage.debug)
                    Text(
                      "Last client id: $lastClientId",
                      style: const TextStyle(
                        fontSize: 8,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                ],
        ),
      ),
    );
  }
}
