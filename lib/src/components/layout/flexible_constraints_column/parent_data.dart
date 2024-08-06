import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:handygram/src/components/layout/flexible_constraints_column/widget.dart';

class FlexibleConstraintsColumnParentData
    extends ContainerBoxParentData<RenderBox>
    with ContainerParentDataMixin<RenderBox> {
  /// Is one of target children?
  bool isTarget;

  /// Constrain max child width to the target child's one
  bool constrainMaxWidth;

  /// Constrain min child width to the target child's one
  bool constrainMinWidth;

  /// Overriden alignment
  MainAxisAlignment? alignment;

  /// Use intrinsic width
  bool useIntrinsicWidth;

  FlexibleConstraintsColumnParentData({
    this.isTarget = false,
    this.constrainMaxWidth = true,
    this.constrainMinWidth = false,
    this.useIntrinsicWidth = false,
    this.alignment,
  });
}

/// Parameters for [FlexibleConstraintsColumn]
class Constrained
    extends ParentDataWidget<FlexibleConstraintsColumnParentData> {
  const Constrained({
    required super.child,
    super.key,
    this.isTarget = false,
    this.constrainMaxWidth = true,
    this.constrainMinWidth = false,
    this.useIntrinsicWidth = false,
    this.alignment,
  });

  /// Is target child?
  final bool isTarget;

  /// Constrain min child width to the widest target child's width
  final bool constrainMinWidth;

  /// Constrain max child width to the widest target child's width
  final bool constrainMaxWidth;

  /// Override mainAxisAlignment
  final MainAxisAlignment? alignment;

  /// Use intrinsic width
  final bool useIntrinsicWidth;

  @override
  void applyParentData(RenderObject renderObject) {
    (renderObject.parentData as FlexibleConstraintsColumnParentData).isTarget =
        isTarget;
    (renderObject.parentData as FlexibleConstraintsColumnParentData)
        .constrainMaxWidth = constrainMaxWidth;
    (renderObject.parentData as FlexibleConstraintsColumnParentData)
        .constrainMinWidth = constrainMinWidth;
    (renderObject.parentData as FlexibleConstraintsColumnParentData).alignment =
        alignment;
  }

  @override
  Type get debugTypicalAncestorWidgetClass => FlexibleConstraintsColumn;
}
