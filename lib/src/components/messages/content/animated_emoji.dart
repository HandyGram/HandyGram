import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/tdlib/misc/thumbnails.dart';
import 'package:handygram/src/components/layout/flexible_constraints_column/widget.dart';
import 'package:handygram/src/components/messages/content.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

// Tbh not really animated at the moment
class AnimatedEmojiMessageContent
    extends MessageStatefulWidget<td.MessageAnimatedEmoji> {
  const AnimatedEmojiMessageContent({
    super.key,
    required super.data,
  });

  @override
  State<AnimatedEmojiMessageContent> createState() =>
      _AnimatedEmojiMessageContentState();
}

class _AnimatedEmojiMessageContentState
    extends State<AnimatedEmojiMessageContent> {
  Widget? _emoji;

  Future<void> _getEmoji() async {
    _emoji = await getStickerThumbnailWidget(
      widget.content.animatedEmoji.sticker,
      size: Sizes.tilesHeight,
      repaintColor: widget.isOutgoing
          ? ColorStyles.active.surface
          : ColorStyles.active.onSurface,
    );

    if (mounted && context.mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getEmoji();
  }

  @override
  void didUpdateWidget(AnimatedEmojiMessageContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.content != widget.content) {
      _getEmoji();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlexibleConstraintsColumn(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Constrained(
          isTarget: true,
          child: _emoji == null
              ? Text(
                  widget.content.emoji,
                  style: TextStyles.active.titleLarge?.copyWith(
                    color: widget.isOutgoing
                        ? ColorStyles.active.surface
                        : ColorStyles.active.onSurface,
                    fontSize: Sizes.tilesHeight,
                  ),
                )
              : _emoji!,
        ),
        Constrained(
          isTarget: true,
          useIntrinsicWidth: true,
          alignment: MainAxisAlignment.end,
          child: widget.attributesWidget,
        ),
      ],
    );
  }
}
