import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:rotary_scrollbar/rotary_scrollbar.dart';

class ScalingList extends StatefulWidget {
  const ScalingList({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  State<StatefulWidget> createState() => _ScalingListState();
}

class _ScalingListState extends State<ScalingList> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (session.isSquareScreen) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: StretchingOverscrollIndicator(
          axisDirection: scrollController.positions.isEmpty
              ? AxisDirection.down
              : scrollController.position.axisDirection,
          child: ListView(
            controller: scrollController,
            padding: EdgeInsets.all(session.isSquareScreen ? 0 : 20),
            // Center everything
            children: widget.children.map((e) => Center(child: e)).toList(),
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10),
      child: RotaryScrollWrapper(
        rotaryScrollbar: RotaryScrollbar(
          controller: scrollController,
          width: 4,
          autoHideDuration: const Duration(seconds: 1),
        ),
        child: StretchingOverscrollIndicator(
          axisDirection: scrollController.positions.isEmpty
              ? AxisDirection.down
              : scrollController.position.axisDirection,
          child: ListView(
            controller: scrollController,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).size.width / 2,
              top: MediaQuery.of(context).size.width / 4,
            ),
            // Center everything
            children: widget.children.map((e) => Center(child: e)).toList(),
          ),
        ),
      ),
    );
  }
}

class ScalingListBuilder extends StatefulWidget {
  const ScalingListBuilder({
    Key? key,
    required this.itemBuilder,
    required this.itemCount,
  }) : super(key: key);

  final Widget? Function(BuildContext, int) itemBuilder;
  final int itemCount;

  @override
  State<StatefulWidget> createState() => _ScalingListBuilderState();
}

class _ScalingListBuilderState extends State<ScalingListBuilder> {
  final scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (session.isSquareScreen) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: StretchingOverscrollIndicator(
          axisDirection: scrollController.positions.isEmpty
              ? AxisDirection.down
              : scrollController.position.axisDirection,
          child: ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.all(session.isSquareScreen ? 0 : 20),
            itemCount: widget.itemCount,
            itemBuilder: widget.itemBuilder,
          ),
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(10),
      child: RotaryScrollWrapper(
        rotaryScrollbar: RotaryScrollbar(
          controller: scrollController,
          width: 4,
          autoHideDuration: const Duration(seconds: 1),
        ),
        child: StretchingOverscrollIndicator(
          axisDirection: scrollController.positions.isEmpty
              ? AxisDirection.down
              : scrollController.position.axisDirection,
          child: ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).size.width / 2,
              top: MediaQuery.of(context).size.width / 4,
            ),
            itemCount: widget.itemCount,
            itemBuilder: widget.itemBuilder,
          ),
        ),
      ),
    );
  }
}
