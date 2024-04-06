import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/components/controls/checkbox.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/paddings.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/setup/bloc.dart';

class SetupStageSettingsView extends StatelessWidget {
  const SetupStageSettingsView({
    super.key,
    required this.runInBg,
    required this.enableNotif,
    required this.disablePfps,
  });

  final bool runInBg, enableNotif, disablePfps;

  void _update(
    BuildContext context,
    bool runInBg,
    bool enableNotif,
    bool disablePfps, [
    bool update = true,
  ]) {
    context.read<SetupBloc>().add(SetupEventSetSettings(
          runInBg: runInBg,
          disablePfps: disablePfps,
          showNotif: enableNotif,
          noTransition: update,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: [
          const PageHeader(title: "Important settings"),
          HandyCheckbox(
            value: runInBg,
            useSwitch: true,
            onChanged: (v) => _update(context, v, enableNotif, disablePfps),
            text: Text(
              "Background service",
              style: TextStyles.active.titleMedium,
            ),
          ),
          const ElementsPadding(),
          HandyCheckbox(
            value: !disablePfps,
            useSwitch: true,
            onChanged: (v) => _update(context, runInBg, enableNotif, !v),
            text: Text(
              "Profile pictures",
              style: TextStyles.active.titleMedium,
            ),
          ),
          const SmallButtonPadding(),
          TileButton(
            text: "Done",
            big: false,
            onTap: () =>
                _update(context, runInBg, enableNotif, disablePfps, false),
          ),
        ],
      ),
    );
  }
}
