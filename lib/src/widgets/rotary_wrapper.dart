import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:rotary_scrollbar/widgets/round_scrollbar.dart';
import 'package:wearable_rotary/wearable_rotary.dart';
import 'package:vibration/vibration.dart';

// Based on RotaryScrollbar plugin. Reworked for square screens support
class HandyRotaryScrollWrapper extends StatefulWidget {
  const HandyRotaryScrollWrapper({
    super.key,
    required this.controller,
    required this.child,
  });

  final ScrollController controller;
  final Widget child;

  @override
  State<StatefulWidget> createState() => _HandyRotaryScrollWrapperState();
}

class _HandyRotaryScrollWrapperState extends State<HandyRotaryScrollWrapper> {
  StreamSubscription<RotaryEvent>? _rotarySub;

  @override
  void dispose() {
    _rotarySub?.cancel();
    super.dispose();
  }

  bool working = false;
  bool vibrating = false;
  bool? hasVibrator;

  Future<void> _vibrate() async {
    if (vibrating) return;
    vibrating = true;
    hasVibrator ??= await Vibration.hasVibrator();
    if (hasVibrator ?? false) {
      await Vibration.vibrate(
        duration: 25,
        amplitude: (await Vibration.hasAmplitudeControl() ?? false) ? 64 : -1,
      );
      await Future.delayed(const Duration(milliseconds: 500));
    }
    vibrating = false;
  }

  @override
  void initState() {
    super.initState();
    if (session.isWearable) {
      _rotarySub = rotaryEvents.listen((event) async {
        if (working) return;
        double offset = widget.controller.offset;
        double value = max(event.magnitude ?? 25, 25);
        working = true;

        if (event.direction == RotaryDirection.clockwise) {
          offset += value;
        } else {
          offset -= value;
        }

        offset = min(
          max(
            offset,
            widget.controller.position.minScrollExtent,
          ),
          widget.controller.position.maxScrollExtent,
        );

        await widget.controller.animateTo(
          offset,
          curve: Curves.linear,
          duration: const Duration(milliseconds: 50),
        );
        _vibrate();
        working = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (session.isSquareScreen) {
      return Scrollbar(
        controller: widget.controller,
        thickness: 4,
        radius: const Radius.circular(4),
        scrollbarOrientation: ScrollbarOrientation.right,
        child: widget.child,
      );
    }
    return Stack(
      children: [
        widget.child,
        IgnorePointer(
          child: RoundScrollbar(
            controller: widget.controller,
            opacityAnimationCurve: Curves.easeInOut,
            opacityAnimationDuration: const Duration(milliseconds: 250),
            autoHideDuration: const Duration(seconds: 1),
            width: 3,
          ),
        ),
      ],
    );
  }
}
