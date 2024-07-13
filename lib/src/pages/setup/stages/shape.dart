/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/setup/bloc.dart';

class SetupStageScreenShapeView extends StatelessWidget {
  const SetupStageScreenShapeView({super.key, required this.isRoundScreen});

  final bool isRoundScreen;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final iconsSize = size.shortestSide * 0.27 * Scaling.userFactor;
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: Column(
        children: [
          PageHeader(title: l10n.selectShapeTitle),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(999),
                splashColor: Theme.of(context).splashColor,
                onTap: () => context
                    .read<SetupBloc>()
                    .add(const SetupEventSetWatchShape(true, true)),
                child: Ink(
                  width: iconsSize,
                  height: iconsSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isRoundScreen
                        ? ColorStyles.active.primary
                        : ColorStyles.active.surface,
                  ),
                  child: isRoundScreen
                      ? Center(
                          child: Icon(
                            Icons.done,
                            size: iconsSize / 2,
                            color: ColorStyles.active.onPrimary,
                          ),
                        )
                      : null,
                ),
              ),
              SizedBox(width: 10 * Scaling.factor),
              InkWell(
                borderRadius: BorderRadius.circular(999),
                splashColor: Theme.of(context).splashColor,
                onTap: () => context
                    .read<SetupBloc>()
                    .add(const SetupEventSetWatchShape(false, true)),
                child: Ink(
                  width: iconsSize,
                  height: iconsSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(17),
                    color: !isRoundScreen
                        ? ColorStyles.active.primary
                        : ColorStyles.active.surface,
                  ),
                  child: !isRoundScreen
                      ? Center(
                          child: Icon(
                            Icons.done,
                            size: iconsSize / 2,
                            color: ColorStyles.active.onPrimary,
                          ),
                        )
                      : null,
                ),
              ),
            ],
          ),
          SizedBox(height: Paddings.beforeSmallButton),
          Expanded(
            child: Center(
              child: TileButton(
                text: l10n.nextButton,
                big: false,
                onTap: () => context
                    .read<SetupBloc>()
                    .add(SetupEventSetWatchShape(isRoundScreen, false)),
              ),
            ),
          ),
          SizedBox(height: Paddings.beforeSmallButton),
        ],
      ),
    );
  }
}
