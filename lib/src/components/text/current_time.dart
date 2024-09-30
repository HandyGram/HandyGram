/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:curved_text/curved_text.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:intl/intl.dart' as intl;

class _CurrentTimeNotifier with ChangeNotifier {
  DateTime time = DateTime.now();

  void _updateTime() async {
    await Future.delayed(time.difference(DateTime(
      time.year,
      time.month,
      time.day,
      time.hour,
      time.minute + 1,
    )));
    time = DateTime.now();
    notifyListeners();
    return _updateTime();
  }

  _CurrentTimeNotifier._() {
    _updateTime();
  }

  static _CurrentTimeNotifier instance = _CurrentTimeNotifier._();
}

class CurrentTime extends StatelessWidget {
  static double kPadding = 20 * Scaling.factor;

  const CurrentTime({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final style =
        TextStyles.active.titleSmall!.copyWith(fontWeight: FontWeight.w400);
    final isRound = Settings().get(SettingsEntries.isRoundScreen) ?? false;
    final size = MediaQuery.of(context).size;
    final radius = (size.width / 2 - kPadding);
    return Stack(
      children: [
        child,
        Align(
          alignment: Alignment.topCenter.add(
            Alignment(
              0,
              (style.fontSize! + (isRound ? kPadding + style.fontSize! : 0)) /
                  size.height /
                  2,
            ),
          ),
          child: AnimatedBuilder(
            animation: _CurrentTimeNotifier.instance,
            builder: (context, _) {
              final text = intl.DateFormat.jm()
                  .format(_CurrentTimeNotifier.instance.time)
                  .split(' ') // Remove AM/PM marker, it looks goofy here
                  .first;
              if (isRound) {
                return CurvedText(
                  curvature: 1 / radius,
                  text: text,
                  targetRadius: 0,
                  textStyle: style,
                );
              } else {
                return Text(
                  text,
                  style: style,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
