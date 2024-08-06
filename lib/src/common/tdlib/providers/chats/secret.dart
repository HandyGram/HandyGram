/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class SecretChatsProvider extends TdlibDataUpdatesProvider<td.SecretChat>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "SecretChatsProvider";

  Stream<td.SecretChat> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.SecretChat> getSecretChat(int secretChatId) =>
      tdlibGetAnySingleBasicWrapper<td.SecretChat>(
        td.GetSecretChat(secretChatId: secretChatId),
      );

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateSecretChat) return;
    update(obj.secretChat);
  }
}
