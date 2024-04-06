import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/cubits/current_account.dart';

extension AnimatedEmojiSpan on AnimatedEmoji {
  Future<InlineSpan?> get previewSpan async {
    if (sticker?.thumbnail == null) return null;
    final file = await CurrentAccount.providers.files.download(
      fileId: sticker!.thumbnail!.file.id,
      synchronous: true,
      priority: 3,
    );
    return WidgetSpan(child: Image.file(io.File(file.local.path)));
  }
}
