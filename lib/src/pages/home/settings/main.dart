/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/icons/svg.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/settings/user.dart';

class SettingsMain extends StatelessWidget {
  const SettingsMain({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: [
          const PageHeader(title: "Settings"),
          const SettingsUserButton(),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            icon: const SvgIcon("theme"),
            text: "Interface",
            colorful: false,
            onTap: () => router.push("/settings/ui"),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            icon: const SvgIcon("chat"),
            text: "Messaging",
            colorful: false,
            onTap: () => router.push("/settings/chat"),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            icon: const SvgIcon("notification"),
            text: "Notifications",
            colorful: false,
            onTap: () => router.push("/settings/notifications"),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            icon: const SvgIcon("storage"),
            text: "Storage",
            colorful: false,
            onTap: () => router.push("/settings/storage"),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            icon: const SvgIcon("proxy"),
            text: "Proxy",
            colorful: false,
            onTap: () => router.push("/proxy_list"),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TileButton(
            icon: const SvgIcon("info"),
            text: "About app",
            colorful: false,
            onTap: () => router.push("/settings/about"),
          ),
          SizedBox(height: Paddings.beforeSmallButton),
          Text(
            "HandyGram ${Settings().currentVersion} (${Settings().currentCodename})",
            style: TextStyles.active.bodyMedium!.copyWith(
              color: ColorStyles.active.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          Text(
            "${HandyNatives().gitInfo.$1}@${HandyNatives().gitInfo.$2.substring(0, 7)}",
            style: TextStyles.active.bodyMedium!.copyWith(
              color: ColorStyles.active.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          FutureBuilder(
            future: CurrentAccount.providers.options.get("version"),
            builder: (context, sn) => Text(
              "TDLib ${sn.data ?? "unknown"}",
              style: TextStyles.active.bodyMedium!.copyWith(
                color: ColorStyles.active.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
