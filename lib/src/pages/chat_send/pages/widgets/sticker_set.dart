import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/misc/thumbnails.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:mutex/mutex.dart';

class StickerSetPresentation extends StatelessWidget {
  const StickerSetPresentation({
    super.key,
    required this.stickers,
    this.title,
    this.onStickerSelection,
  });

  final List<td.Sticker> stickers;
  final String? title;
  final Function(td.Sticker)? onStickerSelection;

  static final Mutex _lock = Mutex();

  @override
  Widget build(BuildContext context) {
    final int countPerRow = Settings().get(SettingsEntries.stickersCountInRow);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: TextStyles.active.labelLarge?.copyWith(
              color: ColorStyles.active.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: Paddings.messageContentPadding),
        ],
        LayoutBuilder(
          builder: (context, constraints) => Wrap(
            spacing: Paddings.betweenSimilarElements,
            runSpacing: Paddings.betweenSimilarElements,
            children: [
              for (final sticker in stickers)
                GestureDetector(
                  onTap: () => onStickerSelection?.call(sticker),
                  child: SizedBox.square(
                    // looks scary but it's obvious how does it work
                    dimension: (constraints.biggest.shortestSide -
                            Paddings.betweenSimilarElements *
                                (countPerRow - 1)) /
                        countPerRow,
                    child: FutureBuilder(
                      future: _lock
                          .protect(() => getStickerThumbnailWidget(sticker)),
                      builder: (context, snapshot) => AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child: snapshot.data ??
                            Container(
                              decoration: BoxDecoration(
                                color: ColorStyles.active.surface,
                                borderRadius:
                                    BorderRadii.messageBubbleContentRadius,
                              ),
                              child: const SizedBox.expand(),
                            ),
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ],
    );
  }
}
