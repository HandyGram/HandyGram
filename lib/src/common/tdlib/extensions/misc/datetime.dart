extension DateTimeStuff on DateTime {
  String get hhmm =>
      "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
  String get hhmmss => "$hhmm:${second.toString().padLeft(2, '0')}";
}
