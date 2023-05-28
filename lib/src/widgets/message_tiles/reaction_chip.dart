import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/session.dart';

class ReactionChip extends StatefulWidget {
  const ReactionChip({
    super.key,
    required this.reaction,
    required this.messageId,
    required this.chatId,
  });

  final tdlib.MessageReaction reaction;
  final int chatId, messageId;

  @override
  State<ReactionChip> createState() => _ReactionChipState();
}

class _ReactionChipState extends State<ReactionChip>
    with SingleTickerProviderStateMixin {
  late final AnimationController a;

  @override
  void initState() {
    super.initState();
    a = AnimationController(
      vsync: this,
      value: 0.3,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    String emoji;
    if (widget.reaction.type is tdlib.ReactionTypeEmoji) {
      emoji = (widget.reaction.type as tdlib.ReactionTypeEmoji).emoji;
    } else {
      // TODO: CustomEmoji cache with their API
      emoji = "?";
    }

    return GestureDetector(
      onTapDown: (_) {
        a.animateTo(0.6, curve: Curves.easeOut);
      },
      onTapUp: (_) {
        a.animateBack(0.3, curve: Curves.easeOut);
      },
      onTap: () {
        if (widget.reaction.isChosen) {
          session.functions.removeMessageReaction(
            chatId: widget.chatId,
            messageId: widget.messageId,
            type: widget.reaction.type,
          );
        } else {
          session.functions.addMessageReaction(
            chatId: widget.chatId,
            messageId: widget.messageId,
            type: widget.reaction.type,
          );
        }
      },
      child: AnimatedBuilder(
          animation: a,
          builder: (context, _) {
            return Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: widget.reaction.isChosen
                    ? Colors.white.withOpacity(a.value)
                    : Colors.black.withOpacity(a.value),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                  width: 2,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    emoji,
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.notoColorEmoji(
                      fontSize: scaleText(12),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    widget.reaction.totalCount.toString(),
                    maxLines: 1,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: scaleText(12),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
