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
import 'package:handygram/src/components/paddings.dart';
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
          const ElementsPadding(),
          TileButton(
            icon: const SvgIcon("theme"),
            text: "Interface",
            colorful: false,
            onTap: () => router.push("/settings/ui"),
          ),
          const ElementsPadding(),
          TileButton(
            icon: const SvgIcon("chat"),
            text: "Messaging",
            colorful: false,
            onTap: () => router.push("/settings/chat"),
          ),
          const ElementsPadding(),
          TileButton(
            icon: const SvgIcon("notification"),
            text: "Notifications",
            colorful: false,
            onTap: () => router.push("/settings/notifications"),
          ),
          const ElementsPadding(),
          TileButton(
            icon: const SvgIcon("storage"),
            text: "Storage",
            colorful: false,
            onTap: () => router.push("/settings/storage"),
          ),
          const ElementsPadding(),
          TileButton(
            icon: const SvgIcon("proxy"),
            text: "Proxy",
            colorful: false,
            onTap: () => router.push("/proxy_list"),
          ),
          const ElementsPadding(),
          TileButton(
            icon: const SvgIcon("info"),
            text: "About app",
            colorful: false,
            onTap: () => router.push("/settings/about"),
          ),
          const SmallButtonPadding(),
          Text(
            "HandyGram ${Settings().currentVersion} (${Settings().currentCodename})",
            style: TextStyles.active.bodyMedium!.copyWith(
              color: ColorStyles.active.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          const ElementsPadding(),
          Text(
            "${HandyNatives().gitInfo.$1}@${HandyNatives().gitInfo.$2.substring(0, 7)}",
            style: TextStyles.active.bodyMedium!.copyWith(
              color: ColorStyles.active.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          const ElementsPadding(),
          Text(
            "TDLib ${CurrentAccount.instance.user.services.defaultOptions.version}",
            style: TextStyles.active.bodyMedium!.copyWith(
              color: ColorStyles.active.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
