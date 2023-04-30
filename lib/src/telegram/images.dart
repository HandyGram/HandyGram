import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/telegram/loadfile.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

// a bit of legacy code
class TgImage {
  final String id;
  final tdlib.FileType? type;

  TgImage({
    required this.id,
    this.type,
  });
  Future<ImageProvider?> load({
    int priority = 1,
  }) async {
    var file = await loadTgFile(
      id,
      priority: priority,
      type: type,
    );
    if (file == null) return null;
    return FileImage(File(file.path));
  }
}
