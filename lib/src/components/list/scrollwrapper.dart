/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/native/events.dart';
import 'package:vibration/vibration.dart';

class HandyScrollWrapper extends StatefulWidget {
  const HandyScrollWrapper({
    super.key,
    required this.child,
    required this.controller,
    this.scrollAmount,
  });

  final Widget child;
  final ScrollController controller;
  final double? scrollAmount;

  @override
  State<HandyScrollWrapper> createState() => _HandyScrollWrapperState();
}

class _HandyScrollWrapperState extends State<HandyScrollWrapper> {
  late final ScrollController _controller = widget.controller;
  late final StreamSubscription _sub;
  bool? hasVibrator;

  bool vibrating = false;
  Future<void> _vibrate() async {
    if (vibrating) return;

    hasVibrator ??= await Vibration.hasVibrator();
    if (!hasVibrator!) return;

    vibrating = true;
    await Vibration.vibrate(
      duration: 25,
      amplitude: 64,
    );
    vibrating = false;
  }

  bool vibrated = false;
  void _vibrationListener() async {
    if (_controller.offset <= _controller.position.minScrollExtent ||
        _controller.offset >= _controller.position.maxScrollExtent) {
      if (!vibrated) {
        vibrated = true;
        await _vibrate();
      }
    } else {
      vibrated = false;
    }
  }

  bool animating = false;
  void _onEvent(NativeEvent event) async {
    if (animating) return;
    if (event is! BezelNativeEvent) return;

    animating = true;

    final preRotVal = widget.scrollAmount ?? 60;
    final rotVal = event.rotationValue < 0 ? -preRotVal : preRotVal;
    final limitedRotVal = min(
      max(
        _controller.offset + rotVal,
        _controller.position.minScrollExtent,
      ),
      _controller.position.maxScrollExtent,
    );

    if (limitedRotVal > _controller.position.minScrollExtent &&
        limitedRotVal < _controller.position.maxScrollExtent) {
      _vibrate();
    }

    await _controller.animateTo(
      limitedRotVal,
      duration: const Duration(milliseconds: 100),
      curve: Curves.linear,
    );

    animating = false;
  }

  @override
  void initState() {
    super.initState();
    _sub = HandyNatives().events.listen(_onEvent);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _controller.addListener(_vibrationListener),
    );
  }

  @override
  void dispose() {
    _sub.cancel();
    _controller.removeListener(_vibrationListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
