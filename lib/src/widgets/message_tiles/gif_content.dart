import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/widgets/micro_player.dart';
import 'package:handygram/src/widgets/scaled_aspect_ratio.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class MessageTileGifContent extends StatelessWidget {
  const MessageTileGifContent({
    super.key,
    required this.msg,
  });

  final TgMessage msg;

  @override
  Widget build(BuildContext context) {
    var content = msg.content as TgAnimationMessageContent;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            ScaledAspectRatio(
              width: content.animation.width,
              height: content.animation.height,
              scaleFactor: 1.5,
              child: Container(
                key: ValueKey<int>(content.animation.animation.id),
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: MicroPlayer(
                    videoFile: content.animation.animation,
                    thumb: content.animation.thumbnail!,
                    type: const tdlib.FileTypeAnimation(),
                    label: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.gif,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        if (content.caption != null && content.caption!.text.isNotEmpty)
          Text(
            content.caption!.text,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
      ],
    );
  }
}
