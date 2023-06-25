import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/widgets/message_tiles/audio_content.dart';
import 'package:handygram/src/widgets/message_tiles/base.dart';
import 'package:handygram/src/widgets/message_tiles/sticker_content.dart';
import 'package:handygram/src/widgets/message_tiles/video_note_content.dart';
import 'photo_content.dart';
import 'gif_content.dart';
import 'video_content.dart';
import 'voice_note_content.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({
    super.key,
    required this.msg,
    required this.small,
  });

  final TgMessage? msg;
  final bool small;

  Widget? _selectContentChild(BuildContext context) {
    if (msg == null) return null;

    switch (msg!.type) {
      case TgMessageType.photo:
        return MessageTilePhotoContent(
          msg: msg!,
        );
      case TgMessageType.sticker:
        return MessageTileStickerContent(
          msg: msg!,
        );
      case TgMessageType.animation:
        return MessageTileGifContent(
          msg: msg!,
        );
      case TgMessageType.video:
        return MessageTileVideoContent(
          msg: msg!,
        );
      case TgMessageType.voiceNote:
        return MessageVoiceNoteContent(
          msg: msg!,
        );
      case TgMessageType.videoNote:
        return MessageTileVideoNoteContent(
          msg: msg!,
        );
      case TgMessageType.audio:
        return MessageTileAudioContent(
          msg: msg!,
        );
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (msg == null) return Container();
    return MessageBaseTile(
      key: ValueKey<int>(msg?.id ?? 0),
      msg: msg!,
      small: small,
      child: _selectContentChild(context),
    );
  }
}
