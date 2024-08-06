import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/components/messages/bubble.dart';
import 'package:handygram/src/pages/chat/view/widgets/focus_data.dart';
import 'package:visibility_detector/visibility_detector.dart';

class FocusableMessageBubble extends StatefulWidget {
  const FocusableMessageBubble({
    super.key,
    required this.chat,
    required this.message,
  });

  final td.Chat chat;
  final td.Message message;

  @override
  State<FocusableMessageBubble> createState() => _FocusableMessageBubbleState();
}

class _FocusableMessageBubbleState extends State<FocusableMessageBubble>
    with AutomaticKeepAliveClientMixin<FocusableMessageBubble> {
  bool? _focused;
  late td.Message message = widget.message;
  MessageFocusData? _focusData;

  @override
  bool get wantKeepAlive => true;

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return VisibilityDetector(
      key: ValueKey("mm,vd,${widget.chat.id},${widget.message.id}"),
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
