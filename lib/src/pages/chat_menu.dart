import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/chat_image.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';

class ChatMenuPage extends StatefulWidget {
  const ChatMenuPage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<ChatMenuPage> createState() => _ChatMenuPageState();
}

class _ChatMenuPageState extends State<ChatMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingList(
        children: [
          Consumer(
            builder: (context, ref, _) {
              ref.watch(session.chatsInfoCacheP);
              String? title = session.chatsInfoCache[widget.args["id"]]?.title;
              if (title == null || title.isEmpty) {
                return Container();
              }
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 1,
                    child: ChatImage(
                      id: widget.args["id"],
                      isUser: false,
                      title: title,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          title,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodyMedium?.color,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PreSettingsButton(
                icon: Icons.voice_chat,
                onPressed: () {},
                mini: true,
              ),
              PreSettingsButton(
                icon: Icons.edit,
                onPressed: () {},
                mini: true,
              ),
              PreSettingsButton(
                icon: Icons.attach_file,
                onPressed: () {},
                mini: true,
              ),
            ],
          ),
          const SizedBox(height: 10),
          PreSettingsButton(
            icon: Icons.info,
            title: "About chat",
            onPressed: () => Navigator.of(context).pushNamed(
              "/chat_info",
              arguments: widget.args,
            ),
          ),
          if (!settingsStorage.backButtonDisabled) const SizedBox(height: 10),
          if (!settingsStorage.backButtonDisabled)
            PreSettingsButton(
              icon: Icons.arrow_back,
              title: "Go back",
              onPressed: () => Navigator.of(context).pop(),
            ),
        ],
      ),
    );
  }
}
