import 'package:flutter/material.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/components/list/scrollbar.dart';
import 'package:handygram/src/components/list/scrollwrapper.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/chat_send/chat_send.dart';

class ChatSendPhotoPage extends StatefulWidget {
  const ChatSendPhotoPage(this.info, {super.key});

  final MessageSendInfo info;

  @override
  State<ChatSendPhotoPage> createState() => _ChatSendPhotoPageState();
}

class _ChatSendPhotoPageState extends State<ChatSendPhotoPage> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HandyScrollWrapper(
        controller: _controller,
        child: HandyScrollbar(
          controller: _controller,
          child: ListView(
            controller: _controller,
            padding: EdgeInsets.symmetric(
              horizontal: Paddings.tilesHorizontalPadding,
            ),
            children: [
              PageHeader(title: AppLocalizations.current.sendMediaPhotoTitle),
              // TODO: photos picker
              const Text("TBD. Here's a racoon for now"),
              SizedBox.square(
                dimension: Scaling.screenSize.shortestSide * 0.5,
                child: Image.asset("assets/images/me.gif"),
              ),
              SizedBox(height: Paddings.afterPage),
            ],
          ),
        ),
      ),
    );
  }
}
