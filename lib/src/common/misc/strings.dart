/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handygram/src/common/misc/localizations.dart';

String squashName(String firstName, [String? lastName]) =>
    "$firstName${(lastName?.isEmpty == false) ? " $lastName" : ""}";

extension StringDuration on int {
  String get durationFromSeconds {
    final seconds = this % 60;
    final minutes = this ~/ 60 % 60;
    final hours = this ~/ 3600;
    return (hours > 0 ? "$hours:" : "") +
        (minutes > 0 ? "$minutes:" : "") +
        (minutes == 0 && hours == 0
            ? "$seconds ${AppLocalizations.current.secondsCountPlural(seconds)}"
            : "$seconds");
  }
}
