import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/vectors.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/components/icons/avatar.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/settings/components/contributor.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class SettingsAboutView extends StatelessWidget {
  const SettingsAboutView({super.key});

  static const int _handygramChannelId = -1001668898519;

  Widget _text(String text) => Text(
        text,
        style: TextStyles.active.labelLarge?.copyWith(
          color: ColorStyles.active.onSurfaceVariant,
          fontWeight: FontWeight.w500,
        ),
      );

  @override
  Widget build(BuildContext context) {
    final size = Scaling.screenSize.shortestSide * 0.3125 * Scaling.userFactor;
    return Scaffold(
      body: HandyListView(
        children: [
          PageHeader(title: AppLocalizations.current.aboutApp),
          SizedBox(
            height: size,
            width: size,
            child: SvgPicture(
              AssetBytesLoader(
                getVector('handygram_nopad'),
              ),
              colorFilter: ColorFilter.mode(
                ColorStyles.active.primary,
                BlendMode.srcIn,
              ),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          Text(
            AppLocalizations.current.handygram,
            style: TextStyles.active.bodyLarge,
          ),
          SizedBox(height: Paddings.afterPageEndingWithSmallButton),
          SettingsContributorTile(
            image: Image.asset("assets/images/tdrkdev.jpg"),
            name: "tdrkDev",
            role: AppLocalizations.current.roleFounder,
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          SettingsContributorTile(
            image: Image.asset("assets/images/souic.jpg"),
            name: "SOUIC",
            role: AppLocalizations.current.roleDesigner,
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          SettingsContributorTile(
            image: const ProfileAvatar(chatId: _handygramChannelId),
            name: AppLocalizations.current.officialChannel,
            role: AppLocalizations.current.channelDescription,
            chatId: _handygramChannelId,
          ),
          SizedBox(height: Paddings.afterPageEndingWithSmallButton),
          FutureBuilder(
            future: CurrentAccount.providers.options.getMaybeCached('version'),
            builder: (context, snapshot) => _text(
              AppLocalizations.current.poweredByTdlib(snapshot.data.toString()),
            ),
          ),
          _text(AppLocalizations.current.appVersion(
            Settings().currentVersion,
            Settings().currentCodename,
          )),
        ],
      ),
    );
  }
}
