import "package:flutter/foundation.dart";
import 'package:flutter/services.dart';
import 'package:handygram/src/common/log/entry.dart';
import 'package:handygram/src/common/native/channel.dart';

class Log {
  final List<LogEntry> _entries = [];
  bool isDebug = kDebugMode;

  void _save(LogEntry entry) {
    _entries.add(entry);
    if (_entries.length > 100) {
      _entries.removeAt(0);
    }
  }

  void _print(LogEntry entry) =>
      // ignore: avoid_print
      print("[${entry.level.display}] [${entry.tag}] ${entry.message}");

  void _show(LogEntry entry, bool isolated) {
    if (!isDebug && !entry.level.important) return;
    _save(entry);
    if (isolated || !HandyNatives().ready) return _print(entry);
    try {
      HandyNatives().log(entry);
    } on MissingPluginException {
      _print(entry);
    }
  }

  LogEntry _gen(
      LogEntryLevel level, String tag, String message, bool isolated) {
    var e = LogEntry(
      level: level,
      tag: tag,
      message: message,
      time: DateTime.now(),
    );
    _show(e, isolated);
    return e;
  }

  void e(String tag, String message, [bool isolated = false]) =>
      _gen(LogEntryLevel.error, tag, message, isolated);
  void w(String tag, String message, [bool isolated = false]) =>
      _gen(LogEntryLevel.warn, tag, message, isolated);
  void i(String tag, String message, [bool isolated = false]) =>
      _gen(LogEntryLevel.info, tag, message, isolated);
  void d(String tag, String message, [bool isolated = false]) =>
      _gen(LogEntryLevel.debug, tag, message, isolated);
}

Log l = Log();
