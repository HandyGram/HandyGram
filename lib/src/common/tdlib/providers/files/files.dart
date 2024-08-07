/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:dio/dio.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class FilesProvider extends TdlibDataUpdatesProvider<td.File> {
  static const String tag = "FilesProvider";

  static final _dio = Dio();
  final Map<int, CancelToken> _downloadCancelTokens = {};

  Future<td.TdError?> _downloadFile(
      String url, String destination, int id) async {
    _downloadCancelTokens[id] = CancelToken();
    try {
      final response = await _dio.download(
        url,
        destination,
        cancelToken: _downloadCancelTokens[id],
      );
      if (response.statusCode != 200) {
        l.e(tag, "Failed to download $url: ${response.statusMessage}");
        return td.TdError(
          code: response.statusCode ?? 500,
          message: response.statusMessage ?? "Internal Server Error",
        );
      }
      return null;
    } catch (e) {
      l.e(tag, "Failed to download $url: $e");
      return td.TdError(code: 500, message: e.toString());
    }
  }

  Future<void> _generateFile(td.UpdateFileGenerationStart task) async {
    switch (task.conversion) {
      case "#url#":
        final result = await _downloadFile(
          task.originalPath,
          task.destinationPath,
          task.generationId,
        );
        final token = _downloadCancelTokens.remove(task.generationId)!;
        if (token.isCancelled) return;
        await box?.invoke(td.FinishFileGeneration(
          generationId: task.generationId,
          error: result,
        ));
        return;
      default:
        l.e(tag, "Unknown conversion ${task.conversion}!");
        break;
    }
  }

  Future<td.File> download({
    required int fileId,
    int priority = 10,
    int offset = 0,
    int limit = 0,
    bool synchronous = false,
  }) async {
    final obj = await box?.invoke(
      td.DownloadFile(
        fileId: fileId,
        priority: priority,
        offset: offset,
        limit: limit,
        synchronous: synchronous,
      ),
      timeout:
          synchronous ? const Duration(hours: 1) : const Duration(seconds: 10),
    );
    if (obj is! td.File) {
      if (obj is td.TdError) {
        l.e(tag, "Failed to get file $fileId [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag, "Failed to get file $fileId: got ${obj.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${obj.runtimeType} instead of td.File");
      }
    }
    return obj;
  }

  Stream<td.File> filter(final int id) =>
      updates.where((update) => update.id == id);

  @override
  void updatesListener(td.TdObject obj) {
    switch (obj) {
      case td.UpdateFile(file: final file):
        update(file);
        break;
      case td.UpdateFileGenerationStart():
        _generateFile(obj);
      case td.UpdateFileGenerationStop(generationId: final gid):
        _downloadCancelTokens[gid]?.cancel();
      default:
        break;
    }
  }
}
