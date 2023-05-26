import 'dart:io';

import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/loadfile.dart';
import 'package:handygram/src/widgets/loading_box.dart';
import 'package:handygram/src/widgets/thumbnail.dart';
import 'package:video_player/video_player.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class MicroPlayer extends StatefulWidget {
  const MicroPlayer({
    super.key,
    required this.videoFile,
    required this.thumb,
    this.label,
    this.type,
  });

  final tdlib.File videoFile;
  final tdlib.Thumbnail thumb;
  final Widget? label;
  final tdlib.FileType? type;

  @override
  State<MicroPlayer> createState() => _MicroPlayerState();
}

enum MicroPlayerState {
  loading,
  preview,
  video,
}

class _MicroPlayerState extends State<MicroPlayer> {
  MicroPlayerState state = MicroPlayerState.loading;
  Widget? preview, video;
  VideoPlayerController? controller;
  bool _isLoading = false;
  CancelableOperation? _loadF;
  CancelableOperation? _loadVidF;

  @override
  void initState() {
    super.initState();
    state = MicroPlayerState.preview;
  }

  @override
  void dispose() {
    preview = null;
    video = null;
    controller?.dispose();
    _loadF?.cancel();
    _loadVidF?.cancel();
    super.dispose();
  }

  Future<VideoPlayerController?> _loadVideo(String id) async {
    setState(() {
      _isLoading = true;
    });
    File? f = await loadTgFile(
      id,
      priority: 8,
      type: widget.type,
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
    setState(() {
      _isLoading = false;
    });
    return controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      key: ValueKey<tdlib.File>(widget.videoFile),
      children: [
        if (state == MicroPlayerState.loading) const LoadingContainer(),
        if (state == MicroPlayerState.preview)
          TelegramThumbnail(
            thumbnail: widget.thumb,
          ),
        if (state == MicroPlayerState.preview)
          Container(
            color: Colors.black.withOpacity(0.75),
            child: SizedBox.expand(
              child: Center(
                child: IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {
                    _loadVidF = CancelableOperation.fromFuture(
                      _loadVideo(widget.videoFile.remote.id).then(
                        (_) => setState(
                          () {
                            if (controller == null) {
                              state = MicroPlayerState.loading;
                              return;
                            }
                            state = MicroPlayerState.video;
                            video = ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: VideoPlayer(controller!),
                            );
                            controller!.play();
                            controller!.addListener(() async {
                              if (!controller!.value.isPlaying) {
                                await controller!.dispose();
                                setState(() {
                                  controller = null;
                                  video = null;
                                  state = MicroPlayerState.preview;
                                });
                              }
                            });
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        if (_isLoading)
          const SizedBox.expand(
            child: Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            ),
          ),
        if (state == MicroPlayerState.video) video ?? const LoadingContainer(),
        if (widget.label != null && state != MicroPlayerState.video)
          SizedBox.expand(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: widget.label,
            ),
          ),
      ],
    );
  }
}
