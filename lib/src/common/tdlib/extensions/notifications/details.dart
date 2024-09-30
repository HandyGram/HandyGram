/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:handy_tdlib/handy_tdlib.dart' as td;
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handygram/src/common/tdlib/extensions/message/sender.dart';
import 'package:handygram/src/common/tdlib/extensions/message/strings/content.dart';
import 'package:handygram/src/common/tdlib/extensions/message/strings/push.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/file.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/int.dart';

const String kNotificationChannelGroups = "HandyGramGroups";
const String kNotificationChannelPrivateChats = "HandyGramPrivateChats";
const String kNotificationChannelChannels = "HandyGramChannels";

const String kMentionIcon = "@drawable/mention_24";
const String kChatIcon = "@drawable/chat_24";
const String kLogoIcon = "@drawable/logo_24";

extension SimpleNotificationGroupDetails on td.NotificationGroup {
  bool get isPinnedMessageGroup => pinnedMessageId != null;

  Future<bool> get isHidden async {
    switch (type) {
      case td.NotificationGroupTypeMessages():
        final settings = await CurrentAccount
            .providers.scopeNotificationSettings
            .getForChat(chatId: chatId);
        return settings.muteFor > 0;
      default:
        return false;
    }
  }

  int? get pinnedMessageId {
    if (this.type is! td.NotificationGroupTypeMentions) return null;
    if (notifications.length > 1) return null;

    final type = notifications.first.type;
    if (type is td.NotificationTypeNewMessage) {
      final content = type.message.content;
      if (content is! td.MessagePinMessage) return null;
      return content.messageId;
    }
    return null;
  }

  String get shortDescription => switch (type) {
        td.NotificationGroupTypeSecretChat() =>
          AppLocalizations.current.notificationNewSecretChat,
        td.NotificationGroupTypeMentions() => isPinnedMessageGroup
            ? AppLocalizations.current.messageWasPinned
            : AppLocalizations.current.notificationMentions(
                notifications.length,
              ),
        td.NotificationGroupTypeMessages() =>
          AppLocalizations.current.notificationMessages(
            notifications.length,
          ),
        td.NotificationGroupTypeCalls() =>
          AppLocalizations.current.notificationCalls(
            notifications.length,
          ),
      };

  Future<AndroidNotificationDetails> getDetails({
    required bool playSound,
  }) async {
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    final settings = await CurrentAccount.providers.scopeNotificationSettings
        .getForChat(chatObj: chat);

    final person = Person(
      icon: _maybeIcon(photo),
      name: chat.title,
      key: "$chatId",
    );

    final when = (notifications.lastOrNull?.date ??
            DateTime.now().millisecondsSinceEpoch ~/ 1000) *
        1000;
    final largeIcon = photo == null ? null : FilePathAndroidBitmap(photo);

    final channelByType = switch (chat.type) {
      td.ChatTypePrivate() ||
      td.ChatTypeSecret() =>
        kNotificationChannelPrivateChats,
      td.ChatTypeSupergroup(isChannel: final isChannel) =>
        isChannel ? kNotificationChannelChannels : kNotificationChannelGroups,
      td.ChatTypeBasicGroup() => kNotificationChannelGroups,
    };
    final channelDescByType = switch (chat.type) {
      td.ChatTypePrivate() ||
      td.ChatTypeSecret() =>
        AppLocalizations.current.notificationsChannelPrivateChats,
      td.ChatTypeSupergroup(isChannel: final isChannel) => isChannel
          ? AppLocalizations.current.notificationsChannelChannels
          : AppLocalizations.current.notificationsChannelGroups,
      td.ChatTypeBasicGroup() =>
        AppLocalizations.current.notificationsChannelGroups,
    };

    final playSoundByType = playSound && settings.muteFor > 0;

    return switch (type) {
      td.NotificationGroupTypeSecretChat() => AndroidNotificationDetails(
          channelByType,
          channelDescByType,
          groupKey: "ru.tdrk.handygramnew.SECRET_CHATS_$chatId",
          icon: kChatIcon,
          largeIcon: largeIcon,
          when: when,
          playSound: playSound,
          enableVibration: playSound,
          enableLights: playSound,
          category: AndroidNotificationCategory.message,
        ),
      td.NotificationGroupTypeCalls() => AndroidNotificationDetails(
          channelByType,
          channelDescByType,
          groupKey: "ru.tdrk.handygramnew.CALLS_$chatId",
          icon: kChatIcon,
          largeIcon: largeIcon,
          when: when,
          playSound: playSound,
          enableVibration: playSound,
          enableLights: playSound,
          category: AndroidNotificationCategory.call,
        ),
      td.NotificationGroupTypeMentions() => AndroidNotificationDetails(
          channelByType,
          channelDescByType,
          groupKey: "ru.tdrk.handygramnew.MENTIONS_$chatId",
          icon: kMentionIcon,
          largeIcon: largeIcon,
          when: when,
          playSound: playSound,
          enableVibration: playSound,
          enableLights: playSound,
          category: AndroidNotificationCategory.message,
          styleInformation: MessagingStyleInformation(
            person,
            groupConversation: chat.isGroup,
            conversationTitle: chat.title,
            messages: [
              for (final notification in notifications)
                Message(
                  await notification.text,
                  notification.date.asDate,
                  await notification.person,
                ),
            ],
          ),
        ),
      td.NotificationGroupTypeMessages() => AndroidNotificationDetails(
          channelByType,
          channelDescByType,
          groupKey: "ru.tdrk.handygramnew.MESSAGES_$chatId",
          icon: kChatIcon,
          largeIcon: largeIcon,
          when: when,
          playSound: playSoundByType,
          enableVibration: playSoundByType,
          enableLights: playSoundByType,
          category: AndroidNotificationCategory.message,
          styleInformation: settings.showPreview
              ? MessagingStyleInformation(
                  person,
                  groupConversation: chat.isGroup,
                  conversationTitle: chat.title,
                  messages: [
                    for (final notification in notifications)
                      Message(
                        await notification.text,
                        notification.date.asDate,
                        await notification.person,
                      ),
                  ],
                )
              : null,
        ),
    };
  }

  Future<AndroidNotificationDetails?> get summaryDetails async {
    final chat = await chatId.asChat;
    return switch (type) {
      td.NotificationGroupTypeMessages() => AndroidNotificationDetails(
          switch (chat.type) {
            td.ChatTypePrivate() ||
            td.ChatTypeSecret() =>
              kNotificationChannelPrivateChats,
            td.ChatTypeSupergroup(isChannel: final isChannel) => isChannel
                ? kNotificationChannelChannels
                : kNotificationChannelGroups,
            td.ChatTypeBasicGroup() => kNotificationChannelGroups,
          },
          switch (chat.type) {
            td.ChatTypePrivate() ||
            td.ChatTypeSecret() =>
              AppLocalizations.current.notificationsChannelPrivateChats,
            td.ChatTypeSupergroup(isChannel: final isChannel) => isChannel
                ? AppLocalizations.current.notificationsChannelChannels
                : AppLocalizations.current.notificationsChannelGroups,
            td.ChatTypeBasicGroup() =>
              AppLocalizations.current.notificationsChannelGroups,
          },
          channelDescription:
              AppLocalizations.current.notificationsChannelMessagesDesc,
          largeIcon: _maybeBitmap(
            await chat.photo?.small.download(1),
          ),
          when: notifications.last.date * 1000,
          icon: kChatIcon,
          groupKey: "ru.tdrk.handygramnew.MESSAGES_$chatId",
          playSound: false,
          setAsGroupSummary: true,
        ),
      td.NotificationGroupTypeMentions() => AndroidNotificationDetails(
          kNotificationChannelGroups,
          AppLocalizations.current.notificationsChannelGroups,
          largeIcon: _maybeBitmap(
            await chat.photo?.small.download(1),
          ),
          when: notifications.last.date * 1000,
          icon: kMentionIcon,
          groupKey: "ru.tdrk.handygramnew.MENTIONS_$chatId",
          playSound: false,
          setAsGroupSummary: true,
        ),
      _ => null,
    };
  }
}

BitmapFilePathAndroidIcon? _maybeIcon(String? photo) =>
    photo == null ? null : BitmapFilePathAndroidIcon(photo);

FilePathAndroidBitmap? _maybeBitmap(String? photo) =>
    photo == null ? null : FilePathAndroidBitmap(photo);

extension NotificationText on td.Notification {
  Future<String> get text async => switch (type) {
        td.NotificationTypeNewSecretChat() =>
          AppLocalizations.current.notificationNewSecretChat,
        td.NotificationTypeNewCall() => AppLocalizations.current.calls,
        td.NotificationTypeNewMessage(message: final message) =>
          await message.content.plainText,
        td.NotificationTypeNewPushMessage(content: final content) =>
          content.plainText,
      };

  Future<Person?> get person async => switch (type) {
        td.NotificationTypeNewMessage(message: final message) => Person(
            name: await message.senderId.title,
            bot: await message.senderId.isBot,
            icon: _maybeIcon(await message.senderId.photoPath),
          ),
        td.NotificationTypeNewPushMessage(
          senderId: final sender,
          senderName: final name,
        ) =>
          Person(
            name: name,
            icon: _maybeIcon(await sender.photoPath),
          ),
        _ => null,
      };
}
