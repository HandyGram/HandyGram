import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/scaled_aspect_ratio.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:handygram/src/widgets/thumbnail.dart';

class StickerMessagePage extends StatefulWidget {
  const StickerMessagePage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<StickerMessagePage> createState() => _StickerMessagePageState();
}

class _TgStickerSet {
  final Widget icon;
  final String name;
  final List<tdlib.Sticker> stickers;

  const _TgStickerSet(this.icon, this.name, this.stickers);
}

class _StickerList extends StatelessWidget {
  const _StickerList({
    required this.set,
    required this.chatId,
    required this.replyToMsg,
    required this.onComplete,
  });

  final _TgStickerSet set;
  final TgMessage? replyToMsg;
  final int chatId;
  final void Function() onComplete;

  Future<ImageProvider?> _loadSticker(tdlib.Sticker sticker) {
    String id = sticker.sticker.remote.id;
    if (sticker.format is! tdlib.StickerFormatWebp) {
      if (sticker.thumbnail?.format is tdlib.ThumbnailFormatMpeg4 ||
          sticker.thumbnail?.format is tdlib.ThumbnailFormatTgs ||
          sticker.thumbnail?.format is tdlib.ThumbnailFormatWebm ||
          sticker.thumbnail?.format is tdlib.ThumbnailFormatGif) {
        throw "Can't display this sticker";
      }
      id = sticker.thumbnail!.file.remote.id;
    }

    return TgImage(
      id: id,
    ).load(priority: 20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScalingListBuilder(
        itemCount: (set.stickers.length / 2).ceil() + 1,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Center(
              child: PreSettingsButton(
                icon: Icons.arrow_back,
                title: "Back",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            );
          }

          int rowNum = i - 1;
          List<tdlib.Sticker> sub = set.stickers.sublist(
            rowNum * 2,
            min(rowNum * 2 + 2, set.stickers.length),
          );

          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: sub
                  .map<Widget>(
                    (e) => InkWell(
                      onTap: () async {
                        tdlib.Message? result;
                        result = await session.functions.sendMessage(
                          chatId: chatId,
                          content: tdlib.InputMessageSticker(
                            sticker: tdlib.InputFileId(
                              id: e.sticker.id,
                            ),

                            // I love undocumented stuff like that
                            width: 0,
                            height: 0,
                            emoji: "",
                          ),
                          replyToMessageId: replyToMsg?.id ?? 0,
                        );

                        if (result == null) {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Center(
                                child: Text("error"),
                              ),
                            ),
                          );
                        } else {
                          // ignore: use_build_context_synchronously
                          Navigator.pop(context);
                          onComplete();
                        }
                      },
                      child: FutureBuilder<ImageProvider?>(
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return const Center(
                              child: Icon(Icons.error),
                            );
                          }

                          if (snapshot.data == null) {
                            return Center(
                              child: ScaledAspectRatio(
                                height: e.height,
                                width: e.width,
                                scaleFactor: 4.0,
                                child: const CircularProgressIndicator(),
                              ),
                            );
                          }

                          return Center(
                            child: ScaledAspectRatio(
                              height: e.height,
                              width: e.width,
                              scaleFactor: 4.0,
                              child: Image(image: snapshot.data!),
                            ),
                          );
                        },
                        future: _loadSticker(e),
                      ),
                    ),
                  )
                  .toList(),
            ),
          );
        },
      ),
    );
  }
}

class _StickerMessagePageState extends State<StickerMessagePage> {
  late final TgMessage? replyToMsg;
  late final int chatId;
  bool isSending = false, loading = savedStickers.isEmpty;
  static List<_TgStickerSet> savedStickers = [];
  List<_TgStickerSet> stickers = savedStickers;

  @override
  void initState() {
    super.initState();
    replyToMsg = widget.args["reply_to_msg"];
    chatId = widget.args["chat"];

    SchedulerBinding.instance.addPostFrameCallback(
      (_) => session.functions.getRecentStickers(false).then(
        (st) {
          if (context.mounted) {
            setState(() {
              if (stickers.firstOrNull?.name == "Recent") {
                stickers.removeAt(0);
              }
              stickers.insert(
                0,
                _TgStickerSet(
                  const Icon(Icons.update),
                  "Recent",
                  st ?? [],
                ),
              );
              savedStickers = stickers;
              loading = false;
            });
            List<_TgStickerSet> temp = [
              stickers[0],
            ];
            session.functions
                .getInstalledStickerSets(const tdlib.StickerTypeRegular())
                .then((ss) async {
              for (tdlib.StickerSetInfo s in ss ?? []) {
                var fs = await session.functions.getStickerSet(s.id);
                temp.add(
                  _TgStickerSet(
                    ScaledAspectRatio(
                      height: s.thumbnail?.height ??
                          s.covers.first.thumbnail?.height ??
                          50,
                      width: s.thumbnail?.width ??
                          s.covers.first.thumbnail?.width ??
                          50,
                      scaleFactor: 4.0,
                      child: s.thumbnail == null
                          ? TelegramThumbnail(
                              thumbnail: s.covers.first.thumbnail!,
                            )
                          : TelegramThumbnail(
                              thumbnail: s.thumbnail!,
                            ),
                    ),
                    fs?.title ?? s.title,
                    fs?.stickers ?? s.covers,
                  ),
                );
              }
              stickers = temp;
              savedStickers = stickers;
              if (context.mounted) {
                setState(() {});
              }
            });
          }
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          var availableMethods = canSendMessages(chatId, ref);
          if (availableMethods == null || loading) {
            return const Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (!availableMethods
                  .contains(AvailableSendPermissions.otherMessages) ||
              stickers.isEmpty) {
            return ScalingList(
              children: [
                if (!settingsStorage.backButtonDisabled)
                  PreSettingsButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icons.arrow_back,
                    title: "Back",
                  ),
                if (!settingsStorage.backButtonDisabled)
                  const SizedBox(height: 10),
                if (!availableMethods
                    .contains(AvailableSendPermissions.otherMessages))
                  const Icon(Icons.block),
                if (stickers.isEmpty) const Icon(Icons.running_with_errors),
              ],
            );
          }

          return Scaffold(
            body: ScalingListBuilder(
              itemCount: (stickers.length / 2).ceil() + 1,
              itemBuilder: (context, i) {
                if (i == 0) {
                  return Center(
                    child: PreSettingsButton(
                      icon: Icons.arrow_back,
                      title: "Back",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  );
                }

                int rowNum = i - 1;
                List<_TgStickerSet> sub = stickers.sublist(
                  rowNum * 2,
                  min(rowNum * 2 + 2, stickers.length),
                );

                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: sub
                        .map<Widget>(
                          (e) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => _StickerList(
                                    chatId: chatId,
                                    replyToMsg: replyToMsg,
                                    set: e,
                                    onComplete: () {
                                      widget.args["onComplete"]();
                                    },
                                  ),
                                ),
                              );
                            },
                            child: e.icon,
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
