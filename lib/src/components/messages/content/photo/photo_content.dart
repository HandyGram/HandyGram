import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/photosize.dart';
import 'package:handygram/src/components/layout/flexible_constraints_column/widget.dart';
import 'package:handygram/src/components/messages/content.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/messages/parts/caption/widget.dart';

class PhotoMessageContent extends MessageStatefulWidget<td.MessagePhoto> {
  const PhotoMessageContent({
    super.key,
    required super.data,
  });

  @override
  State<PhotoMessageContent> createState() => _PhotoMessageContentState();
}

class _PhotoMessageContentState extends State<PhotoMessageContent> {
  Widget? _photo;

  Future<void> _loadPhoto() async {
    final tdFile = await CurrentAccount.providers.files.download(
      fileId: widget.content.photo.sizes.smallest.photo.id,
      priority: 5,
      synchronous: true,
    );
    final file = File(tdFile.local.path);
    _photo = Image.file(
      file,
      fit: BoxFit.cover,
    );
    if (mounted && context.mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadPhoto();
  }

  @override
  void didUpdateWidget(covariant PhotoMessageContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.content != widget.content) {
      _photo = null;
      _loadPhoto();
    }
  }

  @override
  Widget build(BuildContext context) {
    final caption = Constrained(
      isTarget: true,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.content.showCaptionAboveMedia
              ? 0
              : Paddings.messageContentPadding,
          bottom: widget.content.showCaptionAboveMedia
              ? Paddings.messageContentPadding
              : 0,
        ),
        child: MessageCaptionWidget(
          widget.content.caption,
          isOutgoing: widget.isOutgoing,
          attributesWidget: widget.attributesWidget,
          attributesPadding: Paddings.betweenSimilarElements,
        ),
      ),
    );

    final size = widget.content.photo.sizes.smallest;
    return FlexibleConstraintsColumn(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (widget.content.showCaptionAboveMedia) caption,
        // Sometimes caption may be wider than the photo is, in that case size the
        // photo to match the exact width of caption
        Constrained(
          isTarget: true,
          constrainMinWidth: true,
          child: GestureDetector(
            onTap: () {
              if (!context.mounted) return;
              GoRouter.of(context).push(
                "/photo/viewer",
                extra: widget.content.photo,
              );
            },
            child: AspectRatio(
              // constrain to 9:10 / 18:9
              aspectRatio: max(
                0.9,
                min(2, size.aspectRatio > 0 ? size.aspectRatio : 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadii.messageBubbleContentRadius,
                child: _photo ??
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadii.messageBubbleContentRadius,
                        color: ColorStyles.active.onSurfaceVariant,
                      ),
                      child: const SizedBox.expand(),
                    ),
              ),
            ),
          ),
        ),
        if (!widget.content.showCaptionAboveMedia) caption,
      ],
    );
  }
}
