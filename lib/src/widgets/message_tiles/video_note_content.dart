import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/pages/mini_player.dart';

class MessageTileVideoNoteContent extends StatefulWidget {
  const MessageTileVideoNoteContent({super.key, required this.msg});

  final TgMessage msg;

  @override
  State<MessageTileVideoNoteContent> createState() =>
      _MessageTileVideoNoteContentState();
}

class _MessageTileVideoNoteContentState
    extends State<MessageTileVideoNoteContent> {
  ImageProvider? previewProvider;
  CancelableOperation? loadF;

  @override
  void dispose() {
    loadF?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    var content = widget.msg.content as TgVideoNoteMessageContent;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadF = CancelableOperation.fromFuture(
        TgImage(id: content.videoNote.thumbnail!.file.remote.id)
            .load()
            .then((i) {
          setState(() {
            previewProvider = i;
          });
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var content = widget.msg.content as TgVideoNoteMessageContent;
    Duration dur = Duration(seconds: content.videoNote.duration);

    double radius = MediaQuery.of(context).size.width / 2;

    return Container(
      height: radius,
      width: radius,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: previewProvider == null ? Colors.white12 : null,
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        clipBehavior: Clip.antiAlias,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: previewProvider == null
              ? const Center(
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  ),
                )
              : GestureDetector(
                  child: SizedBox(
                    width: radius,
                    height: radius,
                    child: Stack(
                      key: ValueKey<int>(content.videoNote.thumbnail!.file.id),
                      alignment: Alignment.center,
                      clipBehavior: Clip.antiAlias,
                      children: [
                        Image(
                          image: previewProvider!,
                          fit: BoxFit.cover,
                          height: radius,
                          width: radius,
                        ),
                        const Icon(
                          Icons.play_arrow,
                          shadows: [
                            Shadow(
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        SizedBox.expand(
                          child: Align(
                            alignment: const Alignment(0, 0.75),
                            child: Text(
                              "${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}",
                              style: TextStyle(
                                fontSize: scaleText(10),
                                shadows: const [
                                  Shadow(
                                    blurRadius: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => MiniVideoPlayer(
                          video: content.videoNote.video,
                          width: content.videoNote.thumbnail?.width ?? 512,
                          height: content.videoNote.thumbnail?.height ?? 512,
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
