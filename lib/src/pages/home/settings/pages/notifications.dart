import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/tdlib/services/firebase/firebase.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/settings/components/bool_entry_switch.dart';

class SettingsNotificationsView extends StatelessWidget {
  const SettingsNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseStatus = TdlibFirebaseService.status;

    return Scaffold(
      body: HandyListView(
        children: [
          PageHeader(title: AppLocalizations.current.notifications),
          TypicalBoolEntrySwitch(
            SettingsEntries.runInBackground,
            title: AppLocalizations.current.runInBackground,
            description: AppLocalizations.current.runInBackgroundDesc,
            disabled: firebaseStatus != FirebaseStatus.running,
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
