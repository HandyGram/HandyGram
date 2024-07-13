import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/formatted_text.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

// TODO: implement micro player for video stickers and GIFs
class _VideoSticker extends StatefulWidget {
  const _VideoSticker({required this.file});

  final File file;

  @override
  State<_VideoSticker> createState() => __VideoStickerState();
}

class __VideoStickerState extends State<_VideoSticker> {
  late final controller = VideoPlayerController.file(
    widget.file,
    videoPlayerOptions: VideoPlayerOptions(
      allowBackgroundPlayback: false,
      mixWithOthers: true,
    ),
  );

  void _initializePlayback() async {
    try {
      await controller.initialize();
      await controller.setLooping(true);
      await controller.setVolume(0);
      await controller.play();
    } catch (_) {}
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initializePlayback();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: UniqueKey(),
      onVisibilityChanged: (info) {
        if (!mounted) return;
        if (info.visibleFraction > 0.5 && !controller.value.isPlaying) {
          controller.setLooping(true);
          controller.setVolume(0);
          controller.play();
        } else if (controller.value.isPlaying) {
          controller.pause();
        }
      },
      child: VideoPlayer(controller),
    );
  }
}

class StickerMessageContent extends StatelessWidget {
  const StickerMessageContent(
    this.content, {
    super.key,
  });

  final td.MessageSticker content;

  Future<Widget> _loadSticker() async {
    final sticker = content.sticker;
    final tdFile = await CurrentAccount.providers.files.download(
      fileId: sticker.sticker.id,
      priority: 5,
      synchronous: true,
    );
    final file = File(tdFile.local.path);
    switch (sticker.format) {
      case td.StickerFormatTgs():
        return LottieBuilder.memory(
          Uint8List.fromList(
            gzip.decode(await file.readAsBytes()),
          ),
          fit: BoxFit.cover,
          repeat: true,
        );
      case td.StickerFormatWebp():
        return Image.file(
          file,
          fit: BoxFit.cover,
        );
      case td.StickerFormatWebm():
        return _VideoSticker(file: file);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ratio = content.sticker.width / content.sticker.height;
    return AspectRatio(
      aspectRatio: ratio > 0 ? ratio : 1,
      child: ClipRRect(
        borderRadius: BorderRadii.messageBubbleContentRadius,
        child: FutureBuilder(
          future: _loadSticker(),
          builder: (context, snapshot) {
            return snapshot.data ??
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadii.messageBubbleContentRadius,
                    color: ColorStyles.active.onSurfaceVariant,
                  ),
                  child: const SizedBox.expand(),
                );
          },
        ),
      ),
    );
  }
}
