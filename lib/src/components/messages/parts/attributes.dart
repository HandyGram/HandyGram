import 'dart:async';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/tdlib/extensions/message/misc.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/int.dart';
import 'package:handygram/src/common/tdlib/misc/service_chat_type.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:intl/intl.dart';

class MessageAttributes extends StatefulWidget {
  const MessageAttributes({
    super.key,
    required this.message,
    this.chatType,
    this.chat,
  });

  final td.Message message;
  final td.Chat? chat;
  final ServiceChatType? chatType;

  @override
  State<MessageAttributes> createState() => _MessageAttributesState();
}

class _MessageAttributesState extends State<MessageAttributes> {
  Color get color => message.isReallyOutgoing
      ? ColorStyles.active.onSurfaceVariant
      : ColorStyles.active.secondary;
  double get size => TextStyles.active.labelLarge!.fontSize!;

  late td.Message message = widget.message;
  late td.Chat? chat = widget.chat;
  final List<StreamSubscription> _subs = [];
  bool showStatus = false;

  @override
  void initState() {
    super.initState();
    if (widget.chatType != null) return;
    if (message.isChannelPost) {
      _subs.add(CurrentAccount.providers.messages.filter(
        message.chatId,
        messageId: message.id,
        tdUpdateTypes: [td.UpdateMessageInteractionInfo],
      ).listen(
        (e) => setState(() {
          message = message.copyWith(
            interactionInfo:
                (e.update as td.UpdateMessageInteractionInfo).interactionInfo,
          );
        }),
      ));
    }
    if (message.isReallyOutgoing && chat != null) {
      _subs.add(CurrentAccount.providers.chats.filter(chat!.id, tdUpdateTypes: [
        td.UpdateChatReadOutbox,
      ]).listen(
        (e) => setState(() {
          chat = chat?.copyWith(
            lastReadOutboxMessageId:
                (e.update as td.UpdateChatReadOutbox).lastReadOutboxMessageId,
          );
        }),
      ));
      showStatus = true;
    }
    // message updates are handled by ChatBloc
  }

  @override
  void dispose() {
    for (final sub in _subs) {
      sub.cancel();
    }
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant MessageAttributes oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (message != widget.message) {
      message = widget.message;
    }
    if ((chat?.lastReadOutboxMessageId ?? 0) <=
        (widget.chat?.lastReadOutboxMessageId ?? 0)) {
      chat = widget.chat;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (message.isChannelPost && message.interactionInfo != null) ...[
          Icon(
            Icons.visibility,
            color: color,
            size: size,
            opticalSize: size,
          ),
          SizedBox(width: Paddings.betweenSimilarElements),
          Flexible(
            child: Text(
              "${message.interactionInfo!.viewCount}",
              style: TextStyles.active.labelLarge?.copyWith(color: color),
              maxLines: 1,
              textWidthBasis: TextWidthBasis.longestLine,
            ),
          ),
          SizedBox(width: Paddings.messageContentPadding),
        ],
        Flexible(
          child: Text(
            DateFormat('HH:mm').format(message.date.asDate),
            style: TextStyles.active.labelLarge?.copyWith(
              color: color,
            ),
            textWidthBasis: TextWidthBasis.longestLine,
          ),
        ),
        if (message.sendingState != null) ...[
          SizedBox(width: Paddings.betweenSimilarElements),
          SizedBox.square(
            dimension: size,
            child: const CircularProgressIndicator(
              strokeWidth: 2,
            ),
          )
        ] else if (showStatus) ...[
          SizedBox(width: Paddings.betweenSimilarElements),
          Icon(
            (chat!.lastReadOutboxMessageId >= message.id)
                ? Icons.done_all
                : Icons.done,
            size: size,
            opticalSize: size,
            color: color,
          ),
        ],
        if (message.editDate > 0) ...[
          SizedBox(width: Paddings.betweenSimilarElements),
          Icon(
            Icons.edit,
            color: color,
            size: size,
            opticalSize: size,
          ),
        ]
      ],
    );
  }
}
