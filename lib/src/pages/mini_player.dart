import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/loadfile.dart';
import 'package:handygram/src/widgets/message_tiles/base.dart';
import 'package:video_player/video_player.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

String _printDur(Duration dur) {
  return dur.inHours == 0
      ? "${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}"
      : "${(dur.inHours % 60).toString().padLeft(2, '0')}:${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}";
}

class _MiniVideoPlayerControls extends StatefulWidget {
  const _MiniVideoPlayerControls({
    required this.controller,
  });

  final VideoPlayerController controller;

  @override
  State<_MiniVideoPlayerControls> createState() =>
      _MiniVideoPlayerControlsState();
}

class _MiniVideoPlayerControlsState extends State<_MiniVideoPlayerControls> {
  late final VideoPlayerController controller = widget.controller;
  bool isShown = true;
  late Timer uiHideTimer;

  void _ss() {
    setState(() {});
  }

  @override
  void dispose() {
    uiHideTimer.cancel();
    controller.removeListener(_ss);
    super.dispose();
  }

  @override
  void initState() {
    uiHideTimer = Timer(const Duration(seconds: 1), () {
      setState(() {
        isShown = false;
      });
    });
    controller.addListener(_ss);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Duration pos = controller.value.position;
    Duration dur = controller.value.duration;
    return GestureDetector(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        child: !isShown
            ? SizedBox.expand(
                child: GestureDetector(
                  onTap: () {
                    uiHideTimer.cancel();
                    setState(
                      () => isShown = true,
                    );
                    uiHideTimer = Timer(const Duration(seconds: 2), () {
                      setState(() {
                        isShown = false;
                      });
                    });
                  },
                ),
              )
            : GestureDetector(
                onTapDown: (_) {
                  uiHideTimer.cancel();
                },
                onTapUp: (_) {
                  uiHideTimer = Timer(const Duration(seconds: 2), () {
                    setState(() {
                      isShown = false;
                    });
                  });
                },
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    SizedBox.expand(
                      child: Container(
                        color: Colors.black.withOpacity(
                          pos == dur ? 0.8 : 0.4,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isShown = false;
                            });
                          },
                        ),
                      ),
                    ),
                    if (!settingsStorage.backButtonDisabled)
                      SizedBox.expand(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                    SizedBox.expand(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Slider(
                              value:
                                  (pos.inMilliseconds / dur.inMilliseconds <= 0)
                                      ? 0.0001
                                      : pos.inMilliseconds / dur.inMilliseconds,
                              onChanged: (value) => controller.seekTo(
                                Duration(
                                  milliseconds:
                                      (dur.inMilliseconds * value).round(),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${_printDur(pos)} / ${_printDur(dur)}",
                              style: const TextStyle(
                                shadows: [
                                  Shadow(
                                    blurRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox.expand(
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: controller.value.isPlaying
                                  ? const Icon(Icons.pause)
                                  : pos == dur
                                      ? const Icon(Icons.repeat)
                                      : const Icon(Icons.play_arrow),
                              onPressed: () => controller.value.isPlaying
                                  ? controller
                                      .pause()
                                      .then((_) => setState(() {}))
                                  : controller
                                      .play()
                                      .then((_) => setState(() {})),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

class MiniVideoPlayer extends StatefulWidget {
  const MiniVideoPlayer({super.key, required this.tgvideo});

  final tdlib.Video tgvideo;

  @override
  State<MiniVideoPlayer> createState() => _MiniVideoPlayerState();
}

class _MiniVideoPlayerState extends State<MiniVideoPlayer> {
  VideoPlayerController? controller;
  double dwProgress = 0;
  double scaleFactor = 1;
  bool isHorizontal = false;
  Size? size;
  bool ready = false;
  Widget? video;

  Future<VideoPlayerController?> _loadVideo(String id) async {
    File? f = await loadTgFile(
      id,
      priority: 32,
      notifier: (done, total) {
        setState(() {
          dwProgress = done / total;
        });
      },
    );
    if (f == null) return null;
    controller = VideoPlayerController.file(
      f,
      videoPlayerOptions: VideoPlayerOptions(
        mixWithOthers: true,
      ),
    );
    controller!.setLooping(false);
    controller!.setVolume(0);
    await controller!.initialize();
    controller!.play();
    return controller;
  }

  @override
  void initState() {
    super.initState();
    _loadVideo(widget.tgvideo.video.remote.id).then((value) {
      setState(
        () => video = value == null ? null : VideoPlayer(value),
      );
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size ??= downscaleProperly(
      Size(
        widget.tgvideo.width.toDouble(),
        widget.tgvideo.height.toDouble(),
      ),
      MediaQuery.of(context).size,
      1.1,
    );
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          FittedBox(
            fit: BoxFit.contain,
            child: SizedBox(
              width: size!.width,
              height: size!.height,
              child: video,
            ),
          ),
          if (controller != null)
            _MiniVideoPlayerControls(controller: controller!)
          else
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Loading video..."),
                  if (!settingsStorage.backButtonDisabled)
                    TextButton(
                      child: const Text("Exit"),
                      onPressed: () => Navigator.pop(context),
                    ),
                ],
              ),
            ),
          if (controller == null)
            FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(
                  color: Colors.white.withOpacity(0.2),
                  value: dwProgress,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
