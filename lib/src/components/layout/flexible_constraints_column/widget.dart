import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:handygram/src/components/layout/flexible_constraints_column/parent_data.dart';

export 'parent_data.dart';

/// [Column] with customizable children constraints and alignment.
///
/// Use [Constrained] widget to customize behaviour
class FlexibleConstraintsColumn extends MultiChildRenderObjectWidget {
  const FlexibleConstraintsColumn({
    super.key,
    required super.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return FlexibleConstraintsColumnRenderObject(
      mainAxisAlignment: mainAxisAlignment,
    );
  }
}

class FlexibleConstraintsColumnRenderObject extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox,
            FlexibleConstraintsColumnParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox,
            FlexibleConstraintsColumnParentData> {
  final MainAxisAlignment mainAxisAlignment;

  FlexibleConstraintsColumnRenderObject({
    required this.mainAxisAlignment,
  });

  final List<Rect> _childrenLayout = [];

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! FlexibleConstraintsColumnParentData) {
      child.parentData = FlexibleConstraintsColumnParentData();
    }
  }

  Size _computeSize(bool dry, [BoxConstraints? dryConstraints]) {
    final constraints = dryConstraints ?? this.constraints;
    double? targetWidth;
    //print("debug -------------------");

    // Get target child's width
    for (RenderBox? child = firstChild;
        child != null;
        child = childAfter(child)) {
      final parentData =
          child.parentData as FlexibleConstraintsColumnParentData;
      if (parentData.isTarget) {
        final drySize = child.getDryLayout(
          constraints.copyWith(minHeight: 0, maxHeight: double.infinity),
        );
        final childWidth = parentData.useIntrinsicWidth
            ? child.getMinIntrinsicWidth(double.infinity)
            : drySize.width;
        targetWidth = max(targetWidth ?? 0, childWidth);
        // print(
        //     "debug | $targetWidth | $childWidth | ${parentData.debugMarker}");
      } // else {
      // print(
      //     "debug | $targetWidth | not target | ${parentData.debugMarker}");
      // }
    }

    assert(
      targetWidth != null,
      "No target children found! "
      "Use [Constrained] to mark child as target one.",
    );

    final constrainedTargetWidth = constraints.constrainWidth(targetWidth!);

    if (!dry) {
      _childrenLayout.clear();
    }

    // Layout children again with new constraint
    double totalChildrenHeight = 0;
    for (RenderBox? child = firstChild;
        child != null;
        child = childAfter(child)) {
      final parentData =
          child.parentData as FlexibleConstraintsColumnParentData;
      final childConstraints = constraints.copyWith(
        minWidth: parentData.constrainMinWidth ? constrainedTargetWidth : null,
        maxWidth: parentData.constrainMaxWidth ? null : constrainedTargetWidth,
        minHeight: 0,
      );
      final Size childSize;

      if (dry) {
        childSize = child.getDryLayout(childConstraints);
      } else {
        child.layout(
          childConstraints,
          parentUsesSize: true,
        );
        childSize = child.size;

        final childWidth = parentData.useIntrinsicWidth
            ? child.getMinIntrinsicWidth(constraints.maxHeight)
            : childSize.width;
        switch (parentData.alignment ?? mainAxisAlignment) {
          case MainAxisAlignment.end:
            parentData.offset = Offset(
              constrainedTargetWidth - childWidth,
              totalChildrenHeight,
            );
          case MainAxisAlignment.center:
            parentData.offset = Offset(
              (constrainedTargetWidth - childWidth) / 2,
              totalChildrenHeight,
            );
          default:
            parentData.offset = Offset(
              0,
              totalChildrenHeight,
            );
            break;
        }
      }

      totalChildrenHeight += childSize.height;
    }

    return Size(
      constrainedTargetWidth,
      constraints.constrainHeight(totalChildrenHeight),
    );
  }

  @override
  void performLayout() {
    size = _computeSize(false);
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    return _computeSize(true, constraints);
  }

  @override
  void paint(PaintingContext context, Offset offset) =>
      defaultPaint(context, offset);

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) =>
      defaultHitTestChildren(result, position: position);

  @override
  double? computeDistanceToActualBaseline(TextBaseline baseline) =>
      defaultComputeDistanceToFirstActualBaseline(baseline);
}
