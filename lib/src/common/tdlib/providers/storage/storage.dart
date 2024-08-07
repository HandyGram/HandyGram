import 'dart:async';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/templates/attachable_box.dart';

class StorageProvider extends TdlibDataProvider
    with AttachableBox, TdlibUpdatesProviderTypicalWrappers {
  Future<td.StorageStatistics> optimize() =>
      tdlibGetAnySingleBasicWrapper<td.StorageStatistics>(td.OptimizeStorage(
        size: -1,
        ttl: const Duration(minutes: 5).inSeconds,
        count: -1,
        immunityDelay: -1,
        fileTypes: [],
        chatIds: [],
        excludeChatIds: [],
        returnDeletedFileStatistics: false,
        chatLimit: -1,
      ));
}
