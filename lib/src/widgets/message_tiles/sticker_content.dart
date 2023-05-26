import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/loadfile.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/widgets/micro_player.dart';
import 'package:handygram/src/widgets/scaled_aspect_ratio.dart';
import 'package:lottie/lottie.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class MessageTileStickerContent extends StatelessWidget {
  const MessageTileStickerContent({super.key, required this.msg});

  final TgMessage msg;

  Future<Widget> _loadLottie(tdlib.Sticker sticker) async {
    var file = await loadTgFile(sticker.sticker.remote.id);
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

  Future<Widget> _loadPhoto(tdlib.Sticker sticker) async {
    var prov = await TgImage(
      id: sticker.sticker.remote.id,
    ).load(priority: 20);
    if (prov == null) return const Center(child: Icon(Icons.block));
    return Image(
      image: prov,
      fit: BoxFit.cover,
    );
  }

  Future<Widget> _loadVideo(tdlib.Sticker sticker, BuildContext context) async {
    return MicroPlayer(
      videoFile: sticker.sticker,
      thumb: sticker.thumbnail!,
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

  @override
  Widget build(BuildContext context) {
    var content = msg.content as TgStickerMessageContent;
    return ScaledAspectRatio(
      key: ValueKey<int>(content.sticker.sticker.id),
      height: content.sticker.height,
      width: content.sticker.width,
      scaleFactor: 2.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: FutureBuilder(
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return SizedBox.expand(
                child: Container(color: Colors.white12),
              );
            }

            return snapshot.data!;
          },
          future: switch (content.sticker.format) {
            tdlib.StickerFormatTgs() => _loadLottie(content.sticker),
            tdlib.StickerFormatWebm() => _loadVideo(content.sticker, context),
            tdlib.StickerFormatWebp() => _loadPhoto(content.sticker),
          },
        ),
      ),
    );
  }
}
