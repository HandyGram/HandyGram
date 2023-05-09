import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/session.dart';

class TDLibLoader extends StatefulWidget {
  const TDLibLoader({super.key});

  @override
  State<TDLibLoader> createState() => _TDLibLoaderState();
}

class _TDLibLoaderState extends State<TDLibLoader> {
  String msg = "Loading TDLib...";

  void _loadSession() {
    try {
      TgSession.init().then(
        (value) {
          session = value;
          setState(() {
            msg = "Connecting...";
          });
          _checkLogin();
        },
      );
    } catch (e) {
      setState(() {
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
          children: [
            if (msg == "Loading TDLib..." || msg == "Connecting...")
              const SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(),
              ),
            if (msg == "Loading TDLib..." || msg == "Connecting...")
              const SizedBox(height: 20),
            Text(msg),
            if (msg != "Loading TDLib..." && msg != "Connecting...")
              TextButton(
                child: const Text("Try again"),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/load_tdlib");
                },
              ),
            if (msg == "Loading TDLib..." || msg == "Connecting...")
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
          ],
        ),
      ),
    );
  }
}
