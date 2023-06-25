import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';

class WearShapeChooserPage extends StatefulWidget {
  const WearShapeChooserPage({super.key});

  @override
  State<WearShapeChooserPage> createState() => _WearShapeChooserPageState();
}

class _WearShapeChooserPageState extends State<WearShapeChooserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingList(
        children: [
          const Text(
            "Select shape",
            style: TextStyle(fontSize: 24),
          ),
          const Text(
            "HandyGram has detected that your watch is running AOSP instead of WearOS. App couldn't get your watch shape automatically.",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          PreSettingsButton(
            onPressed: () {
              settingsStorage.useRoundAdaptedUI = true;
              settingsStorage.showWatchShapeChooser = false;
              Navigator.of(context).pushReplacementNamed("/load_tdlib");
            },
            icon: Icons.circle_outlined,
            title: "Round",
            isCentered: true,
          ),
          const SizedBox(height: 10),
          PreSettingsButton(
            onPressed: () {
              settingsStorage.useRoundAdaptedUI = false;
              settingsStorage.showWatchShapeChooser = false;
              Navigator.of(context).pushReplacementNamed("/load_tdlib");
            },
            icon: Icons.crop_square,
            title: "Square",
            isCentered: true,
          ),
        ],
      ),
    );
  }
}
