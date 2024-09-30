import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handygram/src/components/list/scrollbar.dart';
import 'package:handygram/src/components/list/scrollwrapper.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/chat_send/chat_send.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/pages/chat_send/pages/widgets/sticker_set.dart';

class ChatSendStickerPage extends StatefulWidget {
  const ChatSendStickerPage(this.info, {super.key});

  final MessageSendInfo info;

  @override
  State<ChatSendStickerPage> createState() => _ChatSendStickerPageState();
}

class _ChatSendStickerPageState extends State<ChatSendStickerPage> {
  final _controller = ScrollController();
  int _currentSet = 0;
  List<td.StickerSetInfo> _stickerSetsInfo = [];
  final List<td.StickerSet> _stickerSets = [];
  List<td.Sticker> _recentStickers = [], _groupStickers = [];
  bool _loading = true;

  void _loadChatPack() async {
    final chat =
        await CurrentAccount.providers.chats.getChat(widget.info.chatId);
    final supergroupId = chat.supergroupId;
    if (supergroupId == null) return;

    final supergroupInfo = await CurrentAccount.providers.supergroupsFullInfo
        .getSupergroupFullInfo(supergroupId);
    if (supergroupInfo.stickerSetId == 0) return;

    final groupStickerSet = await CurrentAccount.providers.stickers
        .getStickerSet(supergroupInfo.stickerSetId);
    _groupStickers = groupStickerSet.stickers;

    if (mounted && context.mounted) setState(() => _loading = false);
  }

  void _load() async {
    _stickerSetsInfo =
        await CurrentAccount.providers.stickers.getInstalledStickerSets();
    _recentStickers =
        await CurrentAccount.providers.stickers.getRecentStickers();

    if (mounted && context.mounted) setState(() => _loading = false);

    _loadChatPack();
  }

  void _loadAnotherStickerPack() async {
    if (_currentSet + 1 >= _stickerSetsInfo.length) return;

    if (mounted && context.mounted) setState(() => _loading = true);

    final stickerSet = await CurrentAccount.providers.stickers.getStickerSet(
      _stickerSetsInfo[_currentSet].id,
    );
    _stickerSets.add(stickerSet);
    _currentSet++;

    if (mounted && context.mounted) setState(() => _loading = false);
  }

  void _onScroll() {
    if (_currentSet + 1 >= _stickerSetsInfo.length) {
      return _controller.removeListener(_onScroll);
    }

    final scrollFraction =
        _controller.position.pixels / _controller.position.maxScrollExtent;
    if (scrollFraction > 0.8) {
      _loadAnotherStickerPack();
    }
  }

  void _send(td.Sticker sticker) =>
      widget.info.sendMessage(td.InputMessageSticker(
        emoji: sticker.emoji,
        sticker: td.InputFileRemote(id: sticker.sticker.remote.id),
        width: sticker.width,
        height: sticker.height,
        thumbnail: sticker.thumbnail != null
            ? td.InputThumbnail(
                height: sticker.thumbnail!.height,
                width: sticker.thumbnail!.width,
                thumbnail: td.InputFileRemote(
                  id: sticker.thumbnail!.file.remote.id,
                ),
              )
            : null,
      ));

  @override
  void initState() {
    super.initState();
    _load();
    _controller.addListener(_onScroll);
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    super.dispose();
  }

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
              PageHeader(title: AppLocalizations.current.sendMediaStickerTitle),
              StickerSetPresentation(
                stickers: _recentStickers,
                title: AppLocalizations.current.recentStickers,
                onStickerSelection: _send,
              ),
              if (_groupStickers.isNotEmpty) ...[
                SizedBox(height: Paddings.afterPageEndingWithSmallButton),
                StickerSetPresentation(
                  stickers: _groupStickers,
                  title: AppLocalizations.current.groupStickers,
                  onStickerSelection: _send,
                ),
              ],
              for (final set in _stickerSets) ...[
                SizedBox(height: Paddings.afterPageEndingWithSmallButton),
                StickerSetPresentation(
                  stickers: set.stickers,
                  title: set.title,
                  onStickerSelection: _send,
                ),
              ],
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
