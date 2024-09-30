import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/fields/text_field.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/chat_send/chat_send.dart';

class ChatSendTextPage extends StatefulWidget {
  const ChatSendTextPage(this.info, {super.key});

  final MessageSendInfo info;

  @override
  State<ChatSendTextPage> createState() => _ChatSendTextPageState();
}

class _ChatSendTextPageState extends State<ChatSendTextPage> {
  final _controller = ScrollController();
  late final _textController = TextEditingController()
    ..addListener(_onValueUpdated);
  final _fn = FocusNode();
  bool canSend = false;

  final _fieldKey = const GlobalObjectKey<State<ChatSendTextPage>>(
    "chat-send-text-field",
  );

  void _onValueUpdated() {
    final text = _textController.text;
    if (text.isNotEmpty && !canSend) {
      setState(() {
        canSend = true;
      });
    } else if (text.isEmpty && canSend) {
      setState(() {
        canSend = false;
      });
    }
  }

  void _send() {
    widget.info.sendMessage(td.InputMessageText(
      clearDraft: false, // We're not using it now
      text: td.FormattedText(
        text: _textController.text,
        entities: [], // We don't support input text formatting
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        controller: _controller,
        children: [
          PageHeader(title: AppLocalizations.current.sendTextMessageTitle),
          HandyTextField(
            controller: _textController,
            hint: AppLocalizations.current.sendTextMessageTitle,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            keyboardAction: TextInputAction.done,
            focusNode: _fn,
            key: _fieldKey,
          ),
          SizedBox(height: Paddings.beforeSmallButton),
          TileButton(
            big: false,
            onTap: canSend ? _send : null,
            style: TileButtonStyles.colorful,
            text: AppLocalizations.current.send,
          ),
          SizedBox(height: Paddings.afterPageEndingWithSmallButton),
        ],
      ),
    );
  }
}
