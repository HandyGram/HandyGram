import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:handygram/src/common/log/log.dart';

enum RecorderState {
  ready,
  recording,
  paused,
  stopped,
}

class OpusOggRecorder {
  OpusOggRecorder._(this.file);

  static const tag = "OpusOggRecorder";

  static const MethodChannel _channel =
      MethodChannel("ru.tdrk.handygram/natives");

  static Future<OpusOggRecorder?> create(File file) async {
    final permissionGranted =
        await _channel.invokeMethod<bool>("prepareRecording") ?? false;
    if (!permissionGranted) {
      l.e(tag, "No permission to record audio was given");
      return null;
    }

    return OpusOggRecorder._(file);
  }

  final File file;
  RecorderState get state => _state;
  Duration get duration => switch (state) {
        RecorderState.recording =>
          _savedDuration + DateTime.now().difference(_lastResumeDate!),
        RecorderState.stopped || RecorderState.paused => _savedDuration,
        RecorderState.ready => Duration.zero,
      };
  Stream<Duration> get durationStream => _durationController.stream;
  Stream<RecorderState> get stateStream => _stateController.stream;

  RecorderState _state = RecorderState.ready;
  Duration _savedDuration = Duration.zero;
  DateTime? _lastResumeDate;
  final StreamController<Duration> _durationController =
      StreamController.broadcast();
  final StreamController<RecorderState> _stateController = StreamController();
  Timer? _durationUpdater;

  void _durationUpdate() {
    _durationController.add(duration);
  }

  void _stateUpdate(RecorderState state) {
    _state = state;
    _stateController.add(state);
  }

  void _saveDuration() {
    _savedDuration = duration;
    _durationUpdater?.cancel();
    _durationUpdater = null;
  }

  Future<void> startRecording() async {
    assert(state == RecorderState.ready || state == RecorderState.paused);

    await _channel.invokeMethod("startRecording", {
      "output_file": file.path,
      "resume": state == RecorderState.paused,
    });

    _lastResumeDate = DateTime.now();
    _durationUpdater = Timer.periodic(
      const Duration(milliseconds: 500),
      (_) => _durationUpdate(),
    );

    _stateUpdate(RecorderState.recording);
  }

  Future<void> stopRecording() async {
    assert(state == RecorderState.recording || state == RecorderState.paused);

    await _channel.invokeMethod("stopRecording");
    _saveDuration();
    _stateUpdate(RecorderState.stopped);
  }

  Future<void> pauseRecording() async {
    assert(state == RecorderState.recording);

    await _channel.invokeMethod("pauseRecording");
    _saveDuration();
    _stateUpdate(RecorderState.paused);
    _durationUpdate();
  }

  Future<void> dispose() async {
    if (state != RecorderState.stopped && state != RecorderState.ready) {
      await stopRecording();
    }

    _durationController.close();
    _stateController.close();
  }
}
