import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/paddings.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/setup/bloc.dart';

class SetupStageColorSchemeView extends StatelessWidget {
  const SetupStageColorSchemeView({super.key, required this.currentId});

  final int currentId;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final itemSize = size.shortestSide * 0.27;
    final l10n = AppLocalizations.of(context);
    final state = context.watch<SetupBloc>().state;
    return Scaffold(
      body: Column(
        children: [
          const PageHeader(title: "Select color scheme"),
          SizedBox(
            height: itemSize,
            // lmao, flutter team, make a horizontal ListWheelScrollView
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final color in ColorStyles.accentColors) ...[
                    InkWell(
                      splashColor: Theme.of(context).splashColor,
                      onTap: () => context.read<SetupBloc>().add(
                            SetupEventSetColorScheme(
                                ColorStyles.accentColors.indexOf(color), true),
                          ),
                      borderRadius: BorderRadius.circular(999),
                      child: Ink(
                        width: itemSize,
                        height: itemSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color.primary,
                        ),
                        child: (state is SetupStateColorScheme &&
                                state.currentId ==
                                    ColorStyles.accentColors.indexOf(color))
                            ? Center(
                                child: Icon(
                                  Icons.done,
                                  size: itemSize / 2,
                                  color: color.onPrimary,
                                ),
                              )
                            : null,
                      ),
                    ),
                    if (ColorStyles.accentColors.indexOf(color) !=
                        ColorStyles.accentColors.length - 1)
                      const SizedBox(width: 5)
                  ]
                ],
              ),
            ),
          ),
          const SmallButtonPadding(),
          Expanded(
            child: Center(
              child: TileButton(
                text: l10n.nextButton,
                big: false,
                onTap: () => context
                    .read<SetupBloc>()
                    .add(SetupEventSetColorScheme(currentId, false)),
              ),
            ),
          ),
          const SmallButtonPadding(),
        ],
      ),
    );
  }
}
