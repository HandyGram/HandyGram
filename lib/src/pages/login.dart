import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController t = TextEditingController();
  final FocusNode f = FocusNode();
  String qrLink = "", authState = "showQR";

  void qrListener(String link) {
    authState = "showQR";
    setState(() => qrLink = link);
  }

  void stateListener(String state) {
    if (state == "done") {
      Navigator.of(context).pushReplacementNamed("/home");
    } else {
      setState(() => authState = state);
    }
  }

  @override
  void initState() {
    super.initState();
    session.functions.getAuthQR();
    session.authQRListener = qrListener;
    session.authStateListener = stateListener;
  }

  @override
  void dispose() {
    session.authQRListener = null;
    session.authStateListener = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return authState == "showQR"
        ? Scaffold(
            body: ScalingList(
              children: [
                const Text(
                  "Login into Telegram",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const Text(
                  "Scan QR",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                qrLink.isEmpty
                    ? const Center(
                        child: SizedBox(
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator(),
                        ),
                      )
                    : PrettyQr(
                        size: MediaQuery.of(context).size.width - 80,
                        data: qrLink,
                        errorCorrectLevel: QrErrorCorrectLevel.L,
                        elementColor:
                            Theme.of(context).textTheme.bodyLarge!.color ??
                                Colors.white,
                      ),
                const SizedBox(height: 10),
              ],
            ),
          )
        : Scaffold(
            body: ScalingList(
              children: [
                const Text(
                  "Login into Telegram",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text(
                  authState == "password" ? "Enter password" : "Try again",
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: t,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        focusNode: f,
                        onEditingComplete: () {
                          f.unfocus();
                          session.functions.setAuthPassword(t.text);
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(Icons.done),
                      onPressed: () {
                        if (f.hasFocus) {
                          f.unfocus();
                        }
                        session.functions.setAuthPassword(t.text);
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
