import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/pages/audio_player.dart';
import 'package:handygram/src/telegram/messages.dart';

String _printDur(Duration dur) {
  return dur.inHours == 0
      ? "${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}"
      : "${(dur.inHours % 60).toString().padLeft(2, '0')}:${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}";
}

class MessageTileAudioContent extends StatelessWidget {
  const MessageTileAudioContent({
    super.key,
    required this.msg,
  });

  final TgMessage msg;

  @override
  Widget build(BuildContext context) {
    var content = msg.content as TgAudioMessageContent;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black26,
          ),
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                content.audio.title.isEmpty
                    ? content.audio.fileName
                    : content.audio.title,
                style: TextStyle(
                  fontSize: scaleText(11),
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (content.audio.performer.isNotEmpty)
                Text(
                  content.audio.performer,
                  style: TextStyle(
                    fontSize: scaleText(10),
                  ),
                ),
              Text(
                "${_printDur(Duration(seconds: content.audio.duration))}, ${(content.audio.audio.expectedSize / 1024 / 1024).toStringAsFixed(1)}MB",
                style: TextStyle(
                  fontSize: scaleText(10),
                ),
              ),
              Center(
                child: TextButton.icon(
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 18,
                  ),
                  label: Text(
                    "Play",
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: scaleText(10),
                    ),
                  ),
                  style: const ButtonStyle(
                    visualDensity: VisualDensity.compact,
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.zero,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      CupertinoPageRoute(
                        builder: (context) => AudioPlayerPage(
                          audio: content.audio,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        if (content.caption != null && content.caption!.text.isNotEmpty)
          Text(
            content.caption!.text,
            style: TextStyle(
              fontSize: scaleText(12),
            ),
          ),
      ],
    );
  }
}
