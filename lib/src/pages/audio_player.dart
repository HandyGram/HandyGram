// ignore_for_file: use_build_context_synchronously

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/telegram/loadfile.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

// TODO: fix external album covers
String _printDur(Duration dur) {
  return dur.inHours == 0
      ? "${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}"
      : "${(dur.inHours % 60).toString().padLeft(2, '0')}:${(dur.inMinutes % 60).toString().padLeft(2, '0')}:${(dur.inSeconds % 60).toString().padLeft(2, '0')}";
}

class AudioPlayerPage extends StatefulWidget {
  const AudioPlayerPage({
    super.key,
    required this.audio,
  });

  final tdlib.Audio audio;

  @override
  State<AudioPlayerPage> createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  AudioPlayer player = AudioPlayer(playerId: "fullscreen-handygram-audio");
  double dwProgress = 0;
  double scaleFactor = 1;
  bool isHorizontal = false;
  Size? size;
  bool ready = false, readyThumb = false;
  bool error = false;
  Duration positionMs = Duration.zero, durMs = Duration.zero;

  @override
  void initState() {
    super.initState();
    player.onPlayerStateChanged.listen((_) => setState(() {}));
    player.onPositionChanged.listen(
      (d) => setState(() => positionMs = d),
    );
    player.onSeekComplete.listen((_) => setState(() {}));
    player.onPlayerComplete.listen((_) => setState(() {}));
    player.onDurationChanged.listen(
      (d) => setState(() => durMs = d),
    );
  }

  String? _lastPath;
  Future<String?> _loadAudio(String id) async {
    if (ready) return _lastPath;

    File? f = await loadTgFile(
      id,
      priority: 32,
      notifier: (done, total) {
        setState(() {
          if (total > 0 && done > 0) {
            dwProgress = done / total;
          }
        });
      },
    );
    if (f == null) {
      error = true;
      return null;
    }
    try {
      await player.setSourceDeviceFile(f.path);
      await player.play(
        player.source ?? DeviceFileSource(f.path),
        volume: 1,
        mode: PlayerMode.mediaPlayer,
        ctx: const AudioContext(
          android: AudioContextAndroid(
            audioMode: AndroidAudioMode.normal,
            contentType: AndroidContentType.music,
          ),
        ),
      );
    } catch (e, st) {
      l.e("AudioPlayer", "$e\n$st");
      error = true;
      return null;
    }
    ready = true;
    _lastPath = f.path;
    return f.path;
  }

  Widget? _lastThumb;
  Future<Widget?> _loadAlbumThumbnail(List<tdlib.Thumbnail> thumbs) async {
    if (readyThumb) return _lastThumb;

    for (var thumb in thumbs) {
      File? f = await loadTgFile(
        thumb.file.remote.id,
        priority: 32,
        download: true,
      );
      if (f == null) {
        l.e(
          "ThumbLdrAudio",
          "Couldn't load thumbnail ${thumb.toJson()}, TDLib returned null",
        );
        continue;
      }
      readyThumb = true;
      _lastThumb = Image.file(
        f,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      );
      return _lastThumb;
    }

    _lastThumb = Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Icon(
          Icons.album,
          size: MediaQuery.of(context).size.width / 2,
          color: Colors.grey,
        ),
      ),
    );
    return _lastThumb;
  }

  Future<void> _switchMode() async {
    if (player.state == PlayerState.playing) {
      await player.pause();
    } else {
      await player.resume();
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: error
                        ? const Icon(Icons.error)
                        : CircularProgressIndicator(
                            value: dwProgress,
                          ),
                  ),
                  Text(
                    error ? "Error" : "Loading audio...",
                    style: TextStyle(
                      fontSize: scaleText(12),
                    ),
                  ),
                ],
              ),
            );
          }

          return Center(
            child: Stack(
              children: [
                SizedBox.expand(
                  child: FutureBuilder(
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return Container(
                          color: Colors.black12,
                        );
                      }

                      return Stack(
                        children: [
                          snapshot.data!,
                          SizedBox.expand(
                            child: Container(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      );
                    },
                    future: _loadAlbumThumbnail([
                      if (widget.audio.albumCoverThumbnail != null)
                        widget.audio.albumCoverThumbnail!,
                      ...widget.audio.externalAlbumCovers,
                    ]),
                  ),
                ),
                SizedBox.expand(
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              if (widget.audio.performer.isNotEmpty)
                                Text(
                                  widget.audio.performer,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: scaleText(9),
                                  ),
                                ),
                              Text(
                                widget.audio.title.isEmpty
                                    ? widget.audio.fileName
                                    : widget.audio.title,
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: scaleText(12),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Slider(
                                onChanged: (v) {
                                  player.seek(Duration(
                                    seconds: (durMs.inSeconds * v).round(),
                                  ));
                                },
                                value: positionMs.inSeconds / durMs.inSeconds,
                              ),
                              Text(
                                "${_printDur(positionMs)} / ${_printDur(durMs)}",
                                style: TextStyle(
                                  fontSize: scaleText(12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox.expand(
                  child: Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: player.state == PlayerState.playing
                              ? const Icon(Icons.pause)
                              : const Icon(Icons.play_arrow),
                          onPressed: () => _switchMode(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        future: session.natives
            .requestFastNetwork()
            .then((_) => _loadAudio(widget.audio.audio.remote.id)),
      ),
    );
  }
}
