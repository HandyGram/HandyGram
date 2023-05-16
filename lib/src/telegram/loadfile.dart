import 'dart:io';

import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

Future<File?> loadTgFile(
  String remoteId, {
  tdlib.FileType? type,
  int priority = 1,
  int internalRetryId = 0,
  bool download = false,
  Function(int, int)? notifier,
}) async {
  tdlib.File? file;
  try {
    file = await session.functions.getRemoteFile(remoteId, type);
  } catch (e) {
    return null;
  }
  if (file == null) {
    l.e("loadTgFile", "Cannot get file $remoteId");
    return null;
  }
  if (file.local.isDownloadingCompleted) {
    l.i("loadTgFile", "file $remoteId already downloaded!");
    return File(file.local.path);
  }
  try {
    if (download) {
      file =
          await session.functions.downloadFile(file.id, priority, 0, 0, true);
    } else {
      file = await session.functions.getFile(file.id);
    }
  } catch (e) {
    return null;
  }

  if (file == null) {
    l.e("loadTgFile", "Cannot load file $remoteId from retrieved local id");
    return null;
  }

  if (notifier != null) {
    session.fileDlNotifiers[remoteId] = notifier;
  }

  if (!file.local.isDownloadingCompleted) {
    if (internalRetryId > 25) {
      return null;
    }

    await Future.delayed(
        Duration(milliseconds: ((internalRetryId ~/ 2) + 1) * 100));
    return loadTgFile(
      remoteId,
      notifier: notifier,
      priority: priority,
      internalRetryId: internalRetryId + 1,
      download: true,
    );
  }

  if (notifier != null) {
    session.fileDlNotifiers.remove(remoteId);
  }

  return File(file.local.path);
}

void filesHandler(tdlib.TdObject object, TgSession session) {
  if (object is! tdlib.UpdateFile) return;
  if (session.fileDlNotifiers.containsKey(object.file.remote.id)) {
    session.fileDlNotifiers[object.file.remote.id]!(
      object.file.local.downloadedSize,
      object.file.expectedSize,
    );
  }
}
