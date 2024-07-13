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

  Future<AndroidNotificationDetails> get _secretChatDetails async {
    final notification = notifications.first;
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    return AndroidNotificationDetails(
      kNotificationChannelPrivateChats,
      AppLocalizations.current.notificationsChannelPrivateChats,
      largeIcon: photo == null ? null : FilePathAndroidBitmap(photo),
      icon: kChatIcon,
      when: notification.date * 1000,
    );
  }

  Future<AndroidNotificationDetails> get _pinnedMessageDetails async {
    final notification = notifications.first;
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    return AndroidNotificationDetails(
      kNotificationChannelGroups,
      AppLocalizations.current.notificationsChannelGroups,
      largeIcon: photo == null ? null : FilePathAndroidBitmap(photo),
      icon: kChatIcon,
      when: notification.date * 1000,
    );
  }

  Future<AndroidNotificationDetails> get _callsGroupDetails async {
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    return AndroidNotificationDetails(
      kNotificationChannelPrivateChats,
      AppLocalizations.current.notificationsChannelPrivateChats,
      largeIcon: photo == null ? null : FilePathAndroidBitmap(photo),
      icon: kChatIcon,
    );
  }

  Future<AndroidNotificationDetails> get _messagesGroupDetails async {
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    final person = Person(
      icon: _maybeIcon(photo),
      name: chat.title,
      key: "$chatId",
    );
    final settings = await CurrentAccount.providers.scopeNotificationSettings
        .getForChat(chatObj: chat);
    return AndroidNotificationDetails(
      switch (chat.type) {
        td.ChatTypePrivate() ||
        td.ChatTypeSecret() =>
          kNotificationChannelPrivateChats,
        td.ChatTypeSupergroup(isChannel: final isChannel) =>
          isChannel ? kNotificationChannelChannels : kNotificationChannelGroups,
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
      groupKey: "ru.tdrk.handygramnew.MESSAGES_$chatId",
      largeIcon: photo == null ? null : FilePathAndroidBitmap(photo),
      icon: kChatIcon,
      playSound: settings.soundId != 0,
      enableVibration: settings.soundId != 0,
      enableLights: settings.soundId != 0,
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
    );
  }

  Future<AndroidNotificationDetails> get _mentionsGroupDetails async {
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    final person = Person(
      icon: _maybeIcon(photo),
      name: chat.title,
      key: "$chatId",
    );
    return AndroidNotificationDetails(
      kNotificationChannelGroups,
      AppLocalizations.current.notificationsChannelGroups,
      groupKey: "ru.tdrk.handygramnew.MENTIONS_$chatId",
      icon: kMentionIcon,
      largeIcon: photo == null ? null : FilePathAndroidBitmap(photo),
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
    );
  }

  Future<AndroidNotificationDetails> get details => switch (type) {
        td.NotificationGroupTypeSecretChat() => _secretChatDetails,
        td.NotificationGroupTypeMentions() => _mentionsGroupDetails,
        td.NotificationGroupTypeMessages() =>
          isPinnedMessageGroup ? _pinnedMessageDetails : _messagesGroupDetails,
        td.NotificationGroupTypeCalls() => _callsGroupDetails,
      };

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
          icon: kChatIcon,
          groupKey: "ru.tdrk.handygramnew.MESSAGES_$chatId",
          setAsGroupSummary: true,
        ),
      td.NotificationGroupTypeMentions() => AndroidNotificationDetails(
          kNotificationChannelGroups,
          AppLocalizations.current.notificationsChannelGroups,
          largeIcon: _maybeBitmap(
            await chat.photo?.small.download(1),
          ),
          icon: kMentionIcon,
          groupKey: "ru.tdrk.handygramnew.MENTIONS_$chatId",
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
