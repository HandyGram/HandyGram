import 'package:flutter/material.dart';
import 'package:handygram/src/widgets/message_tiles/base.dart';

class ScaledAspectRatio extends StatelessWidget {
  const ScaledAspectRatio({
    super.key,
    required this.height,
    required this.width,
    required this.scaleFactor,
    required this.child,
  });

  final num height;
  final num width;

  /// How much do we need to shrink the content according to the screen size.
  final num scaleFactor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size downscaled = downscaleProperly(
      Size(
        width.toDouble(),
        height.toDouble(),
      ),
      MediaQuery.of(context).size,
      scaleFactor.toDouble(),
    );
    return SizedBox(
      width: downscaled.width,
      child: AspectRatio(
        aspectRatio: width / height,
        child: child,
      ),
    );
  }
}
