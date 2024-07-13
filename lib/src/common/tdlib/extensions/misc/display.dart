/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/misc/strings.dart';

extension DisplayUserName on User {
  String get displayName => squashName(firstName, lastName);
}

extension AudioName on Audio {
  String get displayTitle => title.isEmpty
      ? performer.isEmpty
          ? fileName.isEmpty
              ? AppLocalizations.current.audio
              : fileName
          : performer
      : title;
}

Future<String> getUserDisplayName(int userId) async {
  try {
    final user = await CurrentAccount.providers.users.getUser(userId);
    return user.displayName;
  } on TdlibCoreException {
    return AppLocalizations.current.error;
  }
}
