/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/tdlib/extensions/message/sender.dart';
import 'package:handygram/src/components/icons/micro_avatar.dart';

class MessageHeader extends StatelessWidget {
  const MessageHeader({
    super.key,
    required this.message,
  });

  final td.Message message;

  @override
  Widget build(BuildContext context) {
    return Row(
      key: ValueKey<td.MessageSender>(message.senderId),
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MicroAvatar(sender: message.senderId),
        SizedBox(width: 7.1 * Scaling.factor),
        Flexible(
          child: FutureBuilder(
            future: message.senderId.title,
            builder: (context, s) => Text(
              s.data ?? "...",
              textWidthBasis: TextWidthBasis.longestLine,
              maxLines: 1,
              style: TextStyles.active.labelLarge,
              overflow: TextOverflow.ellipsis,
              key: ValueKey("msg-hdr-ttl-${s.data}"),
            ),
          ),
        ),
      ],
    );
  }
}
