import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'dart:io';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/widgets/list.dart';
import 'package:handygram/src/widgets/settings/pre_button.dart';
import 'package:audio_waveforms/audio_waveforms.dart';

class VoiceMessagePage extends StatefulWidget {
  const VoiceMessagePage({super.key, required this.args});

  final Map<String, dynamic> args;

  @override
  State<VoiceMessagePage> createState() => _VoiceMessagePageState();
}

final _rng = Random.secure();

class _VoiceMessagePageState extends State<VoiceMessagePage> {
  late final TgMessage? replyToMsg;
  late final int chatId;
  RecorderController rc = RecorderController();
  PlayerController pc = PlayerController();
  int randId = _rng.nextInt(999999999);
  late String path = "${TgSession.cacheDir}/temp/voice-$randId.m4a";
  late String pathOpus = "${TgSession.cacheDir}/temp/voice-$randId.ogg";
  Duration? lastDur;
  bool isSending = false;
  String _msg = "Staring...";

  @override
  void dispose() {
    rc.dispose();
    pc.dispose();

    try {
      File(path).delete(recursive: true);
    } catch (_) {}

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    replyToMsg = widget.args["reply_to_msg"];
    chatId = widget.args["chat"];

    rc.onRecorderStateChanged.listen((_) {
      safeSetState(() {});
    });
    rc.onCurrentDuration.listen((v) {
      safeSetState(() {});
      lastDur = v;
    });

    File(path).parent.create();
  }

  void safeSetState(void Function() f) {
    if (context.mounted) {
      setState(f);
    }
  }

  Widget _buildTextContainer(String? text, [int? maxLines, TextAlign? align]) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background.withOpacity(0.5),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        text ?? "null",
        maxLines: maxLines,
        overflow: TextOverflow.ellipsis,
        textAlign: align,
        style: TextStyle(
          color: Theme.of(context).textTheme.bodyMedium?.color,
          fontSize: scaleText(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, _) {
          var availableMethods = canSendMessages(chatId, ref);
          if (availableMethods == null) {
            l.i("VM", "loading on methods");
            return const Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (!availableMethods
              .contains(AvailableSendPermissions.voiceMessages)) {
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

          return FutureBuilder(
            builder: (context, s) {
              if (s.data == null) {
                l.i("VM", "loading on perms");
                return const Center(
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              if (s.data == false) {
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
                    const SizedBox(height: 10),
                    Text(
                      "Please allow microphone permission in order to record voice messages",
                      style: TextStyle(fontSize: scaleText(12)),
                    ),
                  ],
                );
              }

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
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextContainer(
                          "${(lastDur ?? rc.elapsedDuration).inMinutes.toString().padLeft(2, '0')}:"
                          "${(lastDur ?? rc.elapsedDuration).inSeconds.toString().padLeft(2, '0')}",
                          1,
                          TextAlign.center,
                        ),
                      ),
                      if (rc.recorderState.isStopped &&
                          lastDur != null &&
                          !isSending)
                        const SizedBox(width: 10),
                      if (rc.recorderState.isStopped &&
                          lastDur != null &&
                          !isSending)
                        PreSettingsButton(
                          icon: pc.playerState.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          isCentered: true,
                          mini: true,
                          onPressed: () async {
                            if (pc.playerState.isPlaying) {
                              await pc.stopPlayer();
                            } else {
                              await pc.preparePlayer(
                                path: path,
                                shouldExtractWaveform: false,
                                volume: 1.0,
                              );
                              await pc.startPlayer(finishMode: FinishMode.stop);
                              pc.onPlayerStateChanged.listen(
                                (event) => safeSetState(() {}),
                              );
                            }
                            safeSetState(() {});
                          },
                        ),
                      if (!isSending) const SizedBox(width: 10),
                      if (!isSending)
                        PreSettingsButton(
                          icon: (rc.recorderState.isStopped &&
                                  (lastDur ?? rc.elapsedDuration) >
                                      Duration.zero)
                              ? Icons.cancel
                              : rc.recorderState.isRecording
                                  ? Icons.stop
                                  : Icons.mic,
                          isCentered: true,
                          mini: true,
                          onPressed: () async {
                            if (rc.recorderState.isStopped && lastDur != null) {
                              lastDur = null;
                              rc.dispose();
                              rc = RecorderController();
                              rc.onRecorderStateChanged.listen((_) {
                                safeSetState(() {});
                              });
                              rc.onCurrentDuration.listen((v) {
                                safeSetState(() {});
                                lastDur = v;
                              });
                              await pc.stopPlayer();
                            } else if (rc.recorderState.isRecording) {
                              await rc.stop();
                            } else if (rc.elapsedDuration == Duration.zero) {
                              rc.androidOutputFormat =
                                  AndroidOutputFormat.mpeg4;
                              rc.androidEncoder = AndroidEncoder.aac;
                              rc.bitRate = 256000;
                              rc.sampleRate = 44100;
                              await rc.record(path: path);
                            }
                            safeSetState(() {});
                          },
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  !isSending
                      ? PreSettingsButton(
                          icon: Icons.send,
                          title: "Send",
                          onPressed: () async {
                            if (rc.recorderState.isRecording) {
                              await rc.stop();
                            }
                            if (lastDur == null ||
                                !rc.recorderState.isStopped) {
                              return;
                            }

                            isSending = true;
                            safeSetState(() {
                              _msg = "Converting waveform...";
                            });

                            try {
                              tdlib.Message? result;
                              var wf = await pc.extractWaveformData(
                                  path: path, noOfSamples: 100);
                              var binaryWf = wf.map<String>(
                                (e) {
                                  var s = (64 * e).round().toRadixString(2);
                                  return s.substring(0, min(s.length, 5));
                                },
                              ).join();
                              int left = binaryWf.length;

                              List<String> byteWf = [];
                              while (left > 0) {
                                byteWf.add(
                                  binaryWf
                                      .substring(
                                        binaryWf.length - left,
                                        binaryWf.length - left + min(left, 8),
                                      )
                                      .padRight(8, '0'),
                                );
                                left -= 8;
                              }

                              safeSetState(() {
                                _msg = "Converting to Opus...";
                              });

                              int? st = await FlutterFFmpeg().execute(
                                  "-i $path -c:a libopus -b:a 256K $pathOpus");
                              if (st != 0) {
                                safeSetState(() {
                                  isSending = false;
                                });
                                // ignore: use_build_context_synchronously
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Center(
                                      child: Text("FF Error"),
                                    ),
                                  ),
                                );
                              }

                              safeSetState(() {
                                _msg = "Sending...";
                              });

                              result = await session.functions.sendMessage(
                                chatId: chatId,
                                content: tdlib.InputMessageVoiceNote(
                                  duration: rc.recordedDuration.inSeconds,
                                  voiceNote:
                                      tdlib.InputFileLocal(path: pathOpus),
                                  waveform: base64Encode(
                                    byteWf
                                        .map((e) => int.parse(e, radix: 2))
                                        .toList(),
                                  ),
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
                                widget.args["onComplete"]();
                              }
                            } catch (_) {
                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Center(
                                    child: Text("Error"),
                                  ),
                                ),
                              );
                            } finally {
                              safeSetState(() {
                                _msg = "Staring...";
                                isSending = false;
                              });
                            }
                          },
                        )
                      : const Center(
                          child: SizedBox(
                            height: 30,
                            width: 30,
                            child: CircularProgressIndicator(),
                          ),
                        ),
                  if (isSending)
                    Text(
                      _msg,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: scaleText(12),
                        color: Colors.grey,
                      ),
                    ),
                ],
              );
            },
            future: rc.checkPermission(),
          );
        },
      ),
    );
  }
}
