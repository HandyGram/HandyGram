import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/pages/reactions_chooser.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';

class MessageMenuPage extends StatefulWidget {
  const MessageMenuPage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<MessageMenuPage> createState() => _MessageMenuPageState();
}

class _MessageMenuPageState extends State<MessageMenuPage> {
  late TgMessage msg;
  List<tdlib.ReactionType> types = [];
  ChangeNotifier notif = ChangeNotifier();

  @override
  void initState() {
    super.initState();
    msg = widget.args["message"];
    session.functions
        .getMessageAvailableReactions(msg.chatId, msg.id, 4)
        .then((v) {
      if (v == null) return;
      for (var l in v) {
        for (var i in l) {
          types.add(i);
        }
      }
      // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
      notif.notifyListeners();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingList(
        children: [
          Consumer(
            builder: (context, ref, _) {
              TgMessage? m = ref.watch(
                session.messages
                    .getProvider(msg.chatId)!
                    .select((p) => p[msg.id]),
              );
              return Text(
                (m ?? msg).toString(),
                style: TextStyle(
                  fontSize: scaleText(14),
                  overflow: TextOverflow.ellipsis,
                ),
                maxLines: 5,
              );
            },
          ),
          AnimatedBuilder(
            animation: session.messages[msg.chatId]!,
            builder: (context, _) => AnimatedBuilder(
              animation: notif,
              builder: (context, _) {
                if (types.isEmpty) return Container();
                return Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...types.sublist(0, 3).map(
                          (e) {
                            bool isChosen = false;
                            if (msg.interactionInfo != null &&
                                e is tdlib.ReactionTypeEmoji) {
                              isChosen = msg.interactionInfo!.reactions
                                      .where((e) =>
                                          e.type is tdlib.ReactionTypeEmoji)
                                      .where((i) =>
                                          (i.type as tdlib.ReactionTypeEmoji)
                                              .emoji ==
                                          e.emoji)
                                      .firstOrNull
                                      ?.isChosen ??
                                  false;
                            }

                            return PreSettingsButton(
                              title: e is tdlib.ReactionTypeEmoji
                                  ? e.emoji.runes.length > 1
                                      ? "?"
                                      : e.emoji
                                  : "?",
                              isCentered: true,
                              isEmoji: true,
                              onPressed: () {
                                if (isChosen) {
                                  session.functions
                                      .removeMessageReaction(
                                        chatId: msg.chatId,
                                        messageId: msg.id,
                                        type: e,
                                      )
                                      .then((_) => Navigator.pop(context));
                                } else {
                                  session.functions
                                      .addMessageReaction(
                                        chatId: msg.chatId,
                                        messageId: msg.id,
                                        type: e,
                                      )
                                      .then((_) => Navigator.pop(context));
                                }
                              },
                            );
                          },
                        ).toList(),
                        PreSettingsButton(
                          title: "+",
                          isCentered: true,
                          onPressed: () {
                            tdlib.MessageReaction? chosen;
                            if (msg.interactionInfo != null) {
                              chosen = msg.interactionInfo!.reactions
                                  .where((e) =>
                                      e.type is tdlib.ReactionTypeEmoji &&
                                      e.isChosen)
                                  .firstOrNull;
                            }

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReactionsChooser(
                                  chosen:
                                      chosen?.type as tdlib.ReactionTypeEmoji?,
                                  reactions: types,
                                  msg: msg,
                                  onDone: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Consumer(
            builder: (context, ref, _) {
              if (canSendMessages(msg.chatId, ref)?.isEmpty ?? false) {
                return Container();
              }

              return Column(
                children: [
                  const SizedBox(height: 10),
                  PreSettingsButton(
                    icon: Icons.reply,
                    title: "Reply",
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        "/text_message",
                        arguments: {
                          "reply_to_msg": msg,
                          "chat": msg.chatId,
                          "onComplete": () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                        },
                      );
                    },
                  ),
                ],
              );
            },
          ),
          if (msg.canBeForwarded) const SizedBox(height: 10),
          if (msg.canBeForwarded)
            PreSettingsButton(
              icon: Icons.forward,
              title: "Forward",
              onPressed: () {},
            ),
          if (msg.canBeEdited) const SizedBox(height: 10),
          if (msg.canBeEdited)
            PreSettingsButton(
              icon: Icons.edit,
              title: "Edit",
              onPressed: () {},
            ),
          const SizedBox(height: 10),
          PreSettingsButton(
            icon: Icons.person_remove,
            title: "Delete for myself",
            onPressed: () {
              session.functions.deleteMessage(msg.chatId, msg.id, false);
              Navigator.pop(context);
            },
          ),
          if (msg.canBeDeletedForAllUsers) const SizedBox(height: 10),
          if (msg.canBeDeletedForAllUsers)
            PreSettingsButton(
              icon: Icons.delete_forever,
              title: "Delete for everyone",
              onPressed: () {
                session.functions.deleteMessage(msg.chatId, msg.id, true);
                Navigator.pop(context);
              },
            ),
          const SizedBox(height: 10),
          if (!settingsStorage.backButtonDisabled)
            PreSettingsButton(
              icon: Icons.arrow_back,
              title: "Back",
              onPressed: () => Navigator.pop(context),
            ),
        ],
      ),
    );
  }
}
