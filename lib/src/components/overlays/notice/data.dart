import 'package:flutter/material.dart';

sealed class BaseNotice {
  const BaseNotice();
}

class StringNotice extends BaseNotice {
  final String text;
  final Color? color;
  final double? size;

  const StringNotice(
    this.text, {
    this.color,
    this.size,
  });
}

class WidgetNotice extends BaseNotice {
  final Widget widget;
  const WidgetNotice(this.widget);
}
