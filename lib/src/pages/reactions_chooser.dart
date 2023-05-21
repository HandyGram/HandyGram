import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';

class ReactionsChooser extends StatelessWidget {
  const ReactionsChooser({
    super.key,
    required this.msg,
    required this.reactions,
    required this.chosen,
    required this.onDone,
  });

  final TgMessage msg;
  final List<tdlib.ReactionType> reactions;
  final tdlib.ReactionTypeEmoji? chosen;
  final Function() onDone;

  void setReaction(tdlib.ReactionType type, bool isChosen) async {
    if (isChosen) {
      await session.functions.removeMessageReaction(
        chatId: msg.chatId,
        messageId: msg.id,
        type: type,
      );
    } else {
      await session.functions.addMessageReaction(
        chatId: msg.chatId,
        messageId: msg.id,
        type: type,
      );
    }
    onDone();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingListBuilder(
        itemCount: (reactions.length / 4).ceil() + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Center(
              child: PreSettingsButton(
                icon: Icons.arrow_back,
                title: "Back",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            );
          }

          int rowNum = i - 1;
          List<tdlib.ReactionType> sub = reactions.sublist(
            rowNum * 4,
            min(rowNum * 4 + 4, reactions.length),
          );

          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: sub
                  .map<Widget>(
                    (e) => PreSettingsButton(
                      title: (e as tdlib.ReactionTypeEmoji).emoji,
                      isCentered: true,
                      background: e.emoji == chosen?.emoji
                          ? Theme.of(context).colorScheme.inversePrimary
                          : null,
                      isEmoji: true,
                      onPressed: () {
                        setReaction(e, e.emoji == chosen?.emoji);
                      },
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}
