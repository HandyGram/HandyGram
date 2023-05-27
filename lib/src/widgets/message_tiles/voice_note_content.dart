import 'dart:convert';
import 'dart:typed_data';

import 'package:async/async.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/loadfile.dart';
import 'package:handygram/src/telegram/messages.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

String _printDur(Duration dur) {
  return dur.inHours == 0
      ? "${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}"
      : "${(dur.inHours % 60).toString().padLeft(2, '0')}:${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}";
}

List<int> _parseWf(Uint8List bytes) {
  String bits = "";
  for (var i in bytes) {
    bits += i.toRadixString(2).padLeft(8, '0');
  }
  List<String> binaryNums = [];
  for (int i = 0; i < (bits.length ~/ 5) * 5; i += 5) {
    binaryNums.add(
      "${bits.characters.elementAt(i)}${bits.characters.elementAt(i + 1)}${bits.characters.elementAt(i + 2)}${bits.characters.elementAt(i + 3)}${bits.characters.elementAt(i + 4)}",
    );
  }
  return binaryNums
      .map(
        (e) => int.parse(e, radix: 2),
      )
      .toList();
}

class MessageVoiceNoteContent extends StatefulWidget {
  const MessageVoiceNoteContent({
    super.key,
    required this.msg,
  });

  final TgMessage msg;

  @override
  State<MessageVoiceNoteContent> createState() =>
      _MessageVoiceNoteContentState();
}

enum VoicePlayerState {
  loading,
  error,
  stopped,
  playing,
}

class _MessageVoiceNoteContentState extends State<MessageVoiceNoteContent> {
  double progress = 0.0;
  int duration = 99;
  VoicePlayerState state = VoicePlayerState.stopped;
  PlayerController player = PlayerController();
  List<Widget> bars = [];
  List<int> lengths = [];
  CancelableOperation? loadF;

  @override
  void dispose() {
    player.dispose();
    loadF?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    var content = widget.msg.content as TgVoiceNoteMessageContent;
    lengths = _parseWf(
      base64Decode(
        content.voiceNote.waveform,
      ),
    );

    player.onCurrentDurationChanged.listen((event) => duration = event);
    player.onPlayerStateChanged.listen((st) => setState(() {
          if (!st.isPlaying) {
            state = VoicePlayerState.stopped;
          } else {
            state = VoicePlayerState.playing;
          }
        }));
  }

  Future<void> _worker() async {
    var dur = await player.getDuration(DurationType.current);
    setState(() {
      progress = dur / duration;
    });
    await Future.delayed(const Duration(milliseconds: 100));
    return _worker();
  }

  @override
  Widget build(BuildContext context) {
    var content = widget.msg.content as TgVoiceNoteMessageContent;

    bars.clear();
    for (int i = 0; i < lengths.length; i++) {
      var e = lengths.elementAt(i);
      bars.add(
        Flexible(
          child: Container(
            height: e.toDouble() + 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: (progress * 100 > i)
                  ? Theme.of(context)
                      .buttonTheme
                      .colorScheme!
                      .onPrimaryContainer
                  : Colors.grey,
            ),
          ),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {
                if (state == VoicePlayerState.playing) {
                  player.stopPlayer();
                  loadF?.cancel();
                } else if (state == VoicePlayerState.stopped) {
                  state = VoicePlayerState.loading;
                  loadF = CancelableOperation.fromFuture(
                    loadTgFile(
                      content.voiceNote.voice.remote.id,
                      priority: 32,
                      type: const tdlib.FileTypeVoiceNote(),
                    ).then((f) async {
                      if (f != null) {
                        await player.preparePlayer(
                          path: f.path,
                          volume: 1.0,
                          shouldExtractWaveform: false,
                        );
                        await player.startPlayer(finishMode: FinishMode.stop);
                        setState(() => state = VoicePlayerState.playing);
                        await _worker();
                      } else {
                        setState(() => state = VoicePlayerState.error);
                      }
                    }),
                  );
                }
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonTheme.colorScheme!.primary,
                  shape: BoxShape.circle,
                ),
                child: state == VoicePlayerState.error
                    ? const Icon(Icons.error)
                    : state == VoicePlayerState.playing
                        ? const Icon(Icons.pause)
                        : state == VoicePlayerState.stopped
                            ? const Icon(Icons.play_arrow)
                            : const CircularProgressIndicator(),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 35,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: bars,
                    ),
                  ),
                  Text(
                    _printDur(
                      Duration(
                        seconds: content.voiceNote.duration,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: scaleText(10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        if (content.caption != null && content.caption!.text.isNotEmpty)
          Text(
            content.caption!.text,
            style: TextStyle(
              fontSize: scaleText(12),
            ),
          ),
      ],
    );
  }
}
