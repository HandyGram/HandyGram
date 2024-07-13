/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/tdlib/misc/stickers.dart';

extension AnimatedEmojiSpan on AnimatedEmoji {
  Future<InlineSpan?> get previewSpan => (sticker != null)
      ? getStickerThumbnailSpan(sticker!)
      : Future.value(null);
}
