import 'dart:ui';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/pages/mini_player.dart';
import 'package:handygram/src/widgets/message_tiles/base.dart';

class MessageTileVideoContent extends StatefulWidget {
  const MessageTileVideoContent({super.key, required this.msg});

  final TgMessage msg;

  @override
  State<MessageTileVideoContent> createState() =>
      _MessageTileVideoContentState();
}

class _MessageTileVideoContentState extends State<MessageTileVideoContent> {
  ImageProvider? previewProvider;
  bool isSecretShown = false;
  Size? imgSize;
  CancelableOperation? loadF;

  @override
  void dispose() {
    loadF?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    var content = widget.msg.content as TgVideoMessageContent;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadF = CancelableOperation.fromFuture(
        TgImage(id: content.video.thumbnail!.file.remote.id).load().then((i) {
          setState(() {
            previewProvider = i;
          });
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var content = widget.msg.content as TgVideoMessageContent;
    Duration dur = Duration(seconds: content.video.duration);
    imgSize ??= downscaleProperly(
      Size(
        content.video.thumbnail!.width.toDouble(),
        content.video.thumbnail!.height.toDouble(),
      ),
      MediaQuery.of(context).size,
      1.25,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: imgSize!.height,
          width: imgSize!.width,
          decoration: BoxDecoration(
            color: previewProvider == null ? Colors.white12 : null,
            borderRadius: BorderRadius.circular(10),
          ),
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        key: ValueKey<int>(content.video.thumbnail!.file.id),
                        alignment: Alignment.center,
                        clipBehavior: Clip.antiAlias,
                        children: [
                          ImageFiltered(
                            imageFilter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                            enabled: content.isSecret && !isSecretShown,
                            child: Image(
                              image: previewProvider!,
                              fit: BoxFit.cover,
                              height: imgSize!.height,
                              width: imgSize!.width,
                            ),
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
                              alignment: Alignment.topLeft,
                              child: Text(
                                dur.inHours == 0
                                    ? "  Video (${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')})"
                                    : "  Video (${(dur.inHours % 60).toString().padLeft(2, '0')}:${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')})",
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
                          if (content.isSecret && !isSecretShown)
                            IconButton(
                              icon: const Icon(Icons.hide_image),
                              onPressed: () {
                                setState(() {
                                  isSecretShown = true;
                                });
                              },
                            ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => MiniVideoPlayer(
                            tgvideo: content.video,
                          ),
                        ),
                      );
                    },
                  ),
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
