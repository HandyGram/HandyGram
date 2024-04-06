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
