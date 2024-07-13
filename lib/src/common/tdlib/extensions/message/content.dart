/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart';

extension MessageContentBasicInfo on MessageContent {
  bool get isCaptionAboveContent => switch (this) {
        MessageAnimation(showCaptionAboveMedia: final value) ||
        MessagePhoto(showCaptionAboveMedia: final value) ||
        MessageVideo(showCaptionAboveMedia: final value) =>
          value,
        _ => false,
      };
}
