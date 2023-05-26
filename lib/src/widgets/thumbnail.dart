import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/loadfile.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class TelegramThumbnail extends StatelessWidget {
  const TelegramThumbnail(
      {super.key, required this.thumbnail, this.onlyPhoto = true});

  final tdlib.Thumbnail thumbnail;
  final bool onlyPhoto;

  Future<Widget> _loadLottieThumbnail() async {
    var file = await loadTgFile(thumbnail.file.remote.id);
    if (file == null) return const Center(child: Icon(Icons.block));

    return Lottie.memory(
      Uint8List.fromList(
        gzip.decode(await file.readAsBytes()),
      ),
      width: 512,
      height: 512,
      repeat: true,
      frameRate: FrameRate(60),
    );
  }

  Future<Widget> _loadPhotoThumbnail() async {
    var prov = await TgImage(
      id: thumbnail.file.remote.id,
    ).load(priority: 20);
    if (prov == null) return const Center(child: Icon(Icons.block));
    return Image(
      image: prov,
      fit: BoxFit.cover,
    );
  }

  Future<Widget> _loadVideoThumbnail() async {
    var file = await loadTgFile(thumbnail.file.remote.id);
    if (file == null) return const Center(child: Icon(Icons.block));

    if (onlyPhoto) {
      File f = File(
        "${TgSession.cacheDir}/thumbnails/${thumbnail.file.remote.id}.webp",
      );
      if (await f.exists()) {
        return Image(
          image: FileImage(f),
        );
      }
      String? path = await VideoThumbnail.thumbnailFile(
        video: file.path,
        maxHeight: 128,
        thumbnailPath: f.path,
        imageFormat: ImageFormat.WEBP,
      );
      if (path == null) return const Center(child: Icon(Icons.block));
      return Image(
        image: FileImage(f),
      );
    }

    VideoPlayerController cont = VideoPlayerController.file(
      file,
      videoPlayerOptions: VideoPlayerOptions(
        allowBackgroundPlayback: true,
        mixWithOthers: true,
      ),
    );
    await cont.initialize();
    cont.setVolume(0);
    cont.setLooping(true);
    cont.play();
    return VideoPlayer(cont);
  }

  Future<Widget> _getThumbnailWidget() => switch (thumbnail.format) {
        tdlib.ThumbnailFormatGif() => _loadPhotoThumbnail(),
        tdlib.ThumbnailFormatJpeg() => _loadPhotoThumbnail(),
        tdlib.ThumbnailFormatPng() => _loadPhotoThumbnail(),
        tdlib.ThumbnailFormatWebp() => _loadPhotoThumbnail(),
        tdlib.ThumbnailFormatMpeg4() => _loadVideoThumbnail(),
        tdlib.ThumbnailFormatWebm() => _loadVideoThumbnail(),
        tdlib.ThumbnailFormatTgs() => _loadLottieThumbnail(),
      };

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const Center(
            child: SizedBox(
              height: 10,
              width: 10,
              child: CircularProgressIndicator(strokeWidth: 1),
            ),
          );
        }

        return snapshot.data!;
      },
      future: _getThumbnailWidget(),
    );
  }
}
