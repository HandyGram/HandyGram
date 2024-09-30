import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:handygram/src/components/messages/parts/caption/slot.dart';

// Some code is brought from [RenderParagraph] and its parent classes.
class MessageCaptionRenderObject extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, TextParentData>,
        RenderInlineChildrenContainerDefaults {
  static const tag = "MessageCaptionRenderObject";

  final TextAlign textAlign;
  final TextDirection direction;
  final double childHorizontalPadding;
  TextSpan _span;

  Offset childOffset = Offset.zero;
  Size childSize = Size.zero;
  TextPainter _painter = TextPainter();

  set span(TextSpan span) {
    _span = span;
    markNeedsLayout();
    markNeedsSemanticsUpdate();
  }

  MessageCaptionRenderObject({
    required TextSpan span,
    required this.textAlign,
    required this.direction,
    this.childHorizontalPadding = 0,
  })  : _span = span,
        assert(
          textAlign == TextAlign.left || textAlign == TextAlign.right,
        );

  @override
  bool get alwaysNeedsCompositing => true;

  final Map<CaptionSlotTag, RenderBox> _taggedChildren = {};

  void addTagged(CaptionSlotTag tag, RenderBox child) {
    _taggedChildren[tag] = child;
    adoptChild(child);
  }

  void removeTagged(CaptionSlotTag tag) {
    dropChild(_taggedChildren[tag]!);
    _taggedChildren.remove(tag);
  }

  void moveTagged(
    CaptionSlotTag oldTag,
    CaptionSlotTag newTag,
    RenderBox child,
  ) {
    if (_taggedChildren[oldTag] == child) {
      _taggedChildren.remove(oldTag);
    }
    _taggedChildren[newTag] = child;
    markNeedsLayout();
  }

  @override
  void describeSemanticsConfiguration(SemanticsConfiguration config) {
    super.describeSemanticsConfiguration(config);
    config
      ..isMultiline = true
      ..textDirection = direction
      ..label = _span.toPlainText();
  }

  Size _computeSize(bool dry, [BoxConstraints? dryConstraints]) {
    final constraints = dryConstraints ?? this.constraints;

    // Layout attributes widget and get its size
    final child = _taggedChildren[CaptionSlotTag.attributes];
    if (!dry) {
      child?.layout(
        constraints.copyWith(
          minWidth: 0,
          minHeight: 0,
          maxHeight: double.infinity,
        ),
        parentUsesSize: true,
      );
    }
    childSize = (dry
            ? child?.getDryLayout(
                constraints.copyWith(
                  minWidth: 0,
                  minHeight: 0,
                  maxHeight: double.infinity,
                ),
              )
            : child?.size) ??
        Size.zero;
    final childWidthPadded = childSize.width + childHorizontalPadding;

    // Prepare painter data
    _painter = TextPainter(
      text: _span,
      textAlign: textAlign,
      maxLines: 99999999,
      textWidthBasis: TextWidthBasis.longestLine,
      textDirection: direction,
    )
      ..setPlaceholderDimensions(layoutInlineChildren(
        constraints.maxWidth,
        dry ? ChildLayoutHelper.dryLayoutChild : ChildLayoutHelper.layoutChild,
        dry ? ChildLayoutHelper.getDryBaseline : ChildLayoutHelper.getBaseline,
      ))
      ..layout(
        maxWidth: constraints.maxWidth,
        //minWidth: constraints.minWidth,
      );
    if (!dry) {
      final boxes = _painter.inlinePlaceholderBoxes;
      if (boxes != null) positionInlineChildren(boxes);
    }
    final metrics = _painter.computeLineMetrics();

    Size size = _painter.size;
    final maxTextWidth = max(_painter.width, constraints.minWidth);

    // We need to position the child here
    if (metrics.length > 1) {
      // Check can we place the child here or not
      final freeWidth = maxTextWidth - metrics.last.width;
      if (freeWidth >= childWidthPadded) {
        // draw child in the last line
        childOffset = Offset(
          maxTextWidth - childSize.width,
          _painter.height - min(metrics.last.height, childSize.height),
        );
        size += Offset(
          0,
          // child may be a bit bigger than single text line
          max(0, childSize.height - metrics.last.height),
        );
      } else {
        // draw child below text
        childOffset = Offset(
          maxTextWidth - childSize.width,
          _painter.height,
        );
        size += Offset(0, childSize.height);
      }
    } else if (metrics.length == 1) {
      // We have a single line
      if (metrics.first.width + childWidthPadded > constraints.maxWidth) {
        // draw child below text
        childOffset = Offset(
          maxTextWidth - childSize.width,
          _painter.height,
        );
        size += Offset(0, childSize.height);
      } else if (metrics.first.width + childWidthPadded <
          constraints.minWidth) {
        // we've met minWidth constraints!
        childOffset = Offset(
          constraints.minWidth - childSize.width,
          max(0, _painter.height - childSize.height),
        );
        size = Size(
          constraints.minWidth,
          // child may be a bit bigger than single text line
          _painter.height + max(0, childSize.height - _painter.height),
        );
      } else {
        // draw child by extending the only line
        childOffset = Offset(
          metrics.first.width + childHorizontalPadding,
          max(0, _painter.height - childSize.height),
        );
        size += Offset(
          _painter.width - metrics.first.width + childWidthPadded,
          // child may be a bit bigger than single text line
          max(0, childSize.height - _painter.height),
        );
      }
    } else {
      size = childSize;
      childOffset = Offset.zero;

      if (constraints.minWidth > size.width) {
        // place child to the right corner
        childOffset = Offset(
          constraints.minWidth - childSize.width,
          childOffset.dy,
        );
        size = Size(
          constraints.minWidth,
          size.height,
        );
      }
    }

    return constraints.constrain(size);
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
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    bool hit = false;
    final GlyphInfo? glyph = _painter.getClosestGlyphForOffset(position);
    // The hit-test can't fall through the horizontal gaps between visually
    // adjacent characters on the same line, even with a large letter-spacing or
    // text justification, as graphemeClusterLayoutBounds.width is the advance
    // width to the next character, so there's no gap between their
    // graphemeClusterLayoutBounds rects.
    final InlineSpan? spanHit =
        glyph != null && glyph.graphemeClusterLayoutBounds.contains(position)
            ? _painter.text!.getSpanForPosition(
                TextPosition(offset: glyph.graphemeClusterCodeUnitRange.start))
            : null;
    switch (spanHit) {
      case final HitTestTarget span:
        result.add(HitTestEntry(span));
        hit = true;
      case _:
        hit = hitTestInlineChildren(result, position);
    }

    final localChildOffset = position - childOffset;
    if (localChildOffset.dx > 0 &&
        localChildOffset.dy > 0 &&
        localChildOffset.dy < childSize.height &&
        localChildOffset.dx < childSize.width) {
      result.add(BoxHitTestEntry(
        _taggedChildren[CaptionSlotTag.attributes]!,
        localChildOffset,
      ));
      hit = true;
    }

    return hit;
  }

  @override
  void applyPaintTransform(RenderBox child, Matrix4 transform) =>
      defaultApplyPaintTransform(child, transform);

  @override
  void visitChildren(RenderObjectVisitor visitor) {
    super.visitChildren(visitor);
    for (final child in _taggedChildren.values) {
      visitor(child);
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _painter.paint(context.canvas, offset);
    paintInlineChildren(context, offset);

    final child = _taggedChildren[CaptionSlotTag.attributes];
    if (child != null) {
      context.paintChild(child, offset + childOffset);
    }
  }

  @override
  void attach(PipelineOwner owner) {
    super.attach(owner);
    for (final child in _taggedChildren.values) {
      child.attach(owner);
    }
  }

  @override
  void detach() {
    super.detach();
    for (final child in _taggedChildren.values) {
      child.detach();
    }
  }
}
