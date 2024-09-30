import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/components/list/scrollbar.dart';
import 'package:handygram/src/components/list/scrollwrapper.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/chat_send/chat_send.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:mutex/mutex.dart';

class ChatSendGIFPage extends StatefulWidget {
  const ChatSendGIFPage(this.info, {super.key});

  final MessageSendInfo info;

  @override
  State<ChatSendGIFPage> createState() => _ChatSendGIFPageState();
}

class _ChatSendGIFPageState extends State<ChatSendGIFPage> {
  final _controller = ScrollController();
  List<td.Animation> _animations = [];
  bool _loading = true;
  final Mutex _lock = Mutex();

  void _load() async {
    _animations =
        await CurrentAccount.providers.animations.getSavedAnimations();

    if (mounted && context.mounted) setState(() => _loading = false);
  }

  void _send(td.Animation animation) =>
      widget.info.sendMessage(td.InputMessageAnimation(
        animation: td.InputFileRemote(id: animation.animation.remote.id),
        addedStickerFileIds: [],
        duration: animation.duration,
        width: animation.width,
        height: animation.height,
        showCaptionAboveMedia: false,
        hasSpoiler: false,
      ));

  Widget getPlaceholder([Color? color]) => Container(
        decoration: BoxDecoration(
          color: color ?? ColorStyles.active.surface,
          borderRadius: BorderRadii.messageBubbleContentRadius,
        ),
        child: const SizedBox.expand(),
      );

  Future<Widget?> _getThumbnail(td.Animation gif) async {
    try {
      final file = await CurrentAccount.providers.files.generateThumbnail(
        gif.animation.id,
      );

      return Image(
        image: FileImage(File(file.local.path)),
        fit: BoxFit.contain,
      );
    } catch (e) {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  Widget build(BuildContext context) {
    final int countPerRow = Settings().get(SettingsEntries.stickersCountInRow);

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
              PageHeader(title: AppLocalizations.current.sendMediaGIFTitle),
              LayoutBuilder(
                builder: (context, constraints) => Wrap(
                  spacing: Paddings.betweenSimilarElements,
                  runSpacing: Paddings.betweenSimilarElements,
                  children: [
                    for (final animation in _animations)
                      GestureDetector(
                        onTap: () => _send(animation),
                        child: SizedBox.square(
                          // looks scary but it's obvious how does it work
                          dimension: (constraints.biggest.shortestSide -
                                  Paddings.betweenSimilarElements *
                                      (countPerRow - 1)) /
                              countPerRow,
                          child: AspectRatio(
                            aspectRatio: min(
                              1.2,
                              max(
                                0.7,
                                animation.width / animation.height,
                              ),
                            ),
                            child: FutureBuilder(
                              future:
                                  _lock.protect(() => _getThumbnail(animation)),
                              builder: (context, snapshot) => AnimatedSwitcher(
                                duration: const Duration(milliseconds: 200),
                                child: snapshot.data ?? getPlaceholder(),
                              ),
                            ),
                          ),
                        ),
                      )
                  ],
                ),
              ),
              if (_loading) ...[
                SizedBox(height: Paddings.afterPageEndingWithSmallButton),
                const Center(
                  child: SizedBox.square(
                    dimension: 50,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
              SizedBox(height: Paddings.afterPage),
            ],
          ),
        ),
      ),
    );
  }
}
