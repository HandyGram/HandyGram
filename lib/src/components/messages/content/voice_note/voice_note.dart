import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/components/layout/flexible_constraints_column/widget.dart';
import 'package:handygram/src/components/messages/content.dart';
import 'package:handygram/src/components/messages/content/voice_note/bar.dart';
import 'package:handygram/src/components/messages/parts/caption/widget.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class VoiceNoteMessageContent
    extends MessageStatefulWidget<td.MessageVoiceNote> {
  const VoiceNoteMessageContent({
    super.key,
    required super.data,
  });

  @override
  State<VoiceNoteMessageContent> createState() =>
      _VoiceNoteMessageContentState();
}

class _VoiceNoteMessageContentState extends State<VoiceNoteMessageContent> {
  static const String tag = "VoiceNoteMessageContent";
  AudioPlayer? _player;

  Future<void> _loadGif() async {
    if (_player != null) {
      _player = null;
      if (mounted && context.mounted) setState(() {});
    }

    final note = widget.content.voiceNote;
    final td.File tdFile;
    try {
      tdFile = await CurrentAccount.providers.files.download(
        fileId: note.voice.id,
        priority: 5,
        synchronous: true,
      );
    } catch (e) {
      l.e(tag, "$e");
      return Future.delayed(const Duration(seconds: 2)).then((_) => _loadGif());
    }

    _player = AudioPlayer();
    _player!.setSourceDeviceFile(
      tdFile.local.path,
      mimeType: note.mimeType,
    );
    _player!.setVolume(1);
    _player!.setReleaseMode(ReleaseMode.stop);
    _player!.setPlayerMode(PlayerMode.mediaPlayer);
    _player!.setAudioContext(AudioContext(
      android: const AudioContextAndroid(
        stayAwake: true,
        audioFocus: AndroidAudioFocus.gainTransient,
        contentType: AndroidContentType.speech,
      ),
    ));

    if (mounted && context.mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadGif();
  }

  @override
  void didUpdateWidget(covariant VoiceNoteMessageContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.content.voiceNote != widget.content.voiceNote) {
      _loadGif();
    }
  }

  void _resume() async {
    await _player!.resume();
  }

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final activeColor = widget.isOutgoing
        ? ColorStyles.active.primary
        : ColorStyles.active.onPrimary;
    final bgColor = widget.isOutgoing
        ? ColorStyles.active.onPrimary
        : ColorStyles.active.primary;
    final textColor = widget.isOutgoing
        ? ColorStyles.active.surface
        : ColorStyles.active.onSurface;
    final greyColor = widget.isOutgoing
        ? ColorStyles.active.onSurfaceVariant
        : ColorStyles.active.secondary;

    return FlexibleConstraintsColumn(
      children: [
        Constrained(
          isTarget: true,
          child: Row(
            children: [
              Container(
                height: 30.7 * Scaling.factor,
                width: 30.7 * Scaling.factor,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: bgColor,
                ),
                child: Center(
                  child: _player == null
                      ? SizedBox.square(
                          dimension: 20 * Scaling.factor,
                          child: CircularProgressIndicator(
                            color: activeColor,
                            strokeWidth: 5 * Scaling.factor,
                          ),
                        )
                      : StreamBuilder(
                          stream: _player!.onPlayerStateChanged,
                          initialData: _player!.state,
                          builder: (context, snapshot) => IconButton(
                            color: activeColor,
                            padding: EdgeInsets.zero,
                            iconSize: 20 * Scaling.factor,
                            icon: snapshot.data == PlayerState.playing
                                ? const Icon(Icons.pause)
                                : const Icon(Icons.play_arrow),
                            onPressed: snapshot.data == PlayerState.playing
                                ? () => _player?.pause()
                                : _resume,
                          ),
                        ),
                ),
              ),
              SizedBox(width: Paddings.messageBubblesPadding),
              Expanded(
                child: SizedBox(
                  height: 28 * Scaling.factor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StreamBuilder(
                        stream: _player?.onPlayerStateChanged,
                        initialData: _player?.state,
                        builder: (context, state) => StreamBuilder(
                          initialData: widget.content.voiceNote.duration,
                          stream: _player?.onPositionChanged
                              .map((e) => e.inSeconds),
                          builder: (context, position) => (_player?.state !=
                                      PlayerState.playing &&
                                  (position.data ?? 0) < 1)
                              ? Text(
                                  widget.content.voiceNote.duration
                                      .shortDurationFromSeconds,
                                  style: TextStyles.active.titleLarge?.copyWith(
                                    color: textColor,
                                  ),
                                )
                              : RichText(
                                  text: TextSpan(
                                    text: position.data
                                            ?.toInt()
                                            .shortDurationFromSeconds ??
                                        "null",
                                    style:
                                        TextStyles.active.titleLarge?.copyWith(
                                      color: textColor,
                                    ),
                                    children: [
                                      TextSpan(
                                        text:
                                            " / ${widget.content.voiceNote.duration.shortDurationFromSeconds}",
                                        style: TextStyles.active.labelLarge
                                            ?.copyWith(
                                          color: greyColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                      DurationBar(
                        completedColor: bgColor,
                        progress: _player?.onPositionChanged.map(
                          (e) => min(
                            1,
                            max(
                              0,
                              e.inMilliseconds /
                                  (widget.content.voiceNote.duration * 1000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Constrained(
          constrainMinWidth: true,
          child: MessageCaptionWidget(
            widget.content.caption,
            attributesWidget: widget.attributesWidget,
            attributesPadding: Paddings.betweenSimilarElements,
            isOutgoing: widget.isOutgoing,
          ),
        ),
      ],
    );
  }
}
