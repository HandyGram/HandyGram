/*
 * Copyright (C) Gil Nobrega, 2022
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * 
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See BSD 3-Clause License for more details.
 * Original repository: https://github.com/hyperfluid-tech/rotary_scrollbar
 */

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';

const _kProgressBarStartingPoint = -math.pi / 12;
const _kProgressBarLength = math.pi / 6;

class HandyScrollbar extends StatelessWidget {
  const HandyScrollbar({
    super.key,
    required this.controller,
    required this.child,
  });

  final ScrollController controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    if (Settings().get(SettingsEntries.isRoundScreen)) {
      return _HandyScrollbar(
        controller: controller,
        child: child,
      );
    } else {
      return Scrollbar(
        thickness: 5 * Scaling.factor,
        radius: Radius.circular(2.5 * Scaling.factor),
        interactive: false,
        scrollbarOrientation: ScrollbarOrientation.right,
        controller: controller,
        child: child,
      );
    }
  }
}

class _HandyScrollbar extends StatefulWidget {
  const _HandyScrollbar({
    required this.controller,
    required this.child,
  });

  final ScrollController controller;
  final Widget child;

  @override
  State<_HandyScrollbar> createState() => _HandyScrollbarState();
}

class _HandyScrollbarState extends State<_HandyScrollbar> {
  double? fraction, index;
  bool _isScrollBarVisible = true;

  void _updateScrollValues() {
    fraction = 1 /
        ((widget.controller.position.maxScrollExtent /
                widget.controller.position.viewportDimension) +
            1);
    final scrollVal = math.max(
      math.min(
        widget.controller.offset,
        widget.controller.position.maxScrollExtent,
      ),
      widget.controller.position.minScrollExtent,
    );
    index = (scrollVal / widget.controller.position.viewportDimension);
  }

  int _currentHideUpdate = 0;
  void _onScroll() {
    if (!mounted) return;
    if (!widget.controller.hasClients) return;

    setState(() {
      _isScrollBarVisible = true;
      _updateScrollValues();
    });

    _currentHideUpdate++;
    final thisUpdate = _currentHideUpdate;
    Future.delayed(
      const Duration(seconds: 1),
      () {
        if (!mounted) return;
        if (thisUpdate != _currentHideUpdate) return;
        setState(() => _isScrollBarVisible = false);
      },
    );
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateScrollValues());
  }

  @override
  Widget build(BuildContext context) {
    if (fraction == null || index == null) return widget.child;

    return Stack(children: [
      widget.child,
      IgnorePointer(
        child: SizedBox.expand(
          child: Align(
            alignment: Alignment.centerRight,
            child: AnimatedOpacity(
              opacity: _isScrollBarVisible ? 1 : 0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.fastEaseInToSlowEaseOut,
              child: Stack(
                children: [
                  const _HandyScrollbarTrack(),
                  _HandyScrollbarThumb(
                    fraction: fraction!,
                    index: index!,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

class _HandyScrollbarTrack extends StatelessWidget {
  const _HandyScrollbarTrack();

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: MediaQuery.of(context).size,
      painter: _HandyScrollbarPainter(
        angleLength: _kProgressBarLength,
        color: ColorStyles.active.onSurface.withOpacity(0.3),
      ),
    );
  }
}

class _HandyScrollbarThumb extends StatelessWidget {
  final double fraction;
  final double index;

  const _HandyScrollbarThumb({
    required this.fraction,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final angleLength = _kProgressBarLength * fraction;
    return Transform.rotate(
      angle: index * angleLength,
      child: CustomPaint(
        size: MediaQuery.of(context).size,
        painter: _HandyScrollbarPainter(
          angleLength: angleLength,
          color: ColorStyles.active.onSurface,
        ),
      ),
    );
  }
}

class _HandyScrollbarPainter extends CustomPainter {
  final double angleLength;
  final Color color;

  _HandyScrollbarPainter({
    required this.angleLength,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const double trackPadding = 5;
    const double trackWidth = 5;

    final paint = Paint()
      ..color = color
      ..strokeWidth = trackWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final centerOffset = Offset(
      size.width / 2,
      size.height / 2,
    );

    final innerWidth = size.width - trackPadding * 2 - trackWidth;
    final innerHeight = size.height - trackPadding * 2 - trackWidth;

    final path = Path()
      ..arcTo(
        Rect.fromCenter(
          center: centerOffset,
          width: innerWidth,
          height: innerHeight,
        ),
        _kProgressBarStartingPoint,
        angleLength,
        true,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _HandyScrollbarPainter oldDelegate) =>
      color != oldDelegate.color || angleLength != oldDelegate.angleLength;
}
