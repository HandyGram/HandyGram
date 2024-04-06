import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';

extension DownloadFile on td.File {
  Future<String?> download([int? priority]) async {
    try {
      final file = await CurrentAccount.providers.files.download(
        fileId: id,
        synchronous: true,
        priority: priority ?? 5,
      );
      return file.local.path;
    } on TdlibCoreException {
      return null;
    }
  }
}
