/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/misc/strings.dart';
import 'package:handygram/src/components/icons/avatar.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class _UserInfo {
  final String title;
  final String phoneNumber;
  final int id;

  const _UserInfo({
    required this.title,
    required this.phoneNumber,
    required this.id,
  });
}

class SettingsUserButton extends StatelessWidget {
  const SettingsUserButton({
    super.key,
  });

  _UserInfo _infoFromUser(td.User user) => _UserInfo(
        title: squashName(user.firstName, user.lastName),
        phoneNumber: "+${user.phoneNumber}",
        id: user.id,
      );

  Future<_UserInfo> _loadInfo(AppLocalizations l10n) async {
    final user = await CurrentAccount.providers.users.getMe();
    return _infoFromUser(user);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadii.tilesRadius,
      onTap: () => GoRouter.of(context).push("/settings/account"),
      splashColor: ColorStyles.active.onSurface.withOpacity(0.1),
      highlightColor: ColorStyles.active.onSurface.withOpacity(0.1),
      child: Ink(
        padding: EdgeInsets.all(10 * Scaling.factor),
        height: Sizes.tilesHeight,
        width: Sizes.tilesWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31 * Scaling.factor),
          color: ColorStyles.active.surface,
        ),
        child: FutureBuilder<_UserInfo>(
          future: _loadInfo(AppLocalizations.of(context)),
          builder: (context, snapshot) {
            if (!snapshot.hasData || snapshot.data == null) {
              return Center(
                child: Text(
                  snapshot.hasError ? "Error" : "Loading...",
                  style: TextStyles.active.bodyMedium,
                ),
              );
            }
            return StreamBuilder(
              initialData: snapshot.data,
              stream: CurrentAccount.providers.users
                  .filter(snapshot.data!.id)
                  .map((e) => _infoFromUser(
                        e,
                      )),
              builder: (context, snapshot) => Row(
                children: [
                  SizedBox(
                    height: 38 * Scaling.factor,
                    width: 38 * Scaling.factor,
                    child: ProfileAvatar(chatId: snapshot.data!.id),
                  ),
                  SizedBox(width: 7 * Scaling.factor),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          snapshot.data!.title,
                          maxLines: 1,
                          style: TextStyles.active.titleMedium,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                        Text(
                          snapshot.data!.phoneNumber,
                          maxLines: 1,
                          style: TextStyles.active.bodyMedium!.copyWith(
                            color: ColorStyles.active.secondary,
                          ),
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
