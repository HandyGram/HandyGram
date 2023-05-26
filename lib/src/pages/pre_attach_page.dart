import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';

class PreAttachPage extends StatelessWidget {
  const PreAttachPage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingList(
        children: [
          if (!settingsStorage.backButtonDisabled)
            PreSettingsButton(
              onPressed: () => Navigator.pop(context),
              icon: Icons.arrow_back,
              title: "Back",
            ),
          if (!settingsStorage.backButtonDisabled) const SizedBox(height: 10),
          PreSettingsButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                "/sticker_message",
                arguments: {
                  "chat": args["chat"],
                  "onComplete": () {
                    Navigator.pop(context);
                    args["onComplete"]();
                  },
                },
              );
            },
            icon: Icons.sticky_note_2,
            title: "Sticker",
          ),
          const SizedBox(height: 10),
          PreSettingsButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                "/gif_message",
                arguments: {
                  "chat": args["chat"],
                  "onComplete": () {
                    Navigator.pop(context);
                    args["onComplete"]();
                  },
                },
              );
            },
            icon: Icons.gif,
            title: "GIF",
          ),
          // TODO: send photos
          //const SizedBox(height: 10),
          //PreSettingsButton(
          //  onPressed: () => Navigator.pop(context),
          //  icon: Icons.image,
          //  title: "Image",
          //),
        ],
      ),
    );
  }
}
