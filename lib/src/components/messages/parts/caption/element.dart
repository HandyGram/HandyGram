import 'dart:collection';

import 'package:flutter/widgets.dart';
import 'package:handygram/src/components/messages/parts/caption/renderobject.dart';
import 'package:handygram/src/components/messages/parts/caption/widget.dart';
import 'package:handygram/src/components/messages/parts/caption/slot.dart';

class MessageCaptionElement extends RenderObjectElement {
  MessageCaptionElement(super.widget) : assert(widget is MessageCaptionWidget);

  @override
  MessageCaptionRenderObject get renderObject =>
      super.renderObject as MessageCaptionRenderObject;

  List<Element> _children = [];
  final Map<CaptionSlotTag, Element> _taggedChildren = {};
  final _forgottenChildren = HashSet<Element>();

  @override
  void insertRenderObjectChild(RenderBox child, Object slot) {
    final renderObject = this.renderObject;
    assert(renderObject.debugValidateChild(child));
    switch (slot) {
      case IndexedSlot(value: final value):
        renderObject.insert(child, after: value?.renderObject as RenderBox?);
      case CaptionTaggedSlot(tag: final tag):
        renderObject.addTagged(tag, child);
      default:
        throw UnimplementedError();
    }
    assert(renderObject == this.renderObject);
  }

  @override
  void moveRenderObjectChild(RenderBox child, Object oldSlot, Object newSlot) {
    final renderObject = this.renderObject;
    assert(child.parent == renderObject);
    switch (newSlot) {
      case IndexedSlot(value: final value):
        renderObject.move(child, after: value?.renderObject as RenderBox?);
      case CaptionTaggedSlot(tag: final newTag):
        oldSlot as CaptionTaggedSlot;
        renderObject.moveTagged(oldSlot.tag, newTag, child);
      default:
        throw UnimplementedError();
    }
    assert(renderObject == this.renderObject);
  }

  @override
  void removeRenderObjectChild(RenderBox child, Object slot) {
    final renderObject = this.renderObject;
    assert(child.parent == renderObject);
    switch (slot) {
      case IndexedSlot():
        renderObject.remove(child);
      case CaptionTaggedSlot(tag: final tag):
        renderObject.removeTagged(tag);
      default:
        throw UnimplementedError();
    }
    assert(renderObject == this.renderObject);
  }

  @override
  void visitChildren(ElementVisitor visitor) {
    for (final child in _children) {
      if (_forgottenChildren.contains(child)) continue;
      visitor(child);
    }
    for (final child in _taggedChildren.values) {
      if (_forgottenChildren.contains(child)) continue;
      visitor(child);
    }
  }

  @override
  void forgetChild(Element child) {
    _forgottenChildren.add(child);
    super.forgetChild(child);
  }

  void _mountTagged(CaptionSlotTag tag, Widget widget) {
    _children.add(inflateWidget(
      widget,
      CaptionTaggedSlot(tag),
    ));
  }

  @override
  void mount(Element? parent, Object? newSlot) {
    super.mount(parent, newSlot);
    final widget = this.widget as MessageCaptionWidget;

    final spanWidgets = WidgetSpan.extractFromInlineSpan(
      widget.text,
      TextScaler.noScaling,
    );
    assert(!debugChildrenHaveDuplicateKeys(widget, spanWidgets));

    // Setup span children
    Element? prev;
    for (int i = 0; i < spanWidgets.length; i++) {
      final child = inflateWidget(spanWidgets[i], IndexedSlot(i, prev));
      _children.add(child);
      prev = child;
    }

    // Setup tagged children
    _mountTagged(CaptionSlotTag.attributes, widget.attributesWidget);
  }

  void _updateTagged(CaptionSlotTag tag, Widget newWidget) {
    final newElement = updateChild(
      _taggedChildren[tag],
      newWidget,
      CaptionTaggedSlot(tag),
    );
    if (newElement == null) {
      _taggedChildren.remove(tag);
    } else {
      _taggedChildren[tag] = newElement;
    }
  }

  @override
  void update(MessageCaptionWidget newWidget) {
    super.update(newWidget);
    final widget = this.widget as MessageCaptionWidget;
    assert(widget == newWidget);

    final children = WidgetSpan.extractFromInlineSpan(
      widget.text,
      TextScaler.noScaling,
    );
    assert(!debugChildrenHaveDuplicateKeys(widget, children));

    // Update span children
    _children = updateChildren(
      _children,
      children,
      forgottenChildren: _forgottenChildren,
    );

    // Update tagged children
    _updateTagged(CaptionSlotTag.attributes, widget.attributesWidget);

    _forgottenChildren.clear();
  }
}
