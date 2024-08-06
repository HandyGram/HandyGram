/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/tdlib/extensions/misc/display.dart';
import 'package:handygram/src/components/icons/avatar.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class _UserInfo {
  final String title;
  final String phoneNumber;
  final int id;
  final bool isMe;

  const _UserInfo({
    required this.title,
    required this.phoneNumber,
    required this.id,
    required this.isMe,
  });
}

class SettingsUserButton extends StatefulWidget {
  const SettingsUserButton({
    super.key,
    required this.userId,
    this.onTap,
  });

  final int? userId;
  final Function()? onTap;

  @override
  State<SettingsUserButton> createState() => _SettingsUserButtonState();
}

class _SettingsUserButtonState extends State<SettingsUserButton> {
  StreamSubscription? _sub;
  _UserInfo? _info;

  _UserInfo _getUserInfo(td.User user, int myUserId) => _UserInfo(
        title: user.displayName,
        phoneNumber: "+${user.phoneNumber}",
        id: user.id,
        isMe: widget.userId == myUserId,
      );

  Future<void> _loadInfo() async {
    final user = widget.userId == null
        ? await CurrentAccount.providers.users.getMe()
        : await CurrentAccount.providers.users.getUser(widget.userId!);
    final myUserId =
        await CurrentAccount.providers.options.getMaybeCached('my_id');
    _info = _getUserInfo(user, myUserId);

    if (!mounted || !context.mounted) return;

    setState(() {});
    _sub ??= CurrentAccount.providers.users.filter(user.id).listen((user) {
      if (!mounted || !context.mounted) {
        _sub?.cancel();
        return;
      }

      setState(() {
        _info = _getUserInfo(user, myUserId);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _loadInfo();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadii.tilesRadius,
      onTap: widget.onTap,
      splashColor: ColorStyles.active.onSurface.withOpacity(0.1),
      highlightColor: ColorStyles.active.onSurface.withOpacity(0.1),
      child: Ink(
        padding: EdgeInsets.all(10 * Scaling.factor),
        height: Sizes.tilesHeight,
        width: Sizes.tilesWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(31 * Scaling.factor),
          gradient: LinearGradient(
            colors: [
              _info?.isMe ?? false
                  ? ColorStyles.active.onSurfaceVariant
                  : ColorStyles.active.surface,
              ColorStyles.active.surface,
            ],
          ),
        ),
        child: _info == null
            ? Center(
                child: Text(
                  "Loading...",
                  style: TextStyles.active.bodyMedium,
                ),
              )
            : Row(
                children: [
                  ProfileAvatar(chatId: _info!.id),
                  SizedBox(width: 7 * Scaling.factor),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          _info!.title,
                          maxLines: 1,
                          style: TextStyles.active.titleMedium,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        ),
                        Text(
                          _info!.phoneNumber,
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
      ),
    );
  }
}
