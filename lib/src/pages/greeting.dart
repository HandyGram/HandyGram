import 'package:flutter/material.dart';
import 'package:handygram/src/widgets/list.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingList(
        children: [
          const Text(
            "HandyGram",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          const Text(
            "Telegram on your hand",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          TextButton(
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Get started"),
                Icon(Icons.navigate_next),
              ],
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/login");
            },
          ),
        ],
      ),
    );
  }
}
