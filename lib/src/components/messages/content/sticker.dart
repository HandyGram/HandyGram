import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/components/media/micro_player.dart';
import 'package:handygram/src/components/messages/content.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:lottie/lottie.dart';

class StickerMessageContent extends MessageStatefulWidget<td.MessageSticker> {
  const StickerMessageContent({
    super.key,
    required super.data,
  });

  @override
  State<StickerMessageContent> createState() => _StickerMessageContentState();
}

class _StickerMessageContentState extends State<StickerMessageContent> {
  static const String tag = "StickerMessageContent";
  Widget? _sticker;

  Future<void> _loadSticker() async {
    final sticker = widget.content.sticker;
    final td.File tdFile;
    try {
      tdFile = await CurrentAccount.providers.files.download(
        fileId: sticker.sticker.id,
        priority: 5,
        synchronous: true,
      );
    } catch (e) {
      l.e(tag, "$e");
      return Future.delayed(const Duration(seconds: 2))
          .then((_) => _loadSticker());
    }
    final file = File(tdFile.local.path);
    _sticker = switch (sticker.format) {
      td.StickerFormatTgs() => LottieBuilder.memory(
          Uint8List.fromList(
            gzip.decode(await file.readAsBytes()),
          ),
          fit: BoxFit.cover,
          repeat: true,
        ),
      td.StickerFormatWebp() => Image.file(
          file,
          fit: BoxFit.cover,
        ),
      td.StickerFormatWebm() => MicroPlayer(file: file),
    };
    if (mounted && context.mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadSticker();
  }

  @override
  void didUpdateWidget(covariant StickerMessageContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.content != widget.content) {
      _loadSticker();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ratio = widget.content.sticker.width / widget.content.sticker.height;
    return Column(
      // for time sent alignment
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: ratio > 0 ? ratio : 1,
          child: ClipRRect(
            borderRadius: BorderRadii.messageBubbleContentRadius,
            child: _sticker ??
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadii.messageBubbleContentRadius,
                    color: ColorStyles.active.onSurfaceVariant,
                  ),
                  child: const SizedBox.expand(),
                ),
          ),
        ),
        SizedBox(height: Paddings.messageBubblesPadding),
        widget.attributesWidget,
      ],
    );
  }
}
