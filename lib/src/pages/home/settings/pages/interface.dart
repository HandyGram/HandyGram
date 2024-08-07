import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/settings/components/section.dart';

class SettingsInterfaceView extends StatefulWidget {
  const SettingsInterfaceView({super.key});

  @override
  State<SettingsInterfaceView> createState() => _SettingsInterfaceViewState();
}

class _SettingsInterfaceViewState extends State<SettingsInterfaceView> {
  void _selectColor(int id) {
    ColorStyles.instance.accentColor = id;
    Settings().put(SettingsEntries.colorSchemeId, id);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final itemSize = size.shortestSide * 0.27 * Scaling.userFactor;

    return Scaffold(
      body: HandyListView(
        children: [
          PageHeader(title: AppLocalizations.current.interface),
          HandyListViewNoWrap(
            child: SettingsSection(AppLocalizations.current.colorScheme),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (final color in ColorStyles.accentColors) ...[
                  InkWell(
                    onTap: () => _selectColor(
                      ColorStyles.accentColors.indexOf(color),
                    ),
                    splashColor: Theme.of(context).splashColor,
                    borderRadius: BorderRadius.circular(999),
                    child: Ink(
                      width: itemSize,
                      height: itemSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color.primary,
                      ),
                      child: (ColorStyles.active == color)
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
                    SizedBox(width: 5 * Scaling.factor)
                ]
              ],
            ),
          ),
          SizedBox(height: Paddings.beforeSmallButton),
          HandyListViewNoWrap(
            child: SettingsSection(AppLocalizations.current.watchShape),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Paddings.tilesHorizontalPadding,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(999),
                  splashColor: Theme.of(context).splashColor,
                  onTap: () => setState(() {
                    Settings().put(SettingsEntries.isRoundScreen, true);
                  }),
                  child: Ink(
                    width: itemSize,
                    height: itemSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Settings().get(SettingsEntries.isRoundScreen)
                          ? ColorStyles.active.primary
                          : ColorStyles.active.surface,
                    ),
                    child: Settings().get(SettingsEntries.isRoundScreen)
                        ? Center(
                            child: Icon(
                              Icons.done,
                              size: itemSize / 2,
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
                  onTap: () => setState(() {
                    Settings().put(SettingsEntries.isRoundScreen, false);
                  }),
                  child: Ink(
                    width: itemSize,
                    height: itemSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(17),
                      color: !Settings().get(SettingsEntries.isRoundScreen)
                          ? ColorStyles.active.primary
                          : ColorStyles.active.surface,
                    ),
                    child: !Settings().get(SettingsEntries.isRoundScreen)
                        ? Center(
                            child: Icon(
                              Icons.done,
                              size: itemSize / 2,
                              color: ColorStyles.active.onPrimary,
                            ),
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: Paddings.beforeSmallButton),
          HandyListViewNoWrap(
            child: SettingsSection(AppLocalizations.current.uiScale),
          ),
          SizedBox(height: Paddings.betweenSimilarElements),
          Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Paddings.tilesHorizontalPadding,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TileButton(
                    big: false,
                    style: TileButtonStyles.basic,
                    icon: const Icon(Icons.remove),
                    onTap: TextStyles.instance.rawScale <= 0.7
                        ? null
                        : () {
                            TextStyles.instance.scale =
                                max(0.7, TextStyles.instance.rawScale - 0.05);
                          },
                  ),
                  Text(
                    "${(TextStyles.instance.rawScale * 100).toStringAsFixed(0)}%",
                    style: TextStyles.active.titleLarge,
                  ),
                  TileButton(
                    big: false,
                    icon: const Icon(Icons.add),
                    style: TileButtonStyles.basic,
                    onTap: TextStyles.instance.rawScale >= 1.2
                        ? null
                        : () {
                            TextStyles.instance.scale =
                                min(1.2, TextStyles.instance.rawScale + 0.05);
                          },
                  ),
                ],
              )),
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
