import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/chat_image.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class ChatMenuPage extends StatefulWidget {
  const ChatMenuPage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<ChatMenuPage> createState() => _ChatMenuPageState();
}

class _ChatMenuPageState extends State<ChatMenuPage> {
  @override
  Widget build(BuildContext context) {
    var id = widget.args["id"];

    return Scaffold(
      body: ScalingList(
        children: [
          Consumer(
            builder: (context, ref, _) {
              String? title = ref.watch(session.chatsInfoCacheP.select(
                (c) => c[id]?.title,
              ));
              if (title == null || title.isEmpty) {
                return Container();
              }
              return Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 1,
                    child: ChatImage(
                      id: id,
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
                            fontSize: scaleText(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Consumer(
            builder: (context, ref, _) {
              var perms = canSendMessages(id, ref) ?? [];
              if (perms.isEmpty) {
                return Container();
              }

              bool hasNoRestrictions = perms.length > 3;

              return Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: hasNoRestrictions
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.spaceEvenly,
                    children: [
                      if (perms
                          .contains(AvailableSendPermissions.voiceMessages))
                        PreSettingsButton(
                          icon: Icons.voice_chat,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              "/voice_message",
                              arguments: {
                                "chat": id,
                                "onComplete": () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                              },
                            );
                          },
                          mini: true,
                        ),
                      if (hasNoRestrictions)
                        PreSettingsButton(
                          icon: Icons.edit,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              "/text_message",
                              arguments: {
                                "chat": id,
                                "onComplete": () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                              },
                            );
                          },
                          mini: true,
                        )
                      else
                        Expanded(
                          child: PreSettingsButton(
                            icon: Icons.edit,
                            title: "Text",
                            onPressed: () {
                              Navigator.of(context).pushNamed(
                                "/text_message",
                                arguments: {
                                  "chat": id,
                                  "onComplete": () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                },
                              );
                            },
                          ),
                        ),
                      if (perms
                          .contains(AvailableSendPermissions.mediaMessages))
                        PreSettingsButton(
                          icon: Icons.attach_file,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              "/pre_attach",
                              arguments: {
                                "chat": id,
                                "onComplete": () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                              },
                            );
                          },
                          mini: true,
                        ),
                    ],
                  ),
                ],
              );
            },
          ),
          Consumer(
            builder: (context, ref, _) {
              var type = ref.watch(
                session.chatsInfoCacheP.select((c) => c[id]?.type),
              );
              tdlib.UserType? uType;
              if (type is tdlib.ChatTypePrivate) {
                uType = ref.watch(
                  session.usersInfoCacheP.select((c) => c[id]?.type),
                );
              }
              String strType = switch (type) {
                tdlib.ChatTypePrivate() => switch (uType) {
                    tdlib.UserTypeBot() => "bot",
                    _ => "user",
                  },
                tdlib.ChatTypeSupergroup(isChannel: var isChannel) =>
                  isChannel ? "channel" : "group",
                tdlib.ChatTypeSecret() => "user",
                tdlib.ChatTypeBasicGroup() => "group",
                _ => "group",
              };

              return Column(
                children: [
                  const SizedBox(height: 10),
                  PreSettingsButton(
                    icon: Icons.info,
                    title: "About $strType",
                    onPressed: () => Navigator.of(context).pushNamed(
                      "/chat_info",
                      arguments: widget.args,
                    ),
                  ),
                ],
              );
            },
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
