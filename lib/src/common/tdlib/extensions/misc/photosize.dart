import 'dart:math';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/scaling.dart';

extension PhotoSizeSides on td.PhotoSize {
  int get shortestSide => min(height, width);
  int get longestSide => max(height, width);
  double get aspectRatio => width / height;
}

extension SmallestPhotoSize on List<td.PhotoSize> {
  td.PhotoSize get smallest => fold(
        first,
        (initial, current) =>
            (current.width < initial.width) ? current : initial,
      );

  td.PhotoSize get bestForScreen => fold(
        first,
        (initial, current) => (current.width > initial.width)
            ? current.shortestSide >= Scaling.physicalScreenSize.longestSide
                ? initial.shortestSide >= Scaling.physicalScreenSize.longestSide
                    ? initial
                    : current
                : current
            : initial,
      );

  td.PhotoSize get largest => fold(
        first,
        (initial, current) =>
            (current.width > initial.width) ? current : initial,
      );
}
