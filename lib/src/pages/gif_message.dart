import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/scaled_aspect_ratio.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:handygram/src/widgets/thumbnail.dart';

class GifMessagePage extends StatefulWidget {
  const GifMessagePage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<GifMessagePage> createState() => _GifMessagePageState();
}

class _GifMessagePageState extends State<GifMessagePage> {
  late final TgMessage? replyToMsg;
  late final int chatId;
  bool isSending = false, loading = true, error = false;
  List<tdlib.Animation> animations = [];

  @override
  void initState() {
    super.initState();
    replyToMsg = widget.args["reply_to_msg"];
    chatId = widget.args["chat"];

    session.functions.getSavedAnimations().then(
      (st) {
        if (context.mounted) {
          setState(() {
            animations = st ?? [];
            loading = false;
          });
        }
      },
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

          if (error ||
              !availableMethods
                  .contains(AvailableSendPermissions.mediaMessages) ||
              animations.isEmpty) {
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
                if (error) const Icon(Icons.error),
                if (animations.isEmpty) const Icon(Icons.running_with_errors),
              ],
            );
          }

          return Scaffold(
            body: ScalingListBuilder(
              itemCount: (animations.length / 2).ceil() + 1,
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
                List<tdlib.Animation> sub = animations.sublist(
                  rowNum * 2,
                  min(rowNum * 2 + 2, animations.length),
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
                              if (isSending) return;
                              isSending = true;
                              tdlib.Message? result;
                              try {
                                result = await session.functions.sendMessage(
                                  chatId: chatId,
                                  content: tdlib.InputMessageAnimation(
                                    animation: tdlib.InputFileId(
                                      id: e.animation.id,
                                    ),
                                    addedStickerFileIds: [],

                                    // I love undocumented stuff like that
                                    width: 0,
                                    height: 0,
                                    duration: 0,
                                    hasSpoiler: false,
                                  ),
                                  replyToMessageId: replyToMsg?.id ?? 0,
                                );
                              } finally {
                                isSending = false;
                              }

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
                                widget.args["onComplete"]();
                              }
                            },
                            child: Center(
                              child: ScaledAspectRatio(
                                height: e.height,
                                width: e.width,
                                scaleFactor: 4.0,
                                child: TelegramThumbnail(
                                  thumbnail: e.thumbnail!,
                                  onlyPhoto: true,
                                ),
                              ),
                            ),
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
