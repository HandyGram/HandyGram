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
import 'package:handygram/src/common/tdlib/extensions/misc/display.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/int.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/minithumbnail.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class MicroAvatar extends StatelessWidget {
  const MicroAvatar({
    super.key,
    required this.sender,
  });

  final td.MessageSender sender;

  int _getSmallestPhotoId(List<td.PhotoSize> sizes) => sizes
      .fold(
        sizes.first,
        (initial, current) =>
            (current.width < initial.width) ? current : initial,
      )
      .photo
      .id;

  Future<(int, dynamic)> _getByChatId(int chatId) async {
    final chat = await chatId.asChat;
    if (chat.photo == null) {
      late final td.ChatPhoto? photo;
      late final int priority;
      switch (chat.type) {
        case td.ChatTypeBasicGroup(basicGroupId: final basicGroupId):
          final info = await basicGroupId.asBasicGroupFullInfo;
          photo = info.photo;
          priority = 2;
        case td.ChatTypeSupergroup(supergroupId: final supergroupId):
          final info = await supergroupId.asSupergroupFullInfo;
          photo = info.photo;
          priority = 2;
        case td.ChatTypePrivate(userId: final userId):
        case td.ChatTypeSecret(userId: final userId):
          final info = await userId.asUserFullInfo;
          photo = info.photo;
          priority = 1;
      }
      if (photo != null) {
        return (
          priority,
          //photo.minithumbnail ?? _getSmallestPhotoId(photo.sizes),
          _getSmallestPhotoId(photo.sizes),
        );
      }
    } else {
      //return (2, chat.photo?.minithumbnail ?? chat.photo?.small.id);
      return (2, chat.photo?.small.id);
    }

    return (-1, chat.title);
  }

  Future<dynamic> _getByUserId(int userId) async {
    final user = await userId.asUser;
    final photo = user.profilePhoto;
    if (photo != null) {
      //return photo.minithumbnail ?? photo.small.id;
      return photo.small.id;
    }
    return user.displayName;
  }

  Future<Widget> _getChatImage() async {
    final stuff = CurrentAccount.providers;

    dynamic photoObj;
    int? priority;
    try {
      switch (sender) {
        case td.MessageSenderChat(chatId: final chatId):
          (priority, photoObj) = await _getByChatId(chatId);
        case td.MessageSenderUser(userId: final userId):
          photoObj = await _getByUserId(userId);
      }
    } catch (_) {
      photoObj = null;
    }

    switch (photoObj) {
      // No photo, chat title has been returned
      case String():
        return Container(
          decoration: BoxDecoration(
            color: ColorStyles.active.primary,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              (photoObj.characters.firstOrNull ?? "?").toUpperCase(),
              style: TextStyles.active.labelLarge!.copyWith(
                color: ColorStyles.active.onPrimary,
                height: 1,
              ),
            ),
          ),
        );
      case td.Minithumbnail():
        return photoObj.asWidget(
          Sizes.microAvatarDiameter,
          Sizes.microAvatarDiameter / 2,
        );
      case int():
        final file = await stuff.files.download(
          fileId: photoObj,
          synchronous: true,
          priority: priority ?? 2,
        );
        return Image.file(
          File(file.local.path),
          width: Sizes.microAvatarDiameter,
          height: Sizes.microAvatarDiameter,
        );
      default:
        return Container(
          decoration: BoxDecoration(
            color: ColorStyles.active.error,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.error,
            size: Sizes.microAvatarDiameter * 0.7,
            color: ColorStyles.active.onError,
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _getChatImage(),
      builder: (context, snapshot) {
        return SizedBox.square(
          dimension: Sizes.microAvatarDiameter,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: Container(
              decoration: BoxDecoration(
                color: ColorStyles.active.onSurfaceVariant,
              ),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 250),
                child: snapshot.data,
              ),
            ),
          ),
        );
      },
    );
  }
}
