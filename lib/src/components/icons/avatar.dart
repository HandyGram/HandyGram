/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/text.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.chatId,
    this.useTemplateInfoIfNeeded = false,
  });

  final int chatId;
  final bool useTemplateInfoIfNeeded;

  int _getSmallestPhotoId(List<td.PhotoSize> sizes) => sizes
      .fold(
        sizes.first,
        (initial, current) =>
            (current.width < initial.width) ? current : initial,
      )
      .photo
      .id;

  Future<Widget> _getChatImage() async {
    final stuff = CurrentAccount.providers;
    final chat = await stuff.chats.getChat(chatId);
    final me = await CurrentAccount.providers.users.getMe();
    final isMe = switch (chat.type) {
      td.ChatTypePrivate(userId: final uid) => me.id == uid,
      _ => false,
    };
    final repliesBotId = await CurrentAccount.providers.options.get(
      "replies_bot_chat_id",
    );

    IconData? templateIcon;
    if (isMe) {
      templateIcon = Icons.bookmark;
    } else if (chatId == repliesBotId) {
      templateIcon = Icons.reply;
    }
    if (templateIcon != null && useTemplateInfoIfNeeded) {
      return Container(
        decoration: BoxDecoration(
          color: ColorStyles.active.primary,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            templateIcon,
            color: ColorStyles.active.surface,
          ),
        ),
      );
    }

    int? photoId;
    if (chat.photo == null) {
      late final td.ChatPhoto? photo;
      switch (chat.type) {
        case td.ChatTypeBasicGroup(basicGroupId: final basicGroupId):
          final info = await stuff.basicGroupsFullInfo
              .getBasicGroupFullInfo(basicGroupId);
          photo = info.photo;
        case td.ChatTypeSupergroup(supergroupId: final supergroupId):
          final info = await stuff.supergroupsFullInfo
              .getSupergroupFullInfo(supergroupId);
          photo = info.photo;
        case td.ChatTypePrivate(userId: final userId):
        case td.ChatTypeSecret(userId: final userId):
          final info = await stuff.usersFullInfo.getUserFullInfo(userId);
          photo = info.photo;
      }
      if (photo != null) {
        photoId = _getSmallestPhotoId(photo.sizes);
      }
    } else {
      photoId = chat.photo!.small.id;
    }

    if (photoId == null) {
      return Container(
        decoration: BoxDecoration(
          color: ColorStyles.active.primary,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            (chat.title.characters.firstOrNull ?? "?").toUpperCase(),
            style: TextStyles.active.titleLarge!.copyWith(
              color: ColorStyles.active.onPrimary,
            ),
          ),
        ),
      );
    } else {
      final file = await stuff.files.download(
        fileId: photoId,
        synchronous: true,
        priority:
            (chat.type is td.ChatTypePrivate || chat.type is td.ChatTypeSecret)
                ? 1
                : 2,
      );
      return Image.file(
        File(file.local.path),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _getChatImage(),
      builder: (context, snapshot) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(999),
          child: Container(
            decoration: BoxDecoration(
              color: ColorStyles.active.onSurfaceVariant,
              shape: BoxShape.circle,
            ),
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: snapshot.data,
            ),
          ),
        );
      },
    );
  }
}
