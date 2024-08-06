import 'package:flutter/widgets.dart';

enum CaptionSlotTag {
  attributes,
}

@immutable
class CaptionTaggedSlot<T extends Element?> {
  final CaptionSlotTag tag;
  const CaptionTaggedSlot(this.tag);
}
