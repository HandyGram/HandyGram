import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'dart:io' as io;

Future<Widget?> getStickerThumbnailWidget(td.Sticker? sticker) async {
  if (sticker?.thumbnail == null) return Text(sticker?.emoji ?? "");
  final file = await CurrentAccount.providers.files.download(
    fileId: sticker!.thumbnail!.file.id,
    synchronous: true,
    priority: 3,
  );
  return Image.file(
    io.File(file.local.path),
  );
}

Future<InlineSpan?> getStickerThumbnailSpan(td.Sticker? sticker) async {
  final w = await getStickerThumbnailWidget(sticker);
  return w != null ? WidgetSpan(child: w) : null;
}
