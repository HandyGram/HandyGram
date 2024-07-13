/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

const bool kLoweredImportanceLevel = true;

enum LogEntryLevel {
  debug,
  info,
  warn,
  error,
}

extension LogEntryLevelInfo on LogEntryLevel {
  String get display => switch (this) {
        LogEntryLevel.debug => "D",
        LogEntryLevel.info => "I",
        LogEntryLevel.warn => "W",
        LogEntryLevel.error => "E",
      };
  bool get important => switch (this) {
        LogEntryLevel.error => true,
        LogEntryLevel.warn => kLoweredImportanceLevel,
        _ => false,
      };

  // https://developer.android.com/reference/android/util/Log#constants_1
  int get level => switch (this) {
        LogEntryLevel.debug => 3,
        LogEntryLevel.info => 4,
        LogEntryLevel.warn => 5,
        LogEntryLevel.error => 6,
      };
}

class LogEntry {
  final LogEntryLevel level;
  final String tag;
  final String message;
  final DateTime time;

  @override
  String toString() => "$time [${level.display} $tag: $message";

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
