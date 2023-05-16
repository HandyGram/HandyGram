import 'package:handygram/src/misc/settings_db.dart';
import 'dart:developer';

enum LogEntryLevel {
  debug,
  info,
  warn,
  error,
}

Map<String, LogEntryLevel> _assocs = {
  "D": LogEntryLevel.debug,
  "I": LogEntryLevel.info,
  "W": LogEntryLevel.warn,
  "E": LogEntryLevel.error,
};

Map<LogEntryLevel, String> _revAssocs = _assocs.map<LogEntryLevel, String>(
  (key, value) => MapEntry(value, key),
);

class LogEntry {
  final LogEntryLevel level;
  final String tag;
  final String message;
  final DateTime time;

  @override
  String toString() => "$time [${_revAssocs[level]}] $tag: $message";

  Map<String, dynamic> toJson() => {
        "level": level.name,
        "tag": tag,
        "message": message,
        "time": time.millisecondsSinceEpoch,
      };

  const LogEntry({
    required this.level,
    required this.tag,
    required this.message,
    required this.time,
  });
}

class Log {
  final List<LogEntry> _entries = [];

  void _show(LogEntry entry) {
    if (!settingsStorage.debug) return;
    if (!settingsStorage.verbose && entry.level == LogEntryLevel.debug) return;
    _entries.add(entry);
    log(
      "[${_revAssocs[entry.level]}] ${entry.message}",
      time: entry.time,
      name: entry.tag,
    );

    // ignore: avoid_print
    //print("[${_revAssocs[entry.level]}] [${entry.tag}] ${entry.message}");
  }

  LogEntry _gen(LogEntryLevel level, String tag, String message) {
    var e = LogEntry(
      level: level,
      tag: tag,
      message: message,
      time: DateTime.now(),
    );
    _show(e);
    return e;
  }

  void e(String tag, String message) => _gen(LogEntryLevel.error, tag, message);
  void w(String tag, String message) => _gen(LogEntryLevel.warn, tag, message);
  void i(String tag, String message) => _gen(LogEntryLevel.info, tag, message);
  void d(String tag, String message) => _gen(LogEntryLevel.debug, tag, message);
}

Log l = Log();
