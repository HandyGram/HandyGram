import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/common/native/ogg_waveform.dart';
import 'package:handygram/src/common/native/recorder.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/chat_send/chat_send.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;
import 'package:handy_tdlib/api.dart' as td;

class ChatSendVoicePage extends StatefulWidget {
  const ChatSendVoicePage(this.info, {super.key});

  final MessageSendInfo info;

  @override
  State<ChatSendVoicePage> createState() => _ChatSendVoicePageState();
}

class _ChatSendVoicePageState extends State<ChatSendVoicePage> {
  final _controller = ScrollController();
  File? file;
  OpusOggRecorder? recorder;

  void _initRecorder() async {
    final supportDir = await getApplicationDocumentsDirectory();

    file = File(path.join(
      supportDir.path,
      'tmp',
      "voicemessage-${widget.info.chatId}-${DateTime.now().millisecondsSinceEpoch}.ogg",
    ));
    await file!.parent.create(recursive: true);

    recorder = await OpusOggRecorder.create(file!);

    if (mounted && context.mounted) setState(() {});
  }

  void _send() async {
    await widget.info.sendMessage(
      td.InputMessageVoiceNote(
        duration: recorder!.duration.inSeconds,
        voiceNote: td.InputFileLocal(path: file!.path),
        waveform: await OggWaveform.forFile(file!),
      ),
      wait: false,
    );
  }

  @override
  void initState() {
    super.initState();
    _initRecorder();
  }

  @override
  void dispose() {
    recorder?.dispose();
    super.dispose();
  }

  void _beginRecording() {
    recorder?.startRecording();
  }

  void _pauseRecording() {
    recorder?.pauseRecording();
  }

  void _stopRecordingAndSend() async {
    await recorder?.stopRecording();
    return _send();
  }

  @override
  Widget build(BuildContext context) {
    final recorder = this.recorder;
    if (recorder == null) {
      return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PageHeader(title: AppLocalizations.current.sendVoiceMessageTitle),
            const SizedBox.square(
              dimension: 50,
              child: CircularProgressIndicator(),
            )
          ],
        ),
      );
    }

    return Scaffold(
      key: const GlobalObjectKey("scaffold-voice-recording"),
      body: StreamBuilder(
        initialData: recorder.state,
        stream: recorder.stateStream,
        key: const GlobalObjectKey("sb-voice-recording"),
        builder: (context, stateSnapshot) {
          final state = stateSnapshot.data;
          return HandyListView(
            controller: _controller,
            children: [
              PageHeader(title: AppLocalizations.current.sendVoiceMessageTitle),
              if (state == RecorderState.stopped)
                const SizedBox.square(
                  dimension: 50,
                  child: CircularProgressIndicator(),
                )
              else ...[
                StreamBuilder(
                  initialData: recorder.duration,
                  stream: recorder.durationStream,
                  builder: (context, snapshot) => Text(
                    snapshot.data!.inSeconds.shortDurationFromSeconds,
                    style: TextStyles.active.titleLarge,
                  ),
                ),
                SizedBox(height: Paddings.beforeSmallButton),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    switch (state) {
                      RecorderState.ready || RecorderState.paused => TileButton(
                          icon: Icon(
                            Icons.mic,
                            color: state == RecorderState.ready
                                ? ColorStyles.active.onPrimary
                                : ColorStyles.active.onSurface,
                          ),
                          onTap: _beginRecording,
                          style: state == RecorderState.ready
                              ? TileButtonStyles.colorful
                              : TileButtonStyles.basic,
                          big: false,
                        ),
                      RecorderState.recording => TileButton(
                          icon: Icon(
                            Icons.pause,
                            color: ColorStyles.active.onSurface,
                          ),
                          onTap: _pauseRecording,
                          style: TileButtonStyles.basic,
                          big: false,
                        ),
                      _ => Container(),
                    },
                    switch (state) {
                      RecorderState.recording ||
                      RecorderState.paused =>
                        TileButton(
                          icon: Icon(
                            Icons.send,
                            color: ColorStyles.active.onPrimary,
                          ),
                          onTap: _stopRecordingAndSend,
                          big: false,
                        ),
                      _ => Container(),
                    }
                  ],
                ),
              ],
              SizedBox(height: Paddings.afterPage),
            ],
          );
        },
      ),
    );
  }
}
