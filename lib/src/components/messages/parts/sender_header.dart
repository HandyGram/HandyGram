/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/tdlib/extensions/message/sender.dart';
import 'package:handygram/src/common/tdlib/misc/thumbnails.dart';
import 'package:handygram/src/components/icons/micro_avatar.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class MessageHeader extends StatefulWidget {
  const MessageHeader({
    super.key,
    required this.message,
  });

  final td.Message message;

  @override
  State<MessageHeader> createState() => _MessageHeaderState();
}

class _MessageHeaderState extends State<MessageHeader> {
  Color accentColor = ColorStyles.instance.defaultChatColor.usernameColor;
  String? title;
  Widget? senderStatus;
  late td.MessageSender sender = widget.message.senderId;

  Color _getAccentColor(int? id) {
    final normalizedId = id == null
        ? null
        : CurrentAccount.providers.accentColors.state
            ?.convertAdvancedToBasic(id);
    if (normalizedId == null) {
      return ColorStyles.instance.defaultChatColor.usernameColor;
    }
    return ColorStyles.basicChatColors[normalizedId]!.usernameColor;
  }

  Future<void> _getSenderStuff() async {
    accentColor = _getAccentColor(await sender.accentColorId);
    title = await sender.title;

    final size = Sizes.microAvatarDiameter;
    final status = await sender.emojiStatus;
    if (status != null) {
      final sticker = await CurrentAccount.providers.stickers
          .getCustomEmoji(status.customEmojiId);
      senderStatus = await getStickerThumbnailWidget(
        sticker,
        size: size,
        repaintColor: accentColor,
      );
    } else if (await sender.isPremium) {
      // TODO: replace with premium badge
      senderStatus ??= Icon(
        Icons.star,
        size: size,
        opticalSize: size,
        color: accentColor,
      );
    }

    if (mounted && context.mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _getSenderStuff();
  }

  @override
  void didUpdateWidget(covariant MessageHeader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message.senderId != widget.message.senderId) {
      sender = widget.message.senderId;
      _getSenderStuff();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MicroAvatar(sender: widget.message.senderId),
        SizedBox(width: 7.1 * Scaling.factor),
        Flexible(
          child: Text(
            title ?? "...",
            textWidthBasis: TextWidthBasis.longestLine,
            maxLines: 1,
            style: TextStyles.active.labelLarge?.copyWith(
              color: accentColor,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (senderStatus != null) ...[
          SizedBox(width: Paddings.betweenSimilarElements),
          senderStatus!,
        ],
      ],
    );
  }
}
