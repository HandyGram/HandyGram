import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/settings/components/bool_entry_switch.dart';
import 'package:handygram/src/pages/home/settings/components/section.dart';

class SettingsMessagingView extends StatelessWidget {
  const SettingsMessagingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: [
          PageHeader(title: AppLocalizations.current.messaging),
          HandyListViewNoWrap(
            child: SettingsSection(AppLocalizations.current.sectionAppearance),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TypicalBoolEntrySwitch(
            SettingsEntries.disableMicroAvatars,
            title: AppLocalizations.current.disableMicroAvatars,
            description: AppLocalizations.current.disableMicroAvatarsDesc,
          ),
          TypicalBoolEntrySwitch(
            SettingsEntries.disableProfileAvatars,
            title: AppLocalizations.current.disableProfileAvatars,
            description: AppLocalizations.current.disableProfileAvatarsDesc,
          ),
          SizedBox(height: Paddings.afterPageEndingWithSmallButton),
          HandyListViewNoWrap(
            child: SettingsSection(AppLocalizations.current.sectionPerformance),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          TypicalBoolEntrySwitch(
            SettingsEntries.doNotCleanupMessages,
            title: AppLocalizations.current.disableChatOptimizations,
            description: AppLocalizations.current.disableChatOptimizationsDesc,
          ),
          TypicalBoolEntrySwitch(
            SettingsEntries.useInfiniteCacheExtent,
            title: AppLocalizations.current.prerenderAllMessages,
            description: AppLocalizations.current.prerenderAllMessagesDesc,
          ),
          SizedBox(height: Paddings.beforeSmallButton),
          TileButton(
            text: AppLocalizations.current.doneButton,
            big: false,
            onTap: () => GoRouter.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
