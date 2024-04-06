import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';

class PageIndicator extends StatefulWidget {
  const PageIndicator({
    super.key,
    required this.currentPage,
    required this.pageCount,
    required this.child,
    this.alignToBottom = false,
  });

  final int currentPage;
  final int pageCount;
  final Widget child;
  final bool alignToBottom;

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator>
    with SingleTickerProviderStateMixin {
  late int prevCurPage = widget.currentPage;
  late final AnimationController _ac;

  @override
  void initState() {
    super.initState();
    _ac = AnimationController(
      vsync: this,
      value: 0,
    );
  }

  @override
  void dispose() {
    _ac.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final savedPrevCurPage = prevCurPage;
    if (prevCurPage != widget.currentPage) {
      prevCurPage = widget.currentPage;
      _ac.reset();
      _ac.animateTo(
        1,
        curve: Curves.fastEaseInToSlowEaseOut,
        duration: const Duration(milliseconds: 500),
      );
    }

    return AnimatedBuilder(
      animation: _ac,
      builder: (context, _) => CustomPaint(
        size: MediaQuery.of(context).size,
        foregroundPainter: _PageIndicatorPainter(
          prevCurrentPage: savedPrevCurPage,
          currentPage: widget.currentPage,
          pageCount: widget.pageCount,
          animationValue: _ac.value,
        ),
        child: widget.child,
      ),
    );
  }
}

class _PageIndicatorPainter extends CustomPainter {
  static const dotRadius = 4.0;
  static const padding = 15.0;
  static const paddingLinear = 10.0;

  late final Color unselectedColor = selectedColor.withOpacity(0.3);
  final Color selectedColor = ColorStyles.active.onSurface;

  final int pageCount;
  final int currentPage, prevCurrentPage;
  final double animationValue;

  _PageIndicatorPainter({
    required this.pageCount,
    required this.currentPage,
    required this.prevCurrentPage,
    required this.animationValue,
  });

  bool _checkIsActive(int i, int page) {
    bool isActive = false;
    if (pageCount > 6) {
      if (i == 4 && page > 4 && page < pageCount - 1) {
        isActive = true;
      } else if (page <= 4) {
        isActive = page == i;
      } else if (page == pageCount - 1 && i == 5) {
        isActive = true;
      }
    } else {
      isActive = page == i;
    }
    return isActive;
  }

  double _getRadius(int i, int page) {
    double radius = dotRadius;
    if (pageCount > 6) {
      if (i == 0 && page > 1) {
        radius *= 0.7;
      } else if (i == 5 && page < pageCount - 2) {
        radius *= 0.7;
      }
    }
    return radius;
  }

  Color _getColor(int i, int page) {
    return _checkIsActive(i, page) ? selectedColor : unselectedColor;
  }

  bool _checkIsStuck(int i) =>
      i == 4 &&
      pageCount > 6 &&
      currentPage >= 4 &&
      prevCurrentPage >= 4 &&
      currentPage < pageCount - 1 &&
      prevCurrentPage < pageCount - 1;

  ({Color color, double radius}) _getDotStyle(int i) {
    double radius = _getRadius(i, currentPage);
    Color color = _getColor(i, currentPage);
    double prevRadius = _getRadius(i, prevCurrentPage);
    Color prevColor = _getColor(i, prevCurrentPage);

    // we're stuck at the same dot here.
    // make it blink between page switches for better UX
    if (_checkIsStuck(i)) {
      if (animationValue < 0.5) {
        color = unselectedColor;
        radius = radius * 0.6;
      } else {
        prevColor = unselectedColor;
        prevRadius = radius * 0.6;
      }
    }

    return (
      color: color =
          ColorTween(begin: prevColor, end: color).transform(animationValue)!,
      radius: Tween<double>(begin: prevRadius, end: radius)
          .transform(animationValue),
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = selectedColor
      ..style = PaintingStyle.fill;
    final isRound = Settings().get(SettingsEntries.isRoundScreen);
    final mPageCount = math.min(pageCount, 6);

    if (isRound) {
      final distance = (size.width - padding * 2) / 2;
      final sizeWithPadding = distance + padding;
      final halfDotAngle = dotRadius / distance;
      final startingPoint =
          -math.pi / 2 - (halfDotAngle * 3 * (mPageCount - 1)) / 2;

      for (int i = 0; i < mPageCount; i++) {
        final angle = startingPoint + (i * halfDotAngle * 3);
        final offset = Offset(sizeWithPadding, sizeWithPadding) +
            Offset.fromDirection(angle, distance);
        final style = _getDotStyle(i);

        canvas.drawCircle(
          offset,
          style.radius,
          paint..color = style.color,
        );
      }
    } else {
      const dotH = paddingLinear + dotRadius;
      final dotStartW = size.width / 2 - (mPageCount * dotRadius * 3) / 2;
      for (int i = 0; i < mPageCount; i++) {
        final offset = Offset(
          dotStartW + dotRadius + (i * dotRadius * 3),
          dotH,
        );
        final style = _getDotStyle(i);

        canvas.drawCircle(
          offset,
          style.radius,
          paint..color = style.color,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant _PageIndicatorPainter oldDelegate) =>
      pageCount != oldDelegate.pageCount ||
      currentPage != oldDelegate.currentPage ||
      animationValue != oldDelegate.animationValue;
}
