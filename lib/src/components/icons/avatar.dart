import 'dart:io';

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/text.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.chatId,
  });

  final int chatId;

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
