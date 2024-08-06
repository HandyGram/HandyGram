import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';

class MessageBubbleReactions extends StatefulWidget {
  const MessageBubbleReactions({
    super.key,
    required this.message,
  });

  final td.Message message;

  @override
  State<MessageBubbleReactions> createState() => _MessageBubbleReactionsState();
}

class _Reaction {
  final int count;
  final td.MessageSender? lastSender;
  final bool isChosen;
  const _Reaction({
    this.count = 1,
    this.lastSender,
    this.isChosen = false,
  });
}

class _MessageBubbleReactionsState extends State<MessageBubbleReactions> {
  late Map<td.ReactionType, _Reaction> reactions = {};

  void _updateMessage(td.Update update) {
    switch (update) {
      case td.UpdateMessageInteractionInfo():
        final reactions = widget.message.interactionInfo?.reactions;
        if (reactions != null) {
          this.reactions.clear();
          for (final reaction in reactions.reactions) {
            this.reactions[reaction.type] = _Reaction(
              count: reaction.totalCount,
              lastSender: reaction.recentSenderIds.firstOrNull,
              isChosen: reaction.isChosen,
            );
          }
        } else {
          return;
        }
      case td.UpdateMessageReactions(reactions: final reactions):
        this.reactions.clear();
        for (final reaction in reactions) {
          this.reactions[reaction.type] = _Reaction(
            count: reaction.totalCount,
            lastSender: reaction.recentSenderIds.firstOrNull,
            isChosen: reaction.isChosen,
          );
        }
      default:
        return;
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    final reactions = widget.message.interactionInfo?.reactions;
    if (reactions != null) {
      for (final reaction in reactions.reactions) {
        this.reactions[reaction.type] = _Reaction(
          count: reaction.totalCount,
          lastSender: reaction.recentSenderIds.firstOrNull,
          isChosen: reaction.isChosen,
        );
      }
    }

    CurrentAccount.providers.messages.filter(
      widget.message.chatId,
      messageId: widget.message.id,
      tdUpdateTypes: [
        td.UpdateMessageReactions,
        td.UpdateMessageInteractionInfo,
      ],
    ).listen((e) => _updateMessage(e.update));
  }

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
    );
  }
}
