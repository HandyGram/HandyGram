import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';
import 'package:handy_tdlib/handy_tdlib.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/spans.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/animated_emoji.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/display.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/minithumbnail.dart';

extension MessageContentPreview on MessageContent {
  Future<InlineSpan> getPreview({
    Color? color,
    TextStyle? style,
    Color? authorColor,
    String? author,
  }) async {
    color ??= style?.color ?? ColorStyles.active.onSurfaceVariant;
    style ??= TextStyles.active.bodyMedium!.copyWith(color: color);
    final size = style.fontSize ?? 14;

    final authorSpan = TextSpan(
      text: author == null ? "" : "$author: ",
      style: style.copyWith(color: authorColor),
    );

    final IconTextStyle its = (
      color: color,
      style: style,
      size: size,
    );

    final l = AppLocalizations.current;
    return switch (this) {
      MessageAnimatedEmoji(animatedEmoji: final animated, emoji: final emoji) =>
        spanOrTextSpan(
          emoji,
          await animated.previewSpan,
          its,
          authorSpan,
        ),
      MessageAnimation(animation: final anim) => iconWithTextSpan(
          l.gif,
          Icons.gif,
          its,
          authorSpan: authorSpan,
          iconSpan: anim.minithumbnail?.getSpan(size),
        ),
      MessageAudio(audio: final audio) => iconWithTextSpan(
          audio.displayTitle,
          Icons.audio_file,
          its,
          authorSpan: authorSpan,
          iconSpan: audio.albumCoverMinithumbnail?.getSpan(size),
        ),
      MessageBasicGroupChatCreate() ||
      MessageSupergroupChatCreate() =>
        iconWithTextSpan(
          l.groupWasCreated,
          Icons.group,
          its,
          authorSpan: authorSpan,
        ),
      MessageBotWriteAccessAllowed() => TextSpan(
          text: l.botWriteAccessAllowed,
          style: style,
        ),
      MessageCall(isVideo: final isVideo, duration: final seconds) => TextSpan(
          text: isVideo
              ? l.videoCallWithTime(seconds.durationFromSeconds)
              : l.callWithTime(seconds.durationFromSeconds),
          style: style,
        ),
      MessageChatAddMembers(memberUserIds: final userIds) => TextSpan(
          text: l.chatMembersWereAdded(
            await getUserDisplayName(userIds.first),
          ),
          style: style,
        ),
      MessageChatBoost() => TextSpan(
          text: l.youHaveBoostedChat,
          style: style,
        ),
      MessageChatChangePhoto(photo: final photo) => iconWithTextSpan(
          l.avatarWasChanged,
          Icons.edit,
          its,
          iconSpan: photo.minithumbnail?.getSpan(size),
        ),
      MessageChatChangeTitle() => iconWithTextSpan(
          l.titleWasChanged,
          Icons.edit,
          its,
        ),
      MessageChatDeleteMember(userId: final userId) => TextSpan(
          text: l.userHasLeft(
            await getUserDisplayName(userId),
          ),
          style: style,
        ),
      MessageChatDeletePhoto() => iconWithTextSpan(
          l.avatarWasDeleted,
          Icons.delete,
          its,
        ),
      MessageChatJoinByLink() => TextSpan(
          text: l.someoneJoinedViaLink,
          style: style,
        ),
      MessageChatJoinByRequest() => TextSpan(
          text: l.someoneJoinedByRequest,
          style: style,
        ),
      MessageChatSetBackground() => iconWithTextSpan(
          l.bgWasChanged,
          Icons.style,
          its,
        ),
      MessageChatSetMessageAutoDeleteTime() => iconWithTextSpan(
          l.messageTtlChanged,
          Icons.alarm,
          its,
        ),
      MessageChatShared() => TextSpan(
          text: l.chatWasShared,
          style: style,
        ),
      MessageChatUpgradeFrom() || MessageChatUpgradeTo() => TextSpan(
          text: l.upgradedToSupergroup,
          style: style,
        ),
      MessageContact(contact: final contact) => iconWithTextSpan(
          squashName(contact.firstName, contact.lastName),
          Icons.person,
          its,
          authorSpan: authorSpan,
        ),
      MessageContactRegistered() => TextSpan(
          text: l.hasJoinedTelegram,
          style: style,
        ),
      MessageCustomServiceAction(text: final text) => iconWithTextSpan(
          text,
          Icons.settings,
          its,
        ),
      MessageDice(emoji: final emoji) => TextSpan(
          children: [
            authorSpan,
            TextSpan(
              text: emoji,
              style: style,
            ),
          ],
        ),
      MessageDocument(caption: final caption) => iconWithTextSpan(
          caption.text.isEmpty ? l.document : caption.text,
          Icons.file_present,
          its,
          authorSpan: authorSpan,
        ),
      MessageExpiredPhoto() => iconWithTextSpan(
          l.expiredPhoto,
          Icons.delete,
          its,
          authorSpan: authorSpan,
        ),
      MessageExpiredVideo() => iconWithTextSpan(
          l.expiredVideo,
          Icons.delete,
          its,
          authorSpan: authorSpan,
        ),
      MessageExpiredVideoNote() => iconWithTextSpan(
          l.expiredVideoNote,
          Icons.delete,
          its,
          authorSpan: authorSpan,
        ),
      MessageExpiredVoiceNote() => iconWithTextSpan(
          l.expiredVoiceNote,
          Icons.delete,
          its,
          authorSpan: authorSpan,
        ),
      MessageForumTopicCreated(name: final name) => iconWithTextSpan(
          l.newForumTopic(name),
          Icons.new_label,
          its,
        ),
      MessageForumTopicEdited(name: final name) => iconWithTextSpan(
          l.editedForumTopic(name),
          Icons.label,
          its,
        ),
      MessageForumTopicIsClosedToggled(isClosed: final isClosed) =>
        iconWithTextSpan(
          isClosed ? l.topicWasClosed : l.topicWasOpened,
          isClosed ? Icons.label_off : Icons.label,
          its,
        ),
      MessageForumTopicIsHiddenToggled(isHidden: final isHidden) =>
        iconWithTextSpan(
          isHidden ? l.topicWasHidden : l.topicWasOpened,
          isHidden ? Icons.visibility_off : Icons.visibility,
          its,
        ),
      MessageGame(game: final game) => iconWithTextSpan(
          game.shortName,
          Icons.games,
          its,
          authorSpan: authorSpan,
        ),
      MessageGameScore(score: final score) => TextSpan(children: [
          authorSpan,
          TextSpan(
            text: l.scoredSomeScoreInGame(score),
            style: style,
          ),
        ]),
      MessageGiftedPremium(monthCount: final monthCount) => iconWithTextSpan(
          l.premiumWithMonthsCount(monthCount),
          Icons.star,
          its,
          authorSpan: authorSpan,
        ),
      MessageInviteVideoChatParticipants() => TextSpan(
          children: [
            authorSpan,
            TextSpan(
              text: l.videoChatInvitation,
              style: style,
            ),
          ],
        ),
      MessageInvoice(title: final title) => iconWithTextSpan(
          title,
          Icons.attach_money,
          its,
        ),
      MessageLocation() => iconWithTextSpan(
          l.location,
          Icons.place,
          its,
        ),
      MessagePaymentSuccessful() => TextSpan(
          text: l.paymentSuccessful,
          style: style,
        ),
      MessagePhoto(caption: final caption, photo: final photo) =>
        iconWithTextSpan(
          caption.text.isEmpty ? l.photo : caption.text,
          Icons.photo,
          its,
          iconSpan: photo.minithumbnail?.getSpan(size),
          authorSpan: authorSpan,
        ),
      MessagePinMessage() => TextSpan(
          text: l.messageWasPinned,
          style: style,
        ),
      MessagePoll(poll: final poll) => iconWithTextSpan(
          poll.question,
          Icons.poll,
          its,
          authorSpan: authorSpan,
        ),
      MessagePremiumGiftCode() => iconWithTextSpan(
          l.premiumGiftCode,
          Icons.star,
          its,
          authorSpan: authorSpan,
        ),
      MessagePremiumGiveaway() => iconWithTextSpan(
          l.giveaway,
          Icons.star,
          its,
          authorSpan: authorSpan,
        ),
      MessagePremiumGiveawayCompleted() => iconWithTextSpan(
          l.giveawayFinished,
          Icons.star,
          its,
          authorSpan: authorSpan,
        ),
      MessagePremiumGiveawayCreated() => iconWithTextSpan(
          l.giveaway,
          Icons.star,
          its,
          authorSpan: authorSpan,
        ),
      MessagePremiumGiveawayWinners() => iconWithTextSpan(
          l.giveawayWinners,
          Icons.star,
          its,
          authorSpan: authorSpan,
        ),
      MessageProximityAlertTriggered() => TextSpan(
          text: l.proximityAlert,
          style: style,
        ),
      MessageScreenshotTaken() => TextSpan(
          text: l.screenshotWasTaken,
          style: style,
        ),
      MessageSticker(sticker: final sticker) => TextSpan(children: [
          authorSpan,
          TextSpan(
            text: l.stickerPlainTexted(sticker.emoji),
            style: style,
          ),
        ]),
      MessageStory() => TextSpan(children: [
          authorSpan,
          TextSpan(
            text: l.story,
            style: style,
          ),
        ]),
      MessageSuggestProfilePhoto(photo: final photo) => iconWithTextSpan(
          l.suggestedAvatar,
          Icons.photo,
          its,
          iconSpan: photo.minithumbnail?.getSpan(size),
        ),
      MessageText(text: final text) => TextSpan(children: [
          authorSpan,
          TextSpan(
            text: text.text,
            style: style,
          ),
        ]),
      MessageUsersShared() => TextSpan(
          text: l.sharedUsers,
          style: style,
        ),
      MessageVenue() => iconWithTextSpan(
          l.location,
          Icons.place,
          its,
          authorSpan: authorSpan,
        ),
      MessageVideo(caption: final caption, video: final video) =>
        iconWithTextSpan(
          caption.text.isEmpty ? l.video : caption.text,
          Icons.play_arrow,
          its,
          authorSpan: authorSpan,
          iconSpan: video.minithumbnail?.getSpan(size),
        ),
      MessageVideoChatEnded(duration: final seconds) => TextSpan(
          text: l.videoChatWithTime(
            "${seconds ~/ 60}:${seconds % 60}",
          ),
          style: style,
        ),
      MessageVideoChatStarted() => TextSpan(
          text: l.newVideoChat,
          style: style,
        ),
      MessageVideoChatScheduled() => TextSpan(
          text: l.scheduledVideoChat,
          style: style,
        ),
      MessageVideoNote(
        videoNote: final videoNote,
      ) =>
        iconWithTextSpan(
          l.videoNoteWithTime(videoNote.duration.durationFromSeconds),
          Icons.play_arrow,
          its,
          authorSpan: authorSpan,
          iconSpan: videoNote.minithumbnail?.getSpan(size, 99),
        ),
      MessageVoiceNote(
        voiceNote: final voiceNote,
      ) =>
        iconWithTextSpan(
          l.voiceNoteWithTime(voiceNote.duration.durationFromSeconds),
          Icons.mic,
          its,
          authorSpan: authorSpan,
        ),
      MessageChatSetTheme() => TextSpan(
          text: l.changedTheme,
          style: style,
        ),
      MessagePassportDataSent() => TextSpan(
          text: l.tgPassport,
          style: style,
        ),
      MessageWebAppDataReceived() ||
      MessageWebAppDataSent() ||
      MessagePaymentSuccessfulBot() ||
      MessagePassportDataReceived() ||
      MessageUnsupported() =>
        iconWithTextSpan(
          l.unsupported,
          Icons.error,
          its,
          authorSpan: authorSpan,
        ),
    };
  }
}
