import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:handy_tdlib/handy_tdlib.dart' as td;
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/tdlib/extensions/chats/misc.dart';
import 'package:handygram/src/common/tdlib/extensions/message/sender.dart';
import 'package:handygram/src/common/tdlib/extensions/message/strings/content.dart';
import 'package:handygram/src/common/tdlib/extensions/message/strings/push.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/file.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/int.dart';

const String kNotificationChannelMentions = "HandyGramMentions";
const String kNotificationChannelMessages = "HandyGramMessages";
const String kNotificationChannelOther = "HandyGramOther";

const String kMentionIcon = "@drawable/mention_24";
const String kChatIcon = "@drawable/chat_24";
const String kLogoIcon = "@drawable/logo_24";

extension SimpleNotificationGroupDetails on td.NotificationGroup {
  bool get isPinnedMessageGroup => pinnedMessageId != null;

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
      kNotificationChannelOther,
      AppLocalizations.current.notificationsChannelOther,
      channelDescription:
          AppLocalizations.current.notificationsChannelOtherDesc,
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
      kNotificationChannelOther,
      AppLocalizations.current.notificationsChannelOther,
      channelDescription:
          AppLocalizations.current.notificationsChannelOtherDesc,
      largeIcon: photo == null ? null : FilePathAndroidBitmap(photo),
      icon: kChatIcon,
      when: notification.date * 1000,
    );
  }

  Future<AndroidNotificationDetails> get _callsGroupDetails async {
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    return AndroidNotificationDetails(
      kNotificationChannelOther,
      AppLocalizations.current.notificationsChannelOther,
      channelDescription:
          AppLocalizations.current.notificationsChannelOtherDesc,
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
    return AndroidNotificationDetails(
      kNotificationChannelMessages,
      AppLocalizations.current.notificationsChannelMessages,
      channelDescription:
          AppLocalizations.current.notificationsChannelMessagesDesc,
      groupKey: "ru.tdrk.handygramnew.MESSAGES_$chatId",
      largeIcon: photo == null ? null : FilePathAndroidBitmap(photo),
      icon: kChatIcon,
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

  Future<AndroidNotificationDetails> get _mentionsGroupDetails async {
    final chat = await chatId.asChat;
    final photo = await chat.photo?.small.download(1);
    final person = Person(
      icon: _maybeIcon(photo),
      name: chat.title,
      key: "$chatId",
    );
    return AndroidNotificationDetails(
      kNotificationChannelMentions,
      AppLocalizations.current.notificationsChannelMentions,
      channelDescription:
          AppLocalizations.current.notificationsChannelMentionsDesc,
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

  Future<AndroidNotificationDetails?> get summaryDetails async =>
      switch (type) {
        td.NotificationGroupTypeMessages() => AndroidNotificationDetails(
            kNotificationChannelMessages,
            AppLocalizations.current.notificationsChannelMessages,
            channelDescription:
                AppLocalizations.current.notificationsChannelMessagesDesc,
            largeIcon: _maybeBitmap(
              await (await chatId.asChat).photo?.small.download(1),
            ),
            icon: kChatIcon,
            groupKey: "ru.tdrk.handygramnew.MESSAGES_$chatId",
            setAsGroupSummary: true,
          ),
        td.NotificationGroupTypeMentions() => AndroidNotificationDetails(
            kNotificationChannelMentions,
            AppLocalizations.current.notificationsChannelMentions,
            channelDescription:
                AppLocalizations.current.notificationsChannelMentionsDesc,
            largeIcon: _maybeBitmap(
              await (await chatId.asChat).photo?.small.download(1),
            ),
            icon: kMentionIcon,
            groupKey: "ru.tdrk.handygramnew.MENTIONS_$chatId",
            setAsGroupSummary: true,
          ),
        _ => null,
      };
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
