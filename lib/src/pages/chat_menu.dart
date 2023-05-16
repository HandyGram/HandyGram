import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
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
          Consumer(
            builder: (context, ref, _) {
              var ci = ref.watch(session.chatsInfoCacheP);
              int id = widget.args["id"];
              var chat = ci.maybeGet(id);
              if (chat == null) {
                ci.get(id);
                return Container();
              }

              bool canSendVm = chat.permissions.canSendMediaMessages;
              bool canPostMessagesOnChannel = false;
              tdlib.ChatPermissions perms = chat.permissions;
              var type = chat.type;
              if (type is tdlib.ChatTypeSupergroup) {
                var si = ref.watch(session.supergroupsP);
                var s = si.maybeGet(type.supergroupId);
                if (s == null) {
                  si.get(type.supergroupId);
                  return Container();
                }

                // We shouldn't show write buttons in channel
                // (if user is not an administrator or creator)
                if (type.isChannel) {
                  var status = s.status;
                  if (status is tdlib.ChatMemberStatusAdministrator) {
                    if (!status.rights.canPostMessages) {
                      return Container();
                    }
                  } else if (status is! tdlib.ChatMemberStatusCreator) {
                    return Container();
                  }
                  canPostMessagesOnChannel = true;
                  canSendVm = true;
                } else {
                  // User may be restricted personally
                  var status = s.status;
                  if (status is tdlib.ChatMemberStatusRestricted) {
                    perms = status.permissions;
                    canSendVm = perms.canSendMediaMessages;
                  }
                  if (!perms.canSendMessages) {
                    return Container();
                  }
                }
              } else if (type is tdlib.ChatTypeBasicGroup) {
                var bi = ref.watch(session.basicGroupsP);
                var b = bi.maybeGet(type.basicGroupId);
                if (b == null) {
                  bi.get(type.basicGroupId);
                  return Container();
                }

                var status = b.status;
                if (status is tdlib.ChatMemberStatusRestricted) {
                  perms = status.permissions;
                  canSendVm = perms.canSendMediaMessages;
                }
                if (!perms.canSendMessages) {
                  return Container();
                }
              } else if (type is tdlib.ChatTypePrivate) {
                var ui = ref.watch(session.usersFullInfoCacheP);
                var u = ui.maybeGet(type.userId);
                if (u == null) {
                  ui.get(type.userId);
                  return Container();
                }
                if (u.hasRestrictedVoiceAndVideoNoteMessages) {
                  canSendVm = false;
                }
              }

              String strType = switch (session.chatsInfoCache[id]?.type) {
                tdlib.ChatTypePrivate() => switch (
                      session.usersInfoCache[id]?.type) {
                    tdlib.UserTypeBot() => "bot",
                    _ => "user",
                  },
                tdlib.ChatTypeSupergroup(isChannel: var isChannel) =>
                  isChannel ? "channel" : "group",
                tdlib.ChatTypeSecret() => "user",
                tdlib.ChatTypeBasicGroup() => "group",
                _ => "group",
              };

              bool hasNoRestrictions = canSendVm &&
                  (perms.canSendMediaMessages ||
                      perms.canSendOtherMessages ||
                      canPostMessagesOnChannel);

              return Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: hasNoRestrictions
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.spaceEvenly,
                    children: [
                      if (canSendVm)
                        PreSettingsButton(
                          icon: Icons.voice_chat,
                          onPressed: () {},
                          mini: true,
                        ),
                      if (hasNoRestrictions)
                        PreSettingsButton(
                          icon: Icons.edit,
                          onPressed: () {},
                          mini: true,
                        )
                      else
                        Expanded(
                          child: PreSettingsButton(
                            icon: Icons.edit,
                            title: "Text",
                            onPressed: () {},
                          ),
                        ),
                      // We need !isChannel because permissions
                      // only admin has ability to post something.
                      if (perms.canSendMediaMessages ||
                          perms.canSendOtherMessages ||
                          canPostMessagesOnChannel)
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
