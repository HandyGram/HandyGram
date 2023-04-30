import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/widgets/loading_box.dart';
import 'package:handygram/src/widgets/message_tiles/base.dart';
import 'package:handygram/src/widgets/micro_player.dart';
import 'package:video_player/video_player.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class MessageTileStickerContent extends StatefulWidget {
  const MessageTileStickerContent({super.key, required this.msg});

  final TgMessage msg;

  @override
  State<MessageTileStickerContent> createState() =>
      _MessageTileStickerContentState();
}

class _MessageTileStickerContentState extends State<MessageTileStickerContent> {
  Widget? image;
  Size? stickerSize;
  VideoPlayerController? c;
  CancelableOperation? loadF;

  @override
  void dispose() {
    c?.dispose();
    loadF?.cancel();
    super.dispose();
  }

  void _getSize(BuildContext context) {
    int sHeight = 0, sWidth = 0;
    var content = widget.msg.content as TgStickerMessageContent;
    if (content.sticker.format.getConstructor() == "stickerFormatTgs") {
      sHeight = content.sticker.thumbnail!.height;
      sWidth = content.sticker.thumbnail!.width;
    } else {
      sHeight = content.sticker.height;
      sWidth = content.sticker.width;
    }
    stickerSize ??= downscaleProperly(
      Size(
        sWidth.toDouble(),
        sHeight.toDouble(),
      ),
      MediaQuery.of(context).size,
      2,
    );
  }

  @override
  void initState() {
    super.initState();
    var content = widget.msg.content as TgStickerMessageContent;
    String sId = "";
    tdlib.FileType sType = const tdlib.FileTypeNone();

    if (content.sticker.format.getConstructor() == "stickerFormatTgs") {
      sId = content.sticker.thumbnail!.file.remote.id;
      sType = const tdlib.FileTypeThumbnail();
    } else {
      sId = content.sticker.sticker.remote.id;
      sType = const tdlib.FileTypeSticker();
    }

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _getSize(context);
      if (content.sticker.format.getConstructor() != "stickerFormatWebm") {
        loadF = CancelableOperation.fromFuture(
          TgImage(
            id: sId,
            type: sType,
          ).load().then((i) {
            setState(
              () => image = i == null
                  ? null
                  : Image(
                      fit: BoxFit.cover,
                      image: i,
                      width: stickerSize!.width,
                      height: stickerSize!.height,
                    ),
            );
          }),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _getSize(context);
    var content = widget.msg.content as TgStickerMessageContent;
    if (image == null &&
        content.sticker.format.getConstructor() == "stickerFormatWebm") {
      if (content.sticker.format.getConstructor() == "stickerFormatWebm") {
        image = MicroPlayer(
          videoFile: content.sticker.sticker,
          thumb: content.sticker.thumbnail!,
          type: const tdlib.FileTypeSticker(),
          label: Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 5),
            child: Icon(
              Icons.sticky_note_2,
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        );
      }
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          key: ValueKey<int>(content.sticker.sticker.id),
          height: stickerSize!.height,
          width: stickerSize!.width,
          decoration: BoxDecoration(
            color: image == null ? Colors.white12 : null,
            borderRadius: BorderRadius.circular(5),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AnimatedSwitcher(
              duration: const Duration(
                milliseconds: 300,
              ),
              child: image ?? const LoadingContainer(),
            ),
          ),
        ),
      ],
    );
  }
}
