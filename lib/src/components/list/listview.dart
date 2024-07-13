/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handygram/src/components/list/scrollbar.dart';
import 'package:handygram/src/components/list/scrollwrapper.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

/// Disables wrapping child into Center
class HandyListViewNoWrap extends StatelessWidget {
  const HandyListViewNoWrap({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return child;
  }
}

class HandyListView extends StatefulWidget {
  const HandyListView({
    super.key,
    required this.children,
    this.controller,
    this.bottomPadding = true,
    this.scrollAmount,
  });

  final List<Widget> children;
  final ScrollController? controller;
  final bool bottomPadding;
  final double? scrollAmount;

  @override
  State<HandyListView> createState() => _HandyListViewState();
}

class _HandyListViewState extends State<HandyListView> {
  late final ScrollController? _controller =
      widget.controller == null ? ScrollController() : null;

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scrollController = widget.controller ?? _controller!;

    return HandyScrollbar(
      controller: scrollController,
      child: HandyScrollWrapper(
        controller: scrollController,
        scrollAmount: widget.scrollAmount,
        child: ListView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          cacheExtent: MediaQuery.of(context).size.height * 2,
          children: [
            ...widget.children.map(
              (child) => child is HandyListViewNoWrap
                  ? child
                  : Center(
                      child: child,
                    ),
            ),
            SizedBox(
              height: widget.bottomPadding
                  ? Paddings.afterPage
                  : Paddings.afterPageEndingWithSmallButton,
            ),
          ],
        ),
      ),
    );
  }
}
