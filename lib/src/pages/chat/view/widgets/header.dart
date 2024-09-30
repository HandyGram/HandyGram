import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handy_tdlib/api.dart' as td;

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    super.key,
    required this.chat,
  });

  final td.Chat chat;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.tilesWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: Paddings.chatFooterElementsPadding -
                  Paddings.betweenSimilarElements),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TileButton(
                icon: const Icon(Icons.emoji_emotions),
                onTap: () {
                  GoRouter.of(context)
                      .push("/chat/send?chatId=${chat.id}&viewId=media");
                },
                style: TileButtonStyles.basic,
                big: false,
              ),
              TileButton(
                icon: const Icon(Icons.keyboard),
                onTap: () {
                  GoRouter.of(context)
                      .push("/chat/send?chatId=${chat.id}&viewId=text");
                },
                style: TileButtonStyles.basic,
                big: false,
              ),
              TileButton(
                icon: const Icon(Icons.mic),
                onTap: () {
                  GoRouter.of(context)
                      .push("/chat/send?chatId=${chat.id}&viewId=voice");
                },
                style: TileButtonStyles.basic,
                big: false,
              ),
            ],
          ),
          SizedBox(height: Paddings.chatFooterElementsPadding),
          TileButton(
            big: true,
            style: TileButtonStyles.basic,
            text: AppLocalizations.current.sendFile,
            onTap: () {
              GoRouter.of(context)
                  .push("/chat/send?chatId=${chat.id}&viewId=file");
            },
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            big: true,
            style: TileButtonStyles.basic,
            text: switch (chat.type) {
              td.ChatTypeBasicGroup() => AppLocalizations.current.chatInfoGroup,
              td.ChatTypeSupergroup(isChannel: final isChannel) => isChannel
                  ? AppLocalizations.current.chatInfoChannel
                  : AppLocalizations.current.chatInfoGroup,
              // TODO: handle bots
              _ => AppLocalizations.current.chatInfoPersonal,
            },
            onTap: () {
              GoRouter.of(context).push("/chat/info?chatId=${chat.id}");
            },
          ),
          SizedBox(height: Paddings.afterPage),
        ],
      ),
    );
  }
}
