import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/pages/photo_viewer.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/telegram/users.dart';
import 'package:handygram/src/widgets/chat_image.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';

class PreSettingsPage extends StatefulWidget {
  const PreSettingsPage({super.key});

  @override
  State<PreSettingsPage> createState() => _PreSettingsPageState();
}

class _PreSettingsPageState extends State<PreSettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingList(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: session.usersInfoCache.me != null
                      ? ChatImage(
                          id: session.usersInfoCache.me!.id,
                        )
                      : Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                ),
                onTap: () async {
                  if (session.usersInfoCache.me?.profilePhoto?.big == null) {
                    return;
                  }

                  TgImage(
                    id: session.usersInfoCache.me!.profilePhoto!.big.remote.id,
                  ).load().then((i) {
                    if (i != null && context.mounted) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => PhotoViewer(photo: i),
                        ),
                      );
                    }
                  });
                },
              ),
              const SizedBox(width: 10),
              Center(
                child: Text(
                  session.usersInfoCache.me != null
                      ? userToUsername(
                          session.usersInfoCache.me!,
                        )
                      : "Loading...",
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (session.usersInfoCache.me != null &&
              session.usersFullInfoCache[session.usersInfoCache.me!.id]?.bio
                      ?.text !=
                  null)
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                session.usersFullInfoCache[session.usersInfoCache.me!.id]!.bio!
                    .text,
                style: TextStyle(
                  color: Theme.of(context).textTheme.bodyMedium?.color,
                  fontSize: 12,
                ),
              ),
            ),
          const SizedBox(height: 10),
          PreSettingsButton(
            icon: Icons.settings,
            title: "Settings",
            onPressed: () => Navigator.of(context).pushNamed("/settings"),
          ),
          const SizedBox(height: 10),
          PreSettingsButton(
            icon: Icons.arrow_back,
            title: "Go back",
            onPressed: () => Navigator.of(context).pop(),
          ),
          const SizedBox(height: 10),
          PreSettingsButton(
            icon: Icons.close,
            title: "Exit HandyGram",
            background: Theme.of(context).colorScheme.errorContainer,
            foreground: Theme.of(context).colorScheme.onErrorContainer,
            onPressed: () => exit(0),
          ),
        ],
      ),
    );
  }
}