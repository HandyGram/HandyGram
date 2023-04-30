// A replacement for CircularProgressIndicator in Telegram style

import 'package:flutter/material.dart';

class LoadingContainer extends StatefulWidget {
  const LoadingContainer({
    super.key,
    this.circular = false,
  });

  final bool circular;

  @override
  State<LoadingContainer> createState() => _LoadingContainerState();
}

class _LoadingContainerState extends State<LoadingContainer>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  )
    ..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        if (_controller.value > 0) {
          _controller.animateTo(
            0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOutSine,
          );
        } else {
          _controller.animateTo(
            0.5,
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOutSine,
          );
        }
      }
    })
    ..animateTo(widget.circular ? 0.75 : 0.5);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Container(
          decoration: BoxDecoration(
            shape: widget.circular ? BoxShape.circle : BoxShape.rectangle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(_controller.value),
                Colors.white.withOpacity(
                    (widget.circular ? 0.5 : 0.75) - _controller.value),
              ],
            ),
            borderRadius: widget.circular ? null : BorderRadius.circular(10),
          ),
          child: const SizedBox.expand(),
        );
      },
    );
  }
}
