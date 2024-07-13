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
                colorful: false,
                big: false,
              ),
              TileButton(
                icon: const Icon(Icons.keyboard),
                onTap: () {},
                colorful: false,
                big: false,
              ),
              TileButton(
                icon: const Icon(Icons.mic),
                onTap: () {},
                colorful: false,
                big: false,
              ),
            ],
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          const TileButton(
            big: true,
            colorful: false,
            text: "Test",
          ),
          SizedBox(height: Paddings.afterPage),
        ],
      ),
    );
  }
}
