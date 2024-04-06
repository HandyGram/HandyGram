// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(title) => "Audio: ${title}";

  static String m1(time) => "Call (${time})";

  static String m2(user) => "${user} and others were added";

  static String m3(name) => "Contact: ${name}";

  static String m4(caption) => "[Document] ${caption}";

  static String m5(name) => "Edited \"${name}\" topic";

  static String m6(count) =>
      "${count} forwarded ${Intl.plural(count, one: 'message', other: 'messages')}";

  static String m7(name) => "New \"${name}\" topic";

  static String m8(count) =>
      "${count} incoming ${Intl.plural(count, one: 'call', other: 'calls')}";

  static String m9(count) =>
      "${count} unread ${Intl.plural(count, one: 'mention', other: 'mentions')}";

  static String m10(count) =>
      "${count} unread ${Intl.plural(count, one: 'message', other: 'messages')}";

  static String m11(name) => "${name} is calling you...";

  static String m12(name) => "${name} has just created a secret chat with you!";

  static String m13(caption) => "[Photo] ${caption}";

  static String m14(caption) => "[Poll] ${caption}";

  static String m15(count) =>
      "Premium (${count} ${Intl.plural(count, one: 'month', other: 'months')})";

  static String m16(date) => "Last used: ${date}";

  static String m17(score) => "Scored ${score} in game";

  static String m18(count) =>
      "${Intl.plural(count, one: 'second', other: 'seconds')}";

  static String m19(emoji) => "${emoji} Sticker";

  static String m20(user) => "${user} has left";

  static String m21(time) => "Video call (${time})";

  static String m22(time) => "Video chat (${time})";

  static String m23(time) => "Video note (${time})";

  static String m24(caption) => "[Video] ${caption}";

  static String m25(time) => "Voice note (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "album": MessageLookupByLibrary.simpleMessage("Album"),
        "audio": MessageLookupByLibrary.simpleMessage("Audio"),
        "audioPrefix": m0,
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("Avatar was changed"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("Avatar was deleted"),
        "bgWasChanged":
            MessageLookupByLibrary.simpleMessage("Background was changed"),
        "botWriteAccessAllowed": MessageLookupByLibrary.simpleMessage(
            "Bot has been allowed to write messages"),
        "callWithTime": m1,
        "calls": MessageLookupByLibrary.simpleMessage("Calls"),
        "changedTheme": MessageLookupByLibrary.simpleMessage("Change theme"),
        "chatListHeaderArchive":
            MessageLookupByLibrary.simpleMessage("Archive"),
        "chatListHeaderFolder": MessageLookupByLibrary.simpleMessage("Folder"),
        "chatListHeaderMain": MessageLookupByLibrary.simpleMessage("All chats"),
        "chatMembersWereAdded": m2,
        "chatWasShared":
            MessageLookupByLibrary.simpleMessage("Chat was shared"),
        "closeButton": MessageLookupByLibrary.simpleMessage("Close"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Connected"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Connecting..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Connecting to proxy..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Waiting for network..."),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "contactPrefix": m3,
        "createButton": MessageLookupByLibrary.simpleMessage("Create"),
        "createProxy": MessageLookupByLibrary.simpleMessage("New Proxy"),
        "document": MessageLookupByLibrary.simpleMessage("Document"),
        "documentPrefix": m4,
        "doneButton": MessageLookupByLibrary.simpleMessage("Done"),
        "draftPrefix": MessageLookupByLibrary.simpleMessage("Draft: "),
        "editProxy": MessageLookupByLibrary.simpleMessage("Edit Proxy"),
        "editedForumTopic": m5,
        "enterPassword": MessageLookupByLibrary.simpleMessage("Enter Password"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "expiredPhoto": MessageLookupByLibrary.simpleMessage("Expired photo"),
        "expiredVideo": MessageLookupByLibrary.simpleMessage("Expired video"),
        "expiredVideoNote":
            MessageLookupByLibrary.simpleMessage("Expired video message"),
        "expiredVoiceNote":
            MessageLookupByLibrary.simpleMessage("Expired voice message"),
        "firstSettingsTitle":
            MessageLookupByLibrary.simpleMessage("Some Settings"),
        "forwardedMessagesPlural": m6,
        "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "giveaway": MessageLookupByLibrary.simpleMessage("Giveaway"),
        "giveawayFinished":
            MessageLookupByLibrary.simpleMessage("Giveaway finished"),
        "giveawayWinners":
            MessageLookupByLibrary.simpleMessage("Giveaway winners"),
        "groupWasCreated":
            MessageLookupByLibrary.simpleMessage("Group was created"),
        "handygram": MessageLookupByLibrary.simpleMessage("HandyGram"),
        "hasJoinedTelegram":
            MessageLookupByLibrary.simpleMessage("has joined Telegram!"),
        "hiddenContent": MessageLookupByLibrary.simpleMessage("Hidden content"),
        "incorrectPassword":
            MessageLookupByLibrary.simpleMessage("Incorrect password"),
        "invoice": MessageLookupByLibrary.simpleMessage("Invoice"),
        "location": MessageLookupByLibrary.simpleMessage("Location"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "Auto-delete timer was changed"),
        "messageWasPinned":
            MessageLookupByLibrary.simpleMessage("Message was pinned"),
        "messages": MessageLookupByLibrary.simpleMessage("Messages"),
        "newForumTopic": m7,
        "newVideoChat": MessageLookupByLibrary.simpleMessage("New video chat"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Next"),
        "notificationCalls": m8,
        "notificationMentions": m9,
        "notificationMessages": m10,
        "notificationNewSecretChat": MessageLookupByLibrary.simpleMessage(
            "New secret chat has been created"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Call"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Secret chat"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Scheduled message"),
        "notificationTextCall": m11,
        "notificationTextSecretChat": m12,
        "notificationsChannelMentions":
            MessageLookupByLibrary.simpleMessage("Mentions"),
        "notificationsChannelMentionsDesc":
            MessageLookupByLibrary.simpleMessage(
                "All your mentions from group chats"),
        "notificationsChannelMessages":
            MessageLookupByLibrary.simpleMessage("Messages"),
        "notificationsChannelMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "All new messages in chats where you\'ve enabled notifications (both group and personal ones)"),
        "notificationsChannelOther":
            MessageLookupByLibrary.simpleMessage("Other"),
        "notificationsChannelOtherDesc": MessageLookupByLibrary.simpleMessage(
            "All notifications which do not contain messages or mentions"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Payment was successful"),
        "photo": MessageLookupByLibrary.simpleMessage("Photo"),
        "photoPrefix": m13,
        "poll": MessageLookupByLibrary.simpleMessage("Poll"),
        "pollPrefix": m14,
        "premiumGiftCode":
            MessageLookupByLibrary.simpleMessage("Premium gift code"),
        "premiumWithMonthsCount": m15,
        "proximityAlert":
            MessageLookupByLibrary.simpleMessage("Proximity alert"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Add proxy"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Disconnected"),
        "proxyConnectionLastUsedDate": m16,
        "proxyInsecure": MessageLookupByLibrary.simpleMessage("Insecure"),
        "proxyPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "proxyPort": MessageLookupByLibrary.simpleMessage("Proxy port"),
        "proxySecret": MessageLookupByLibrary.simpleMessage("Secret"),
        "proxyServer": MessageLookupByLibrary.simpleMessage("Proxy server"),
        "proxySettingsButton":
            MessageLookupByLibrary.simpleMessage("Proxy Settings"),
        "proxySettingsMainToggle":
            MessageLookupByLibrary.simpleMessage("Proxy"),
        "proxySettingsTitle":
            MessageLookupByLibrary.simpleMessage("Proxy Settings"),
        "proxyType": MessageLookupByLibrary.simpleMessage("Proxy type"),
        "proxyTypeHTTP": MessageLookupByLibrary.simpleMessage("HTTP"),
        "proxyTypeMTProto": MessageLookupByLibrary.simpleMessage("MTProto"),
        "proxyTypePickerTitle":
            MessageLookupByLibrary.simpleMessage("Select Proxy Type"),
        "proxyTypeSOCKS5": MessageLookupByLibrary.simpleMessage("SOCKS5"),
        "proxyUser": MessageLookupByLibrary.simpleMessage("Username"),
        "qrInstruction": MessageLookupByLibrary.simpleMessage(
            "1. Open Telegram on your phone\n\n2. Go to Settings > Devices > Link Desktop Device\n\n3. Scan this image to Log In"),
        "qrScanTitle": MessageLookupByLibrary.simpleMessage("Scan to Login"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Remove"),
        "scheduledVideoChat":
            MessageLookupByLibrary.simpleMessage("Scheduled video chat"),
        "scoredSomeScoreInGame": m17,
        "screenshotWasTaken":
            MessageLookupByLibrary.simpleMessage("Screenshot was taken"),
        "secondsCountPlural": m18,
        "secretChats": MessageLookupByLibrary.simpleMessage("Secret chats"),
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Select Watch Shape"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Select Theme"),
        "sharedUsers": MessageLookupByLibrary.simpleMessage("Shared users"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Someone was approved to join"),
        "someoneJoinedViaLink":
            MessageLookupByLibrary.simpleMessage("Someone joined via link"),
        "stickerPlainTexted": m19,
        "story": MessageLookupByLibrary.simpleMessage("Story"),
        "suggestedAvatar":
            MessageLookupByLibrary.simpleMessage("Suggested avatar"),
        "tgPassport": MessageLookupByLibrary.simpleMessage("Telegram Passport"),
        "titleWasChanged":
            MessageLookupByLibrary.simpleMessage("Title was changed"),
        "topicWasClosed":
            MessageLookupByLibrary.simpleMessage("Topic was closed"),
        "topicWasHidden":
            MessageLookupByLibrary.simpleMessage("Topic was hidden"),
        "topicWasOpened":
            MessageLookupByLibrary.simpleMessage("Topic was opened"),
        "topicWasShown":
            MessageLookupByLibrary.simpleMessage("Topic was shown"),
        "unsupported": MessageLookupByLibrary.simpleMessage("Unsupported"),
        "upgradedToSupergroup":
            MessageLookupByLibrary.simpleMessage("Upgraded to supergroup"),
        "userHasLeft": m20,
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "videoCallWithTime": m21,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Video chat invitation"),
        "videoChatWithTime": m22,
        "videoNote": MessageLookupByLibrary.simpleMessage("Video note"),
        "videoNoteWithTime": m23,
        "videoPrefix": m24,
        "voiceNote": MessageLookupByLibrary.simpleMessage("Voice note"),
        "voiceNoteWithTime": m25,
        "whereToScan": MessageLookupByLibrary.simpleMessage("Where to scan?"),
        "you": MessageLookupByLibrary.simpleMessage("You"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("You\'ve boosted chat")
      };
}
