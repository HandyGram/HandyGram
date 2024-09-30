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
    final minutesPadded = "$minutes".padLeft(2, '0');
    final hoursPadded = "$hours".padLeft(2, '0');
    final secondsPadded = "$seconds".padLeft(2, '0');
    return (hours > 0 ? "$hoursPadded:" : "") +
        (minutes > 0 ? "$minutesPadded:" : "") +
        (minutes == 0 && hours == 0
            ? "$seconds ${AppLocalizations.current.secondsCountPlural(seconds)}"
            : secondsPadded);
  }

  String get shortDurationFromSeconds {
    final seconds = this % 60;
    final minutes = this ~/ 60 % 60;
    final hours = this ~/ 3600;
    final minutesPadded = "$minutes".padLeft(2, '0');
    final hoursPadded = "$hours".padLeft(2, '0');
    final secondsPadded = "$seconds".padLeft(2, '0');
    return "${this ~/ 3600 > 0 ? "$hoursPadded:" : ""}$minutesPadded:$secondsPadded";
  }
}
