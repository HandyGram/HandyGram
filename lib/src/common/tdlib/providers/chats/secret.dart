import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';
import 'package:handy_tdlib/api.dart' as td;

class SecretChatsProvider extends TdlibDataUpdatesProvider<td.SecretChat> {
  static const String tag = "SecretChatsProvider";

  Stream<td.SecretChat> filter(final int id) =>
      updates.where((update) => update.id == id);

  Future<td.SecretChat> getSecretChat(int secretChatId) async {
    final secretChat = await box.invoke(td.GetSecretChat(
      secretChatId: secretChatId,
    ));
    if (secretChat is! td.SecretChat) {
      if (secretChat is td.TdError) {
        l.e(tag,
            "Failed to get secretChat $secretChatId [${secretChat.code}]: ${secretChat.message}");
        throw TdlibCoreException.fromTd(tag, secretChat);
      } else {
        l.e(tag,
            "Failed to get secretChat $secretChatId: got ${secretChat.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${secretChat.runtimeType} instead of td.SecretChat");
      }
    }
    return secretChat;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateSecretChat) return;
    update(obj.secretChat);
  }
}
