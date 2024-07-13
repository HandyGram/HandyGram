/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/scaling.dart';

/// A set of scaled paddings used in UI
class Paddings {
  static double _s(double padding) => padding * Scaling.factor;

  /// Padding between similar elements, like multiple [TileButton]s
  static double get betweenSimilarElements => _s(4.73);

  /// Padding between small [TileButton] and other content
  static double get beforeSmallButton => _s(15);

  /// Padding after page's contents in case when the last widget
  /// in page is a small [TileButton]
  static double get afterPageEndingWithSmallButton => _s(23);

  /// Padding after page's contents
  static double get afterPage => _s(90);

  /// [TileButton], [HandyTextField] and other tiles' content vertical padding
  static double get tilesVerticalPadding => _s(10);

  /// [TileButton], [HandyTextField] and other tiles' content horizontal padding
  static double get tilesHorizontalPadding => _s(16);

  /// First reaction chip padding from the border of message bubble
  /// (including [messageContentPadding])
  static double get reactionChipPaddingFromBorder => _s(9.46);

  /// Message bubble content (including message sent time) padding
  static double get messageContentPadding => _s(7.1);

  /// Message bubbles padding from screen corners
  static double get messageBubblesPadding => _s(11.35);
}

/// A set of scaled UI elements sizes
class Sizes {
  static double _s(double size) => size * Scaling.factor;

  /// [TileButton], [HandyTextField] and other tiles' container minimal height
  static double get tilesHeight => _s(61.5);

  /// [TileButton], [HandyTextField] and other tiles' container width
  static double get tilesWidth => Scaling.screenSize.width * 0.89;

  /// Diameter of avatars being used in messages header
  static double get microAvatarDiameter => _s(19.4);

  /// Maximum width of message bubble
  static double get maxMessageBubbleWidth => _s(150);
}

/// A set of scaled UI elements BorderRadii
class BorderRadii {
  static BorderRadius _c(double radius) =>
      BorderRadius.circular(radius * Scaling.factor);

  /// [TileButton], [HandyTextField] and other tiles' container borderRadius
  static BorderRadius get tilesRadius => _c(31);

  /// Message bubble's (container's) borderRadius
  static BorderRadius get messageBubbleRadius => _c(23.6);

  /// Message bubble content's (image/sticker/etc) borderRadius
  static BorderRadius get messageBubbleContentRadius => _c(14.2);
}
