import 'dart:async';

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/overlays/notice/data.dart';

export 'package:handygram/src/components/overlays/notice/data.dart';

class NoticeOverlay extends StatefulWidget {
  const NoticeOverlay({
    super.key,
    this.noticeUpdates,
    this.initialValue,
    required this.child,
  });

  final Widget child;
  final Stream<BaseNotice?>? noticeUpdates;
  final BaseNotice? initialValue;

  @override
  State<NoticeOverlay> createState() => _NoticeOverlayState();
}

class _NoticeOverlayState extends State<NoticeOverlay>
    with TickerProviderStateMixin {
  StreamSubscription? _sub;

  // While we have BaseNotice -> null switching case, notice widget still needs
  // to know the notice, so saving the last one is a workaround for that.
  BaseNotice? _lastNotice;
  late BaseNotice? _notice = widget.initialValue;

  late final AnimationController _pulseAnimation = AnimationController(
    vsync: this,
    value: 0.7,
  );

  Future<void> _pulse() async {
    if (!mounted) return;
    await _pulseAnimation.animateTo(
      1.0,
      curve: Easing.standardDecelerate,
      duration: const Duration(milliseconds: 800),
    );
    if (!mounted) return;
    await _pulseAnimation.animateTo(
      0.7,
      curve: Easing.standardAccelerate,
      duration: const Duration(milliseconds: 800),
    );
    return _pulse();
  }

  void _updateNotice(BaseNotice? notice) {
    if (!mounted) return;
    setState(() {
      _lastNotice = _notice;
      _notice = notice;
    });
  }

  @override
  void initState() {
    super.initState();
    _pulse();
    _sub = widget.noticeUpdates?.listen(_updateNotice);
  }

  @override
  void dispose() {
    _sub?.cancel();
    _pulseAnimation.dispose();
    super.dispose();
  }

  Widget _build(BuildContext context) {
    return IgnorePointer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Align(
          alignment: Alignment.bottomCenter,
          child: AnimatedSwitcher(
            key: const ValueKey<String>("notice_switcher"),
            duration: const Duration(milliseconds: 300),
            switchInCurve: Easing.standardAccelerate,
            switchOutCurve: Easing.standardAccelerate,
            child: _notice == null
                ? const SizedBox(
                    key: ValueKey<String>("notice_placeholder"),
                  )
                : Container(
                    key: const ValueKey<String>("notice_data"),
                    width: Scaling.screenSize.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [
                          0,
                          0.7,
                          1,
                        ],
                        colors: [
                          Colors.black,
                          Colors.black38,
                          Colors.transparent,
                        ],
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Paddings.messageBubblesPadding,
                      vertical: Paddings.afterPageEndingWithSmallButton,
                    ),
                    child: switch (_notice ?? _lastNotice!) {
                      StringNotice(
                        text: final text,
                        color: final color,
                        size: final size,
                      ) =>
                        AnimatedBuilder(
                          key: const ValueKey<String>("notice_data_stringab"),
                          animation: _pulseAnimation,
                          builder: (context, _) => Text(
                            text,
                            textAlign: TextAlign.center,
                            style: TextStyles.active.titleMedium?.copyWith(
                              color: color ??
                                  Color.alphaBlend(
                                    Colors.white
                                        .withOpacity(_pulseAnimation.value),
                                    Colors.black,
                                  ),
                              fontSize: size,
                            ),
                          ),
                        ),
                      WidgetNotice(widget: final widget) => widget,
                    },
                  ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        _build(context),
      ],
    );
  }
}
