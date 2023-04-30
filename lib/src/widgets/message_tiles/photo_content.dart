import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/pages/photo_viewer.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/widgets/loading_box.dart';
import 'package:handygram/src/widgets/message_tiles/base.dart';
import 'package:handygram/src/widgets/scaled_aspect_ratio.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class MessageTilePhotoContent extends StatefulWidget {
  const MessageTilePhotoContent({super.key, required this.msg});

  final TgMessage msg;

  @override
  State<MessageTilePhotoContent> createState() =>
      _MessageTilePhotoContentState();
}

class _MessageTilePhotoContentState extends State<MessageTilePhotoContent> {
  ImageProvider? imageProvider;
  int selSize = 0;
  Size? photoSize;
  CancelableOperation? loadF;

  @override
  void initState() {
    super.initState();
    var content = widget.msg.content as TgPhotoMessageContent;

    if (content.photo.sizes.length > 2) {
      selSize = 2;
    } else if (content.photo.sizes.length > 1) {
      selSize = 1;
    }

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      loadF = CancelableOperation.fromFuture(
        TgImage(
          id: content.photo.sizes[selSize].photo.remote.id,
          type: const tdlib.FileTypePhoto(),
        ).load().then((i) {
          setState(() {
            imageProvider = i;
          });
        }),
      );
    });
  }

  @override
  void dispose() {
    loadF?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var content = widget.msg.content as TgPhotoMessageContent;
    photoSize ??= downscaleProperly(
      Size(
        content.photo.sizes[selSize].width.toDouble(),
        content.photo.sizes[selSize].height.toDouble(),
      ),
      MediaQuery.of(context).size,
      1.25,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ScaledAspectRatio(
          width: content.photo.sizes[selSize].width,
          height: content.photo.sizes[selSize].height,
          scaleFactor: 1.4,
          child: Container(
            key: ValueKey<int>(content.photo.sizes[selSize].photo.id),
            decoration: BoxDecoration(
              color: imageProvider == null ? Colors.white12 : null,
              borderRadius: BorderRadius.circular(10),
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: imageProvider == null
                  ? const LoadingContainer()
                  : GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PhotoViewer(
                              photo: imageProvider!,
                            ),
                          ),
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          fit: BoxFit.cover,
                          image: imageProvider!,
                        ),
                      ),
                    ),
            ),
          ),
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
