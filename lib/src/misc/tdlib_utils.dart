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

enum AvailableSendPermissions {
  /// text messages, contacts, locations, and venues.
  textMessages,

  /// audio files, documents, photos, videos, video notes, and voice notes
  mediaMessages,

  /// voice/video notes
  voiceMessages,

  /// animations, games, stickers, and dice and use inline bots
  otherMessages,

  /// polls
  polls,
}

List<AvailableSendPermissions>? canSendMessages(int chatId, [WidgetRef? ref]) {
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
      if (status is tdlib.ChatMemberStatusAdministrator &&
          status.rights.canPostMessages) {
        return AvailableSendPermissions.values;
      } else if (status is! tdlib.ChatMemberStatusCreator) {
        return [];
      }
      return AvailableSendPermissions.values;
    } else {
      var status = s.status;
      if (status is tdlib.ChatMemberStatusRestricted) {
        if (!status.permissions.canSendMessages) return [];
        return [
          AvailableSendPermissions.textMessages,
          if (status.permissions.canSendMediaMessages) ...[
            AvailableSendPermissions.mediaMessages,
            AvailableSendPermissions.voiceMessages
          ],
          if (status.permissions.canSendOtherMessages)
            AvailableSendPermissions.otherMessages,
          if (status.permissions.canSendPolls) AvailableSendPermissions.polls,
        ];
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
      if (!status.permissions.canSendMessages) return [];
      return [
        AvailableSendPermissions.textMessages,
        if (status.permissions.canSendMediaMessages) ...[
          AvailableSendPermissions.mediaMessages,
          AvailableSendPermissions.voiceMessages
        ],
        if (status.permissions.canSendOtherMessages)
          AvailableSendPermissions.otherMessages,
        if (status.permissions.canSendPolls) AvailableSendPermissions.polls,
      ];
    }
  } else if (type is tdlib.ChatTypePrivate) {
    var ufi =
        ref?.watch(session.usersFullInfoCacheP) ?? session.usersFullInfoCache;
    var uf = ufi.maybeGet(type.userId);
    if (uf == null) {
      ufi.get(type.userId);
      return null;
    }
    return [
      AvailableSendPermissions.textMessages,
      AvailableSendPermissions.mediaMessages,
      AvailableSendPermissions.otherMessages,
      AvailableSendPermissions.polls,
      if (!uf.hasRestrictedVoiceAndVideoNoteMessages)
        AvailableSendPermissions.voiceMessages,
    ];
  }

  if (!perms.canSendMessages) return [];
  return [
    AvailableSendPermissions.textMessages,
    if (perms.canSendMediaMessages) ...[
      AvailableSendPermissions.mediaMessages,
      AvailableSendPermissions.voiceMessages
    ],
    if (perms.canSendOtherMessages) AvailableSendPermissions.otherMessages,
    if (perms.canSendPolls) AvailableSendPermissions.polls,
  ];
}
