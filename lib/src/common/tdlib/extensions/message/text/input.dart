/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/content.dart';
import 'package:handygram/src/common/tdlib/extensions/message/text/spans.dart';

extension InputMessageContentPreview on InputMessageContent {
  Future<InlineSpan> getPreview({
    Color? color,
    TextStyle? style,
  }) async {
    color ??= style?.color ?? ColorStyles.active.onSurfaceVariant;
    style ??= TextStyles.active.bodyMedium!.copyWith(color: color);
    final size = style.fontSize ?? 14;

    final l = AppLocalizations.current;
    final IconTextStyle its = (
      color: color,
      style: style,
      size: size,
    );

    return switch (this) {
      InputMessageAnimation() => iconWithTextSpan(
          l.gif,
          Icons.gif,
          its,
        ),
      InputMessageAudio() => iconWithTextSpan(
          l.audio,
          Icons.audio_file,
          its,
        ),
      InputMessageContact(contact: final contact) => iconWithTextSpan(
          squashName(contact.firstName, contact.lastName),
          Icons.person,
          its,
        ),
      InputMessageDice(emoji: final emoji) => TextSpan(text: emoji),
      InputMessageDocument() => iconWithTextSpan(
          l.document,
          Icons.insert_drive_file,
          its,
        ),
      InputMessageForwarded(
        fromChatId: final chatId,
        messageId: final messageId
      ) =>
        TextSpan(
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Icon(
                Icons.shortcut,
                size: size,
                color: color,
              ),
            ),
            const WidgetSpan(child: SizedBox(width: 4)),
            await (await CurrentAccount.providers.messages
                    .getMessage(chatId, messageId))
                .content
                .getPreview(style: style),
          ],
        ),
      InputMessageGame(gameShortName: final name) => iconWithTextSpan(
          name,
          Icons.games,
          its,
        ),
      InputMessageInvoice(title: final title) => iconWithTextSpan(
          title,
          Icons.attach_money,
          its,
        ),
      InputMessageLocation() => iconWithTextSpan(
          l.location,
          Icons.place,
          its,
        ),
      InputMessagePhoto() => iconWithTextSpan(
          l.photo,
          Icons.photo,
          its,
        ),
      InputMessagePoll(question: final question) => iconWithTextSpan(
          question.text,
          Icons.poll,
          its,
        ),
      InputMessageSticker(emoji: final emoji) => TextSpan(
          text: AppLocalizations.current.stickerPlainTexted(emoji),
          style: style,
        ),
      InputMessageStory() => iconWithTextSpan(
          l.story,
          Icons.play_arrow,
          its,
        ),
      InputMessageText(text: final text) => TextSpan(
          text: text.text,
          style: style,
        ),
      InputMessageVenue() => iconWithTextSpan(
          l.location,
          Icons.place,
          its,
        ),
      InputMessageVideo() => iconWithTextSpan(
          l.video,
          Icons.play_arrow,
          its,
        ),
      InputMessageVideoNote(duration: final seconds) => iconWithTextSpan(
          l.videoNoteWithTime(seconds.durationFromSeconds),
          Icons.play_arrow,
          its,
        ),
      InputMessageVoiceNote(duration: final seconds) => iconWithTextSpan(
          l.voiceNoteWithTime(seconds.durationFromSeconds),
          Icons.mic,
          its,
        ),
    };
  }
}
