import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/formatted_text.dart';

class PhotoMessageContent extends StatelessWidget {
  const PhotoMessageContent(
    this.content, {
    super.key,
    required this.isOutgoing,
  });

  final td.MessagePhoto content;
  final bool isOutgoing;

  Future<Widget?> _loadPhoto(td.PhotoSize? size) async {
    if (size == null) return null;

    final tdFile = await CurrentAccount.providers.files.download(
      fileId: size.photo.id,
      priority: 5,
      synchronous: true,
    );
    final file = File(tdFile.local.path);
    return Image.file(
      file,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    final caption = Padding(
      padding: EdgeInsets.only(
        top: content.showCaptionAboveMedia ? 0 : Paddings.messageContentPadding,
        bottom:
            content.showCaptionAboveMedia ? Paddings.messageContentPadding : 0,
      ),
      child: FormattedTextWidget(
        content.caption,
        // TODO: figure out why is it needed
        maxLines: 999999,
        textAlign: isOutgoing ? TextAlign.right : TextAlign.left,
        baseColor: isOutgoing
            ? FormattedTextBaseColor.surface
            : FormattedTextBaseColor.onSurface,
      ),
    );

    final size = content.photo.sizes.firstOrNull;
    final ratio = (size?.width ?? 1) / (size?.height ?? 1);

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          !isOutgoing ? MainAxisAlignment.start : MainAxisAlignment.end,
      crossAxisAlignment:
          !isOutgoing ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        if (content.showCaptionAboveMedia && content.caption.text.isNotEmpty)
          caption,
        AspectRatio(
          aspectRatio: ratio > 0 ? ratio : 1,
          child: ClipRRect(
            borderRadius: BorderRadii.messageBubbleContentRadius,
            child: FutureBuilder(
              future: _loadPhoto(size),
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
        ),
        if (!content.showCaptionAboveMedia && content.caption.text.isNotEmpty)
          caption,
      ],
    );
  }
}
