import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/session.dart';

extension MessageSenderWithId on tdlib.MessageSender {
  int getSenderId() => switch (this) {
        tdlib.MessageSenderUser(userId: var id) => id,
        tdlib.MessageSenderChat(chatId: var id) => id,
      };
}

extension InputMessageWithText on tdlib.InputMessageContent {
  String? getText() => switch (this) {
        tdlib.InputMessageText(text: var text) => text.text,
        _ => "unsupported",
      };
}

bool? canSendMessages(int chatId, [WidgetRef? ref]) {
  var ci = ref?.watch(session.chatsInfoCacheP) ?? session.chatsInfoCache;
  var chat = ci.maybeGet(chatId);
  if (chat == null) {
    ci.get(chatId);
    return null;
  }

  tdlib.ChatPermissions perms = chat.permissions;
  var type = chat.type;
  if (type is tdlib.ChatTypeSupergroup) {
    var si = ref?.watch(session.supergroupsP) ?? session.supergroups;
    var s = si.maybeGet(type.supergroupId);
    if (s == null) {
      si.get(type.supergroupId);
      return null;
    }

    if (type.isChannel) {
      var status = s.status;
      if (status is tdlib.ChatMemberStatusAdministrator) {
        return status.rights.canPostMessages;
      } else if (status is! tdlib.ChatMemberStatusCreator) {
        return false;
      }
      return true;
    } else {
      var status = s.status;
      if (status is tdlib.ChatMemberStatusRestricted) {
        return status.permissions.canSendMessages;
      }
    }
  } else if (type is tdlib.ChatTypeBasicGroup) {
    var bi = ref?.watch(session.basicGroupsP) ?? session.basicGroups;
    var b = bi.maybeGet(type.basicGroupId);
    if (b == null) {
      bi.get(type.basicGroupId);
      return null;
    }

    var status = b.status;
    if (status is tdlib.ChatMemberStatusRestricted) {
      return status.permissions.canSendMessages;
    }
  } else if (type is tdlib.ChatTypePrivate) {
    return true;
  }

  return perms.canSendMessages;
}
