/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/display.dart';

extension StringPushMessageContent on td.PushMessageContent {
  String get plainText {
    final l = AppLocalizations.current;
    return switch (this) {
      td.PushMessageContentAnimation() => l.gif,
      td.PushMessageContentAudio(audio: final audio) =>
        audio == null ? l.audio : l.audioPrefix(audio.displayTitle),
      td.PushMessageContentBasicGroupChatCreate() => l.groupWasCreated,
      td.PushMessageContentChatAddMembers(memberName: final name) =>
        l.chatMembersWereAdded(name),
      td.PushMessageContentChatChangePhoto() => l.avatarWasChanged,
      td.PushMessageContentChatChangeTitle() => l.titleWasChanged,
      td.PushMessageContentChatDeleteMember(memberName: final name) =>
        l.userHasLeft(name),
      td.PushMessageContentChatJoinByLink() => l.someoneJoinedViaLink,
      td.PushMessageContentChatJoinByRequest() => l.someoneJoinedByRequest,
      td.PushMessageContentChatSetBackground() => l.bgWasChanged,
      td.PushMessageContentChatSetTheme() => l.changedTheme,
      td.PushMessageContentContact(name: final name) => l.contactPrefix(name),
      td.PushMessageContentContactRegistered() => l.hasJoinedTelegram,
      td.PushMessageContentDocument() => l.document,
      td.PushMessageContentGame(title: final title) => title,
      td.PushMessageContentGameScore(score: final score) =>
        l.scoredSomeScoreInGame(score),
      td.PushMessageContentInvoice() => l.invoice,
      td.PushMessageContentLocation() => l.location,
      td.PushMessageContentPhoto(caption: final caption) =>
        caption.isNotEmpty ? l.photoPrefix(caption) : l.photo,
      td.PushMessageContentPoll(question: final question) =>
        l.pollPrefix(question),
      td.PushMessageContentPremiumGiftCode() => l.premiumGiftCode,
      td.PushMessageContentPremiumGiveaway() => l.giveaway,
      td.PushMessageContentScreenshotTaken() => l.screenshotWasTaken,
      td.PushMessageContentSticker(emoji: final emoji) =>
        l.stickerPlainTexted(emoji),
      td.PushMessageContentStory() => l.story,
      td.PushMessageContentSuggestProfilePhoto() => l.suggestedAvatar,
      td.PushMessageContentText(text: final text) => text,
      td.PushMessageContentVideo(caption: final caption) =>
        caption.isEmpty ? l.video : l.videoPrefix(caption),
      td.PushMessageContentVoiceNote(voiceNote: final vn) => vn == null
          ? l.voiceNote
          : l.voiceNoteWithTime(vn.duration.durationFromSeconds),
      td.PushMessageContentVideoNote(videoNote: final vn) => vn == null
          ? l.videoNote
          : l.videoNoteWithTime(vn.duration.durationFromSeconds),
      td.PushMessageContentHidden() => l.hiddenContent,
      td.PushMessageContentRecurringPayment() => l.paymentSuccessful,
      td.PushMessageContentMessageForwards(totalCount: final count) =>
        l.forwardedMessagesPlural(count),
      td.PushMessageContentMediaAlbum() => l.album,
    };
  }
}
