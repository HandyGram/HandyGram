import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handy_tdlib/api.dart' as td;

enum ServiceChatType {
  savedMessages,
  repliesBot,
  antiSpamBot,
  serviceNotifications,
}

extension AdvServiceChatType on ServiceChatType {
  String? get overridenTitle => switch (this) {
        ServiceChatType.savedMessages =>
          AppLocalizations.current.templateTitleSavedMessages,
        ServiceChatType.repliesBot =>
          AppLocalizations.current.templateTitleRepliesBot,
        ServiceChatType.antiSpamBot ||
        ServiceChatType.serviceNotifications =>
          null,
      };

  bool get showVerifiedIcon => switch (this) {
        ServiceChatType.serviceNotifications ||
        ServiceChatType.antiSpamBot =>
          true,
        _ => false,
      };
}

Future<ServiceChatType?> getServiceChatType(td.Chat chat) async {
  final myUserId =
      await CurrentAccount.providers.options.getMaybeCached('my_id');
  if (chat.userId == myUserId) {
    return ServiceChatType.savedMessages;
  }

  final repliesBotChatId = await CurrentAccount.providers.options
      .getMaybeCached('replies_bot_chat_id');
  if (chat.id == repliesBotChatId) {
    return ServiceChatType.repliesBot;
  }

  final antiSpamBotUserId = await CurrentAccount.providers.options
      .getMaybeCached('anti_spam_bot_user_id');
  if (chat.userId == antiSpamBotUserId) {
    return ServiceChatType.antiSpamBot;
  }

  final serviceNotificationsChatId = await CurrentAccount.providers.options
      .getMaybeCached('telegram_service_notifications_chat_id');
  if (chat.id == serviceNotificationsChatId) {
    return ServiceChatType.serviceNotifications;
  }

  return null;
}
