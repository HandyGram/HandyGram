import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';

class TextMessagePage extends StatefulWidget {
  const TextMessagePage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<TextMessagePage> createState() => _TextMessagePageState();
}

class _TextMessagePageState extends State<TextMessagePage> {
  late final TgMessage? replyToMsg;
  late final int chatId;
  final TextEditingController controller = TextEditingController();
  bool isSending = false;

  @override
  void initState() {
    super.initState();
    replyToMsg = widget.args["reply_to_msg"];
    chatId = widget.args["chat"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          var availableMethods = canSendMessages(chatId, ref);
          if (availableMethods == null) {
            return const Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (availableMethods.isEmpty) {
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
                const Icon(Icons.block),
              ],
            );
          }

          bool isMini = availableMethods.length > 2;

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
              if (availableMethods.length > 1)
                Row(
                  mainAxisAlignment: availableMethods.length > 2
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.center,
                  children: [
                    if (availableMethods
                        .contains(AvailableSendPermissions.voiceMessages))
                      PreSettingsButton(
                        icon: Icons.voice_chat,
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            "/voice_message",
                            arguments: {
                              "reply_to_msg": replyToMsg,
                              "chat": chatId,
                              "onComplete": () {
                                Navigator.pop(context);
                                widget.args["onComplete"]();
                              },
                            },
                          );
                        },
                        title: isMini ? null : "Voice note",
                        mini: isMini,
                      ),
                    if (availableMethods
                        .contains(AvailableSendPermissions.otherMessages))
                      PreSettingsButton(
                        icon: Icons.sticky_note_2,
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            "/sticker_message",
                            arguments: {
                              "reply_to_msg": replyToMsg,
                              "chat": chatId,
                              "onComplete": () {
                                Navigator.pop(context);
                                widget.args["onComplete"]();
                              },
                            },
                          );
                        },
                        title: isMini ? null : "Sticker",
                        mini: isMini,
                      ),
                    if (availableMethods
                        .contains(AvailableSendPermissions.mediaMessages))
                      PreSettingsButton(
                        icon: Icons.gif,
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            "/gif_message",
                            arguments: {
                              "reply_to_msg": replyToMsg,
                              "chat": chatId,
                              "onComplete": () {
                                Navigator.pop(context);
                                widget.args["onComplete"]();
                              },
                            },
                          );
                        },
                        title: isMini ? null : "GIF",
                        mini: isMini,
                      ),
                  ],
                ),
              if (availableMethods.length > 1) const SizedBox(height: 10),
              LayoutBuilder(
                builder: (context, constraints) {
                  return ConstrainedBox(
                    constraints: constraints.copyWith(
                      maxHeight: MediaQuery.of(context).size.height,
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: scaleText(12),
                      ),
                      minLines: null,
                      maxLines: null,
                      controller: controller,
                      onChanged: (v) {
                        setState(() {});
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Write a message...",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              PreSettingsButton(
                icon: Icons.send,
                title: "Send",
                onPressed: () async {
                  if (controller.text.isEmpty || isSending) return;
                  isSending = true;
                  tdlib.Message? result;
                  try {
                    result = await session.functions.sendMessage(
                      chatId: chatId,
                      content: tdlib.InputMessageText(
                        text: tdlib.FormattedText(
                          text: controller.text,
                          entities: [],
                        ),
                        disableWebPagePreview: true,
                        clearDraft: true,
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
              ),
            ],
          );
        },
      ),
    );
  }
}
