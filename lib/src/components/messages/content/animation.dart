import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/components/layout/flexible_constraints_column/widget.dart';
import 'package:handygram/src/components/media/micro_player.dart';
import 'package:handygram/src/components/messages/content.dart';
import 'package:handygram/src/components/messages/parts/caption/widget.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class AnimationMessageContent
    extends MessageStatefulWidget<td.MessageAnimation> {
  const AnimationMessageContent({
    super.key,
    required super.data,
  });

  @override
  State<AnimationMessageContent> createState() =>
      _AnimationMessageContentState();
}

class _AnimationMessageContentState extends State<AnimationMessageContent> {
  static const String tag = "AnimationMessageContent";
  File? _gif;

  Future<void> _loadGif() async {
    final gif = widget.content.animation;
    final td.File tdFile;
    try {
      tdFile = await CurrentAccount.providers.files.download(
        fileId: gif.animation.id,
        priority: 5,
        synchronous: true,
      );
    } catch (e) {
      l.e(tag, "$e");
      return Future.delayed(const Duration(seconds: 2)).then((_) => _loadGif());
    }
    _gif = File(tdFile.local.path);

    if (mounted && context.mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadGif();
  }

  @override
  void didUpdateWidget(covariant AnimationMessageContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.content.animation != widget.content.animation) {
      _loadGif();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ratio =
        widget.content.animation.width / widget.content.animation.height;
    final caption = MessageCaptionWidget(
      widget.content.caption,
      attributesWidget: widget.attributesWidget,
      attributesPadding: Paddings.betweenSimilarElements,
      isOutgoing: widget.isOutgoing,
    );

    return FlexibleConstraintsColumn(
      children: [
        if (widget.content.showCaptionAboveMedia) ...[
          Constrained(
            isTarget: true,
            constrainMinWidth: true,
            child: caption,
          ),
          SizedBox(height: Paddings.messageBubblesPadding),
        ],
        Constrained(
          isTarget: true,
          constrainMinWidth: true,
          child: AspectRatio(
            aspectRatio: ratio > 0 ? ratio : 1,
            child: ClipRRect(
              borderRadius: BorderRadii.messageBubbleContentRadius,
              child: _gif == null
                  ? Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadii.messageBubbleContentRadius,
                        color: ColorStyles.active.onSurfaceVariant,
                      ),
                      child: const SizedBox.expand(),
                    )
                  : MicroPlayer(file: _gif!),
            ),
          ),
        ),
        if (!widget.content.showCaptionAboveMedia) ...[
          SizedBox(height: Paddings.messageBubblesPadding),
          Constrained(
            isTarget: true,
            constrainMinWidth: true,
            child: caption,
          ),
        ],
      ],
    );
  }
}
