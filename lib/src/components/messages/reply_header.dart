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
import 'package:handygram/src/components/messages/header.dart';

class MessageReplyHeader extends StatelessWidget {
  const MessageReplyHeader({
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
        Container(
          child: SizedBox(height: 20),
          decoration: BoxDecoration(),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "this is reply",
              textWidthBasis: TextWidthBasis.longestLine,
            )
          ],
        )
      ],
    );
  }
}
