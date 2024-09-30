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

  static String m0(version, codename) => "Version ${version} (${codename})";

  static String m1(title) => "Audio: ${title}";

  static String m2(time) => "Call (${time})";

  static String m3(error) => "Failed to load chat: ${error}";

  static String m4(user) => "${user} and others were added";

  static String m5(id) => "Message ${id} was not found";

  static String m6(name) => "Contact: ${name}";

  static String m7(caption) => "[Document] ${caption}";

  static String m8(name) => "Edited \"${name}\" topic";

  static String m9(count) =>
      "${count} forwarded ${Intl.plural(count, one: 'message', other: 'messages')}";

  static String m10(name) => "New \"${name}\" topic";

  static String m11(count) =>
      "${count} incoming ${Intl.plural(count, one: 'call', other: 'calls')}";

  static String m12(count) =>
      "${count} unread ${Intl.plural(count, one: 'mention', other: 'mentions')}";

  static String m13(count) =>
      "${count} unread ${Intl.plural(count, one: 'message', other: 'messages')}";

  static String m14(name) => "${name} is calling you...";

  static String m15(name) => "${name} has just created a secret chat with you!";

  static String m16(caption) => "[Photo] ${caption}";

  static String m17(caption) => "[Poll] ${caption}";

  static String m18(version) => "Powered by TDLib ${version}";

  static String m19(count) =>
      "Premium (${count} ${Intl.plural(count, one: 'month', other: 'months')})";

  static String m20(date) => "Last used: ${date}";

  static String m21(score) => "Scored ${score} in game";

  static String m22(count) =>
      "${Intl.plural(count, one: 'second', other: 'seconds')}";

  static String m23(count) =>
      "${count} Telegram ${Intl.plural(count, one: 'Star', other: 'Stars')}";

  static String m24(emoji) => "${emoji} Sticker";

  static String m25(time) => "Story (${time})";

  static String m26(user) => "${user} has left";

  static String m27(time) => "Video call (${time})";

  static String m28(time) => "Video chat (${time})";

  static String m29(time) => "Video note (${time})";

  static String m30(caption) => "[Video] ${caption}";

  static String m31(time) => "Voice note (${time})";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "aboutApp": MessageLookupByLibrary.simpleMessage("About app"),
        "accounts": MessageLookupByLibrary.simpleMessage("Accounts"),
        "addAccount": MessageLookupByLibrary.simpleMessage("Add account"),
        "album": MessageLookupByLibrary.simpleMessage("Album"),
        "appVersion": m0,
        "audio": MessageLookupByLibrary.simpleMessage("Audio"),
        "audioPrefix": m1,
        "avatarWasChanged":
            MessageLookupByLibrary.simpleMessage("Avatar was changed"),
        "avatarWasDeleted":
            MessageLookupByLibrary.simpleMessage("Avatar was deleted"),
        "bgWasChanged":
            MessageLookupByLibrary.simpleMessage("Background was changed"),
        "botWriteAccessAllowed": MessageLookupByLibrary.simpleMessage(
            "Bot has been allowed to write messages"),
        "callWithTime": m2,
        "calls": MessageLookupByLibrary.simpleMessage("Calls"),
        "changedTheme": MessageLookupByLibrary.simpleMessage("Change theme"),
        "channelDescription":
            MessageLookupByLibrary.simpleMessage("News and updates"),
        "chatBlocLoadingError": m3,
        "chatInfoBot": MessageLookupByLibrary.simpleMessage("Bot info"),
        "chatInfoChannel": MessageLookupByLibrary.simpleMessage("Channel info"),
        "chatInfoGroup": MessageLookupByLibrary.simpleMessage("Group info"),
        "chatInfoPersonal":
            MessageLookupByLibrary.simpleMessage("Profile info"),
        "chatListHeaderArchive":
            MessageLookupByLibrary.simpleMessage("Archive"),
        "chatListHeaderFolder": MessageLookupByLibrary.simpleMessage("Folder"),
        "chatListHeaderMain": MessageLookupByLibrary.simpleMessage("All chats"),
        "chatMembersWereAdded": m4,
        "chatViewMessageNotFoundError": m5,
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
        "contactPrefix": m6,
        "createButton": MessageLookupByLibrary.simpleMessage("Create"),
        "createProxy": MessageLookupByLibrary.simpleMessage("New Proxy"),
        "disableChatOptimizations":
            MessageLookupByLibrary.simpleMessage("Disable chat cleanup"),
        "disableChatOptimizationsDesc": MessageLookupByLibrary.simpleMessage(
            "Do not cleanup invisible messages in chats"),
        "disableMicroAvatars":
            MessageLookupByLibrary.simpleMessage("Disable small avatars"),
        "disableMicroAvatarsDesc":
            MessageLookupByLibrary.simpleMessage("The ones nearby user names"),
        "disableProfileAvatars":
            MessageLookupByLibrary.simpleMessage("Disable avatars"),
        "disableProfileAvatarsDesc":
            MessageLookupByLibrary.simpleMessage("Shown in chat lists"),
        "document": MessageLookupByLibrary.simpleMessage("Document"),
        "documentPrefix": m7,
        "doneButton": MessageLookupByLibrary.simpleMessage("Done"),
        "draftPrefix": MessageLookupByLibrary.simpleMessage("Draft: "),
        "editProxy": MessageLookupByLibrary.simpleMessage("Edit Proxy"),
        "editedForumTopic": m8,
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
        "folderIsEmpty":
            MessageLookupByLibrary.simpleMessage("Folder is empty"),
        "forwardedMessagesPlural": m9,
        "getStarted": MessageLookupByLibrary.simpleMessage("Get Started"),
        "gif": MessageLookupByLibrary.simpleMessage("GIF"),
        "giveaway": MessageLookupByLibrary.simpleMessage("Giveaway"),
        "giveawayFinished":
            MessageLookupByLibrary.simpleMessage("Giveaway finished"),
        "giveawayWinners":
            MessageLookupByLibrary.simpleMessage("Giveaway winners"),
        "groupStickers": MessageLookupByLibrary.simpleMessage("Group stickers"),
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
        "messaging": MessageLookupByLibrary.simpleMessage("Messaging"),
        "newForumTopic": m10,
        "newVideoChat": MessageLookupByLibrary.simpleMessage("New video chat"),
        "nextButton": MessageLookupByLibrary.simpleMessage("Next"),
        "notificationActionMarkAsRead":
            MessageLookupByLibrary.simpleMessage("Mark as read"),
        "notificationActionReplyHint":
            MessageLookupByLibrary.simpleMessage("Message"),
        "notificationCalls": m11,
        "notificationMentions": m12,
        "notificationMessages": m13,
        "notificationNewSecretChat": MessageLookupByLibrary.simpleMessage(
            "New secret chat has been created"),
        "notificationSingleTitleCall":
            MessageLookupByLibrary.simpleMessage("Call"),
        "notificationSingleTitleNewSecretChat":
            MessageLookupByLibrary.simpleMessage("Secret chat"),
        "notificationSingleTitleScheduledMessage":
            MessageLookupByLibrary.simpleMessage("Scheduled message"),
        "notificationTextCall": m14,
        "notificationTextSecretChat": m15,
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
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
        "officialChannel":
            MessageLookupByLibrary.simpleMessage("Official channel"),
        "optimizeStorageUsage":
            MessageLookupByLibrary.simpleMessage("Optimize storage"),
        "optmizing": MessageLookupByLibrary.simpleMessage("Optimizing..."),
        "paidMedia": MessageLookupByLibrary.simpleMessage("Paid media"),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "paymentRefunded":
            MessageLookupByLibrary.simpleMessage("Payment was refunded"),
        "paymentSuccessful":
            MessageLookupByLibrary.simpleMessage("Payment was successful"),
        "photo": MessageLookupByLibrary.simpleMessage("Photo"),
        "photoPrefix": m16,
        "poll": MessageLookupByLibrary.simpleMessage("Poll"),
        "pollPrefix": m17,
        "poweredByTdlib": m18,
        "premiumGiftCode":
            MessageLookupByLibrary.simpleMessage("Premium gift code"),
        "premiumWithMonthsCount": m19,
        "prerenderAllMessages":
            MessageLookupByLibrary.simpleMessage("Pre-render all messages"),
        "prerenderAllMessagesDesc": MessageLookupByLibrary.simpleMessage(
            "May help with jumping messages list issue"),
        "proximityAlert":
            MessageLookupByLibrary.simpleMessage("Proximity alert"),
        "proxyAdd": MessageLookupByLibrary.simpleMessage("Add proxy"),
        "proxyConnectionDisconnected":
            MessageLookupByLibrary.simpleMessage("Disconnected"),
        "proxyConnectionLastUsedDate": m20,
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
        "recentStickers":
            MessageLookupByLibrary.simpleMessage("Recent stickers"),
        "removeButton": MessageLookupByLibrary.simpleMessage("Remove"),
        "roleDesigner": MessageLookupByLibrary.simpleMessage("UX/UI designer"),
        "roleFounder":
            MessageLookupByLibrary.simpleMessage("Founder & developer"),
        "roleTranslators":
            MessageLookupByLibrary.simpleMessage("All of our translators!"),
        "roleTranslatorsTitle":
            MessageLookupByLibrary.simpleMessage("Crowdin translators"),
        "runInBackground":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "runInBackgroundDesc":
            MessageLookupByLibrary.simpleMessage("Enable Firebase service"),
        "scheduledVideoChat":
            MessageLookupByLibrary.simpleMessage("Scheduled video chat"),
        "scoredSomeScoreInGame": m21,
        "screenshotWasTaken":
            MessageLookupByLibrary.simpleMessage("Screenshot was taken"),
        "secondsCountPlural": m22,
        "secretChats": MessageLookupByLibrary.simpleMessage("Secret chats"),
        "sectionAppearance": MessageLookupByLibrary.simpleMessage("Appearance"),
        "sectionPerformance":
            MessageLookupByLibrary.simpleMessage("Performance"),
        "selectShapeTitle":
            MessageLookupByLibrary.simpleMessage("Select Watch Shape"),
        "selectThemeTitle":
            MessageLookupByLibrary.simpleMessage("Select Theme"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "sendFile": MessageLookupByLibrary.simpleMessage("Send file"),
        "sendMediaGIFTitle": MessageLookupByLibrary.simpleMessage("Pick a GIF"),
        "sendMediaPhotoTitle":
            MessageLookupByLibrary.simpleMessage("Pick a photo"),
        "sendMediaStickerTitle":
            MessageLookupByLibrary.simpleMessage("Pick a sticker"),
        "sendTextMessageTitle":
            MessageLookupByLibrary.simpleMessage("Type a message"),
        "sendVoiceMessageTitle":
            MessageLookupByLibrary.simpleMessage("Record voice note"),
        "settings": MessageLookupByLibrary.simpleMessage("Settings"),
        "sharedUsers": MessageLookupByLibrary.simpleMessage("Shared users"),
        "someone": MessageLookupByLibrary.simpleMessage("Someone"),
        "someoneJoinedByRequest": MessageLookupByLibrary.simpleMessage(
            "Someone was approved to join"),
        "someoneJoinedViaLink":
            MessageLookupByLibrary.simpleMessage("Someone joined via link"),
        "something": MessageLookupByLibrary.simpleMessage("Something"),
        "starsWithCount": m23,
        "stickerPlainTexted": m24,
        "stickersCountInRow":
            MessageLookupByLibrary.simpleMessage("Media count per row"),
        "stickersCountInRowDesc":
            MessageLookupByLibrary.simpleMessage("Used in media pickers"),
        "storage": MessageLookupByLibrary.simpleMessage("Storage"),
        "storageFreeSpace": MessageLookupByLibrary.simpleMessage("Free space"),
        "storageHandyGramData":
            MessageLookupByLibrary.simpleMessage("HandyGram data"),
        "storageNonHandyGram":
            MessageLookupByLibrary.simpleMessage("Other apps"),
        "story": MessageLookupByLibrary.simpleMessage("Story"),
        "storyWithDuration": m25,
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
        "userHasLeft": m26,
        "video": MessageLookupByLibrary.simpleMessage("Video"),
        "videoCallWithTime": m27,
        "videoChatInvitation":
            MessageLookupByLibrary.simpleMessage("Video chat invitation"),
        "videoChatWithTime": m28,
        "videoNote": MessageLookupByLibrary.simpleMessage("Video note"),
        "videoNoteWithTime": m29,
        "videoPrefix": m30,
        "voiceNote": MessageLookupByLibrary.simpleMessage("Voice note"),
        "voiceNoteWithTime": m31,
        "watchShape":
            MessageLookupByLibrary.simpleMessage("Watch screen shape"),
        "whereToScan": MessageLookupByLibrary.simpleMessage("Where to scan?"),
        "you": MessageLookupByLibrary.simpleMessage("You"),
        "youHaveBoostedChat":
            MessageLookupByLibrary.simpleMessage("You\'ve boosted chat")
      };
}
