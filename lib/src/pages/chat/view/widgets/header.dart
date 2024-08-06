import 'package:flutter/material.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.tilesWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TileButton(
                icon: const Icon(Icons.emoji_emotions),
                onTap: () {},
                style: TileButtonStyles.basic,
                big: false,
              ),
              TileButton(
                icon: const Icon(Icons.keyboard),
                onTap: () {},
                style: TileButtonStyles.basic,
                big: false,
              ),
              TileButton(
                icon: const Icon(Icons.mic),
                onTap: () {},
                style: TileButtonStyles.basic,
                big: false,
              ),
            ],
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            big: true,
            style: TileButtonStyles.basic,
            text: "Test",
          ),
          SizedBox(height: Paddings.afterPage),
        ],
      ),
    );
  }
}
