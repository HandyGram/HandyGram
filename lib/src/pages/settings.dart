import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/error_box.dart';
import 'package:handygram/src/widgets/settings/section.dart';
import 'package:handygram/src/widgets/settings/slider.dart';
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
            const SettingsErrorBox(
              text:
                  "Failed to restore settings database. Your settings were reset.",
            ),
          const SettingsSection(title: "Interface", icon: Icons.visibility),
          if (!session.isWearable)
            SettingsSwitch(
              onChanged: (v) {
                setState(() {
                  settingsStorage.useRoundAdaptedUI =
                      !settingsStorage.useRoundAdaptedUI;
                });
              },
              title: "Use round watch UI",
              description:
                  "Change the app layout between square and round watch adapted ones. Takes full effect after restart.",
              value: settingsStorage.useRoundAdaptedUI,
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
                settingsStorage.noProfilePhotos =
                    !settingsStorage.noProfilePhotos;
              });
            },
            title: "Disable profile pictures",
            description: "Disable profile pictures nearby messages",
            value: settingsStorage.noProfilePhotos,
          ),
          SettingsSwitch(
            onChanged: (v) {
              setState(() {
                settingsStorage.clockEnabled = !settingsStorage.clockEnabled;
              });
            },
            title: "Show clock",
            description: "Show clock over all pages in top center",
            value: settingsStorage.clockEnabled,
          ),
          if (settingsStorage.textScale > 1.25)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: SettingsErrorBox(
                text:
                    "Consider disabling profile pictures with such big text size",
              ),
            ),
          SettingsSlider(
            onChanged: (v) {
              setState(() {
                v++;
                settingsStorage.textScale = 0.75 * v;
              });
            },
            title: "Font scale",
            description: "Scale font",
            value: settingsStorage.textScale / 0.75 / 2,
          ),
          const SettingsSection(title: "TDLib", icon: Icons.build),
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
                settingsStorage.isAsyncUpdates =
                    !settingsStorage.isAsyncUpdates;
              });
            },
            title: "Asynchronous updates",
            description:
                "Speed up startup, letting all update handlers run at the same time. VERY UNSTABLE.",
            value: settingsStorage.isAsyncUpdates,
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
          const SettingsSection(title: "Developer", icon: Icons.bug_report),
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
          const SettingsSection(
            title: "Other",
            icon: Icons.miscellaneous_services,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.logout),
            label: Text(
              "Logout",
              style: TextStyle(
                fontSize: scaleText(11),
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                duration: Duration(hours: 1),
                content: Center(child: Text("Please wait...")),
              ));
              settingsStorage.lastClientId = -1;
              session.functions.logOut().then((_) => exit(0));
            },
          ),
        ],
      ),
    );
  }
}
