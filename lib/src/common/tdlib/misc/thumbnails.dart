import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'dart:io' as io;

Future<Widget?> getMinimalPhotoSizeWidget(
  td.Photo photo, [
  double? size,
]) async {
  final file = await CurrentAccount.providers.files.download(
    fileId: photo.sizes
        .fold(
          photo.sizes.first,
          (prev, next) => next.width < prev.width ? next : prev,
        )
        .photo
        .id,
    synchronous: true,
    priority: 3,
  );
  return Image.file(
    io.File(file.local.path),
    width: size,
    height: size,
  );
}

Future<Widget?> getThumbnailWidget(
  td.Thumbnail thumbnail, [
  double? size,
  bool repaint = false,
  Color? repaintColor,
]) async {
  final file = await CurrentAccount.providers.files.download(
    fileId: thumbnail.file.id,
    synchronous: true,
    priority: 3,
  );
  return Image.file(
    io.File(file.local.path),
    width: size,
    height: size,
    color: repaintColor,
    isAntiAlias: true,
    colorBlendMode: repaint ? BlendMode.srcIn : BlendMode.dstIn,
  );
}

Future<Widget?> getStickerThumbnailWidget(
  td.Sticker? sticker, {
  double? size,
  Color? repaintColor,
}) async {
  if (sticker?.thumbnail == null) return Text(sticker?.emoji ?? "");
  return getThumbnailWidget(
    sticker!.thumbnail!,
    size,
    switch (sticker.fullType) {
      td.StickerFullTypeCustomEmoji(needsRepainting: final repaint) => repaint,
      _ => false,
    },
    repaintColor,
  );
}

Future<InlineSpan?> getStickerThumbnailSpan(
  td.Sticker? sticker, {
  double? size,
  Color? repaintColor,
}) async {
  final w = await getStickerThumbnailWidget(
    sticker,
    size: size,
    repaintColor: repaintColor,
  );
  return w != null ? WidgetSpan(child: w) : null;
}
