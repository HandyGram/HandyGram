/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/controls/checkbox.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
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
          SizedBox(height: Paddings.betweenSimilarElements),
          HandyCheckbox(
            value: !disablePfps,
            useSwitch: true,
            onChanged: (v) => _update(context, runInBg, enableNotif, !v),
            text: Text(
              "Profile pictures",
              style: TextStyles.active.titleMedium,
            ),
          ),
          SizedBox(height: Paddings.beforeSmallButton),
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
