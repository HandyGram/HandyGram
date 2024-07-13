import 'dart:async';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/components/messages/message.dart';
import 'package:handygram/src/pages/chat/bloc/data.dart';
import 'package:handygram/src/pages/chat/view/widgets/focus_data.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FocusableMessageBubble extends StatefulWidget {
  const FocusableMessageBubble({
    super.key,
    required this.chat,
    required this.message,
    this.updatesStream,
  });

  final td.Chat chat;
  final td.Message message;
  final Stream<ChatBlocMessageContentUpdated>? updatesStream;

  @override
  State<FocusableMessageBubble> createState() => _FocusableMessageBubbleState();
}

class _FocusableMessageBubbleState extends State<FocusableMessageBubble> {
  bool? _focused;
  StreamSubscription? _updatesSub;
  late td.Message message = widget.message;
  MessageFocusData? _focusData;

  @override
  void initState() {
    super.initState();
    _updatesSub = widget.updatesStream?.listen((update) {
      if (!mounted) return;
      if (message.id != update.updatedMessage.id) return;
      message = update.updatedMessage;
    });
  }

  @override
  void didChangeDependencies() {
    _focusData = MessageFocusData.of(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    if (_focused ?? false) {
      _focusData?.removeMessage(widget.message.id);
    }
    _updatesSub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: ValueKey("mm-vd,${widget.chat.id},${widget.message.id}"),
      onVisibilityChanged: (info) {
        if (!(mounted && context.mounted)) return;

        if (info.visibleFraction > ((_focused ?? false) ? 0 : 0.6)) {
          if (_focused == true) return;
          _focusData?.addMessage(widget.message.id);
          _focused = true;
        } else {
          if (_focused == false) return;
          _focusData?.removeMessage(widget.message.id);
          _focused = false;
        }
      },
      child: MessageBubble(
        key: ValueKey("mm,${widget.chat.id},${widget.message.id}"),
        message: message,
        chat: widget.chat,
      ),
    );
  }
}
