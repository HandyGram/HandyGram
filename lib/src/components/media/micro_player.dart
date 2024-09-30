import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MicroPlayer extends StatefulWidget {
  const MicroPlayer({
    super.key,
    required this.file,
    this.hideControls = false,
  });

  final File file;
  final bool hideControls;

  @override
  State<MicroPlayer> createState() => _MicroPlayerState();
}

class _MicroPlayerState extends State<MicroPlayer> {
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
      await controller.setLooping(false);
      await controller.setVolume(0);
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
        if (info.visibleFraction < 0.3 && controller.value.isPlaying) {
          controller.pause();
        }
      },
      child: GestureDetector(
        onTap: widget.hideControls
            ? null
            : () {
                if (!controller.value.isPlaying) {
                  controller.play();
                }
              },
        child: Stack(
          children: [
            VideoPlayer(
              controller,
              key: ValueKey<String>("mvideo,${widget.file.path}"),
            ),
            ValueListenableBuilder(
              valueListenable: controller,
              builder: (context, value, _) {
                if (value.isPlaying) return const SizedBox();
                if (widget.hideControls) {
                  if (value.isBuffering) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                      ),
                      child: const SizedBox.expand(
                        child: Center(
                          child: SizedBox(
                            height: 24,
                            width: 24,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return const SizedBox();
                  }
                }
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                  child: SizedBox.expand(
                    child: Center(
                      child: value.isBuffering
                          ? const SizedBox(
                              height: 24,
                              width: 24,
                              child: CircularProgressIndicator(),
                            )
                          : TileButton(
                              icon: const Icon(Icons.play_arrow),
                              big: false,
                              style: TileButtonStyles.basic,
                            ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
