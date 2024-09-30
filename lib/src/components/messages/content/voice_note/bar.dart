import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/scaling.dart';

class DurationBar extends StatelessWidget {
  const DurationBar({
    super.key,
    required this.completedColor,
    this.initialProgress = 0,
    this.progress,
    this.incompleteColor,
  });

  final Color completedColor;

  /// If null - 40% [completedColor] would be used
  final Color? incompleteColor;

  final double initialProgress;
  final Stream<double>? progress;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      initialData: initialProgress,
      stream: progress,
      builder: (context, snapshot) => CustomPaint(
        size: Size(
          double.infinity,
          3 * Scaling.factor,
        ),
        painter: _DurationBarPainter(
          snapshot.data ?? initialProgress,
          completedColor,
          incompleteColor,
        ),
      ),
    );
  }
}

class _DurationBarPainter extends CustomPainter {
  final double progress;
  final Color completedColor;
  final Color? incompleteColor;

  const _DurationBarPainter(
    this.progress,
    this.completedColor,
    this.incompleteColor,
  );

  @override
  void paint(Canvas canvas, Size size) {
    assert(progress >= 0 && progress <= 1);

    final incompleteColor =
        this.incompleteColor ?? completedColor.withOpacity(0.4);
    final paint = Paint()
      ..color = incompleteColor
      ..strokeWidth = size.height
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width - 1, size.height / 2),
      paint,
    );

    paint.color = completedColor;
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset((size.width - 1) * progress, size.height / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(_DurationBarPainter oldDelegate) {
    if (progress != oldDelegate.progress) return true;
    if (completedColor != oldDelegate.completedColor) return true;
    if (incompleteColor != oldDelegate.incompleteColor) return true;
    return false;
  }

  @override
  bool shouldRebuildSemantics(_DurationBarPainter oldDelegate) => false;
}
