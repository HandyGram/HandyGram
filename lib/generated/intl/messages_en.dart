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

  static String m2(error) => "Failed to load chat: ${error}";

  static String m3(user) => "${user} and others were added";

  static String m4(id) => "Message ${id} was not found";

  static String m5(name) => "Contact: ${name}";

  static String m6(caption) => "[Document] ${caption}";

  static String m7(name) => "Edited \"${name}\" topic";

  static String m8(count) =>
      "${count} forwarded ${Intl.plural(count, one: 'message', other: 'messages')}";

  static String m9(name) => "New \"${name}\" topic";

  static String m10(count) =>
      "${count} incoming ${Intl.plural(count, one: 'call', other: 'calls')}";

  static String m11(count) =>
      "${count} unread ${Intl.plural(count, one: 'mention', other: 'mentions')}";

  static String m12(count) =>
      "${count} unread ${Intl.plural(count, one: 'message', other: 'messages')}";

  static String m13(name) => "${name} is calling you...";

  static String m14(name) => "${name} has just created a secret chat with you!";

  static String m15(caption) => "[Photo] ${caption}";

  static String m16(caption) => "[Poll] ${caption}";

  static String m17(count) =>
      "Premium (${count} ${Intl.plural(count, one: 'month', other: 'months')})";

  static String m18(date) => "Last used: ${date}";

  static String m19(score) => "Scored ${score} in game";

  static String m20(count) =>
      "${Intl.plural(count, one: 'second', other: 'seconds')}";

  static String m21(emoji) => "${emoji} Sticker";

  static String m22(time) => "Story (${time})";

  static String m23(user) => "${user} has left";

  static String m24(time) => "Video call (${time})";

  static String m25(time) => "Video chat (${time})";

  static String m26(time) => "Video note (${time})";

  static String m27(caption) => "[Video] ${caption}";

  static String m28(time) => "Voice note (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accounts": MessageLookupByLibrary.simpleMessage("Accounts"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Add account"),
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
        "chatBlocLoadingError": m2,
        "chatListHeaderArchive":
            MessageLookupByLibrary.simpleMessage("Archive"),
        "chatListHeaderFolder": MessageLookupByLibrary.simpleMessage("Folder"),
        "chatListHeaderMain": MessageLookupByLibrary.simpleMessage("All chats"),
        "chatMembersWereAdded": m3,
        "chatViewMessageNotFoundError": m4,
        "chatWasShared":
            MessageLookupByLibrary.simpleMessage("Chat was shared"),
        "closeButton": MessageLookupByLibrary.simpleMessage("Close"),
        "colorScheme": MessageLookupByLibrary.simpleMessage("Appearance"),
        "connectionConnected":
            MessageLookupByLibrary.simpleMessage("Connected"),
        "connectionConnecting":
            MessageLookupByLibrary.simpleMessage("Connecting..."),
        "connectionConnectingToProxy":
            MessageLookupByLibrary.simpleMessage("Connecting to proxy..."),
        "connectionUpdating":
            MessageLookupByLibrary.simpleMessage("Updating..."),
        "connectionWaitingForNetwork":
            MessageLookupByLibrary.simpleMessage("Waiting for network..."),
        "contact": MessageLookupByLibrary.simpleMessage("Contact"),
        "contactPrefix": m5,
        "createButton": MessageLookupByLibrary.simpleMessage("Create"),
        "createProxy": MessageLookupByLibrary.simpleMessage("New Proxy"),
        "document": MessageLookupByLibrary.simpleMessage("Document"),
        "documentPrefix": m6,
        "doneButton": MessageLookupByLibrary.simpleMessage("Done"),
        "draftPrefix": MessageLookupByLibrary.simpleMessage("Draft: "),
        "editProxy": MessageLookupByLibrary.simpleMessage("Edit Proxy"),
        "editedForumTopic": m7,
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
        "forwardedMessagesPlural": m8,
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
        "interface": MessageLookupByLibrary.simpleMessage("Interface"),
        "invoice": MessageLookupByLibrary.simpleMessage("Invoice"),
        "loadingMessage":
            MessageLookupByLibrary.simpleMessage("Loading message..."),
        "location": MessageLookupByLibrary.simpleMessage("Location"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "logout": MessageLookupByLibrary.simpleMessage("Log out"),
        "messageContentUnsupported":
            MessageLookupByLibrary.simpleMessage("Unsupported message type:\n"),
        "messageTtlChanged": MessageLookupByLibrary.simpleMessage(
            "Auto-delete timer was changed"),
        "messageWasPinned":
            MessageLookupByLibrary.simpleMessage("Message was pinned"),
        "messages": MessageLookupByLibrary.simpleMessage("Messages"),
        "newForumTopic": m9,
        "newVideoChat": MessageLookupByLibrary.simpleMessage("New video chat"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Next"),
        "notificationCalls": m10,
        "notificationMentions": m11,
        "notificationMessages": m12,
        "notificationNewSecretChat": MessageLookupByLibrary.simpleMessage(
            "New secret chat has been created"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Call"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Secret chat"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Scheduled message"),
        "notificationTextCall": m13,
        "notificationTextSecretChat": m14,
        "notificationsChannelChannels":
            MessageLookupByLibrary.simpleMessage("Channels"),
        "notificationsChannelGroups":
            MessageLookupByLibrary.simpleMessage("Groups"),
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
        "notificationsChannelPrivateChats":
            MessageLookupByLibrary.simpleMessage("Private chats"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Payment was successful"),
        "photo": MessageLookupByLibrary.simpleMessage("Photo"),
        "photoPrefix": m15,
        "poll": MessageLookupByLibrary.simpleMessage("Poll"),
        "pollPrefix": m16,
        "premiumGiftCode":
            MessageLookupByLibrary.simpleMessage("Premium gift code"),
        "premiumWithMonthsCount": m17,
        "proximityAlert":
            MessageLookupByLibrary.simpleMessage("Proximity alert"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Add proxy"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Disconnected"),
        "proxyConnectionLastUsedDate": m18,
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
        "scoredSomeScoreInGame": m19,
        "screenshotWasTaken":
            MessageLookupByLibrary.simpleMessage("Screenshot was taken"),
        "secondsCountPlural": m20,
        "secretChats": MessageLookupByLibrary.simpleMessage("Secret chats"),
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Select Watch Shape"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Select Theme"),
        "sharedUsers": MessageLookupByLibrary.simpleMessage("Shared users"),
        "someone": MessageLookupByLibrary.simpleMessage("Someone"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Someone was approved to join"),
        "someoneJoinedViaLink":
            MessageLookupByLibrary.simpleMessage("Someone joined via link"),
        "something": MessageLookupByLibrary.simpleMessage("Something"),
        "stickerPlainTexted": m21,
        "story": MessageLookupByLibrary.simpleMessage("Story"),
        "storyWithDuration": m22,
        "suggestedAvatar":
            MessageLookupByLibrary.simpleMessage("Suggested avatar"),
        "templateTitleRepliesBot":
            MessageLookupByLibrary.simpleMessage("Replies"),
        "templateTitleSavedMessages":
            MessageLookupByLibrary.simpleMessage("Saved Messages"),
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
        "uiScale": MessageLookupByLibrary.simpleMessage("Inteface scale"),
        "unsupported": MessageLookupByLibrary.simpleMessage("Unsupported"),
        "upgradedToSupergroup":
            MessageLookupByLibrary.simpleMessage("Upgraded to supergroup"),
        "userHasLeft": m23,
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "videoCallWithTime": m24,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Video chat invitation"),
        "videoChatWithTime": m25,
        "videoNote": MessageLookupByLibrary.simpleMessage("Video note"),
        "videoNoteWithTime": m26,
        "videoPrefix": m27,
        "voiceNote": MessageLookupByLibrary.simpleMessage("Voice note"),
        "voiceNoteWithTime": m28,
        "watchShape":
            MessageLookupByLibrary.simpleMessage("Watch screen shape"),
        "whereToScan": MessageLookupByLibrary.simpleMessage("Where to scan?"),
        "you": MessageLookupByLibrary.simpleMessage("You"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("You\'ve boosted chat")
      };
}
