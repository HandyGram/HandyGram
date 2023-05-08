import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/switch.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingList(
        children: [
          if (!settingsStorage.backButtonDisabled)
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          if (settingsStorage.settingsLoadError != null)
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.errorContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                "Failed to restore settings database. Your settings were reset.",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onErrorContainer,
                  fontSize: 12,
                ),
              ),
            ),
          SettingsSwitch(
            onChanged: (v) {
              setState(() {
                settingsStorage.backButtonDisabled =
                    !settingsStorage.backButtonDisabled;
              });
            },
            title: "Disable back buttons",
            description:
                "Disable on-screen back buttons if you have hardware ones.",
            value: settingsStorage.backButtonDisabled,
          ),
          SettingsSwitch(
            onChanged: (v) {
              setState(() {
                settingsStorage.isAsyncInvokes =
                    !settingsStorage.isAsyncInvokes;
              });
            },
            title: "Asynchronous invokes",
            description: "Allow multiple invokes at one time. Unstable.",
            value: settingsStorage.isAsyncInvokes,
          ),
          SettingsSwitch(
            onChanged: (v) {
              setState(() {
                settingsStorage.prioritizeAllImages =
                    !settingsStorage.prioritizeAllImages;
              });
            },
            title: "Prioritize images",
            description: "Give maximum download priority for all images.",
            value: settingsStorage.prioritizeAllImages,
          ),
          SettingsSwitch(
            onChanged: (v) {
              setState(() {
                settingsStorage.debug = !settingsStorage.debug;
              });
            },
            title: "Debug info",
            description: "Message, chat IDs, logs and more.",
            value: settingsStorage.debug,
          ),
          SettingsSwitch(
            onChanged: (v) {
              setState(() {
                settingsStorage.verbose = !settingsStorage.verbose;
              });
            },
            title: "Verbose debugging",
            description:
                "Log almost everything (enables logging of TDLib invokes and updates!). Has HUGE impact on performance!",
            value: settingsStorage.verbose,
            active: settingsStorage.debug,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.logout),
            label: const Text(
              "Logout",
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(hours: 1),
                content: Center(child: Text("Please wait...")),
              ));
              session.functions.logOut().then((_) => exit(0));
            },
          ),
        ],
      ),
    );
  }
}
