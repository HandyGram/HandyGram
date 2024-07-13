/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:handygram/src/common/log/entry.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/native/events.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';

class HandyNatives {
  static const String tag = "HandyNatives";

  final MethodChannel _channel =
      const MethodChannel("ru.tdrk.handygram/natives");
  final StreamController<NativeEvent> _controller =
      StreamController<NativeEvent>.broadcast();
  late final Stream<NativeEvent> events = _controller.stream;

  void _onBezelCall(MethodCall call) {
    _controller.add(BezelNativeEvent(call.arguments));
  }

  Future<dynamic> _onCall(MethodCall call) async {
    switch (call.method) {
      case "bezelWasRotated":
        _onBezelCall(call);
        break;
    }
  }

  bool _ready = false;
  bool get ready => _ready;

  late final bool _isWearOS;
  late final bool _isRoundWatchShape;
  late final String _wearOSVersion;
  late final String _appVersion;
  late final (String, String) _gitInfo;

  bool get isRound => _isRoundWatchShape;
  bool get isSquare => !_isRoundWatchShape;
  bool get isWearOS => _isWearOS;
  String? get wearOSVersion => _wearOSVersion;
  String get appVersion => _appVersion;
  (String, String) get gitInfo => _gitInfo;

  Future<bool> get isRoamingEnabled {
    return _channel
        .invokeMethod<bool>("isRoamingEnabled")
        .then((val) => val ?? false);
  }

  /// Log to logcat.
  void log(LogEntry entry) {
    _channel.invokeMethod("log", [
      "HG_${entry.tag}",
      entry.message,
      entry.level.level,
    ]);
  }

  Future<void> _getGitInfo() async {
    try {
      final head = await rootBundle.loadString(
        '.git/HEAD',
        cache: false,
      );
      if (head.startsWith("ref:")) {
        final branch = head.split('/').last.trim();
        final commitId = await rootBundle.loadString(
          '.git/refs/heads/$branch',
          cache: false,
        );
        _gitInfo = (branch, commitId);
      } else {
        l.w(tag, "Running unofficial build with detached git HEAD!");
        _gitInfo = ("detached", head);
      }
    } catch (e) {
      l.e(tag, "Failed to get git info: $e");
      _gitInfo = ("unknown", "git-error");
    }

    l.d(tag, "Source info: ${_gitInfo.$1}@${_gitInfo.$2}");
  }

  Future<void> init() async {
    if (_ready) return;
    try {
      await _channel.invokeMethod("isWearOS");
    } on MissingPluginException {
      l.e(tag, "Method channel is inaccessible");
      _appVersion = "Unknown";
      _isWearOS = false;
      _wearOSVersion = "Unknown";
      _isRoundWatchShape =
          Settings().get(SettingsEntries.isRoundScreen) ?? true;
      _gitInfo = ("unknown", "no-data");
      return;
    }

    _channel.setMethodCallHandler((call) => _onCall(call));
    _appVersion = await _channel.invokeMethod("appVersion") ?? "0";
    _isWearOS = await _channel.invokeMethod("isWearOS");
    if (_isWearOS) {
      _wearOSVersion =
          await _channel.invokeMethod("wearOSVersion") ?? "unknown";
      _isRoundWatchShape = await _channel.invokeMethod("isRoundWatch") ?? true;
    } else {
      _wearOSVersion = "ANDROID";
      _isRoundWatchShape =
          Settings().get(SettingsEntries.isRoundScreen) ?? true;
    }

    await _getGitInfo();

    if (Settings().get(SettingsEntries.isRoundScreen) == null) {
      Settings().put(SettingsEntries.isRoundScreen, _isRoundWatchShape);
    }

    _ready = true;
  }

  HandyNatives._();

  static final HandyNatives _instance = HandyNatives._();

  factory HandyNatives() {
    return _instance;
  }
}
