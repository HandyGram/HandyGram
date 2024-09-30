import 'dart:math';

import 'package:flutter/material.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/settings/setting.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class SettingsIntPicker<T extends num> extends StatelessWidget {
  const SettingsIntPicker(
    this.setting, {
    super.key,
    required this.step,
    required this.minValue,
    required this.maxValue,
    required this.title,
    this.description,
    this.onChanged,
  });

  final Setting<T> setting;
  final String title;
  final String? description;

  final T step;
  final T minValue, maxValue;

  final Function(T)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Paddings.tilesHorizontalPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.active.titleSmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          if (description != null)
            Text(
              description!,
              style: TextStyles.active.labelLarge!.copyWith(
                fontWeight: FontWeight.w500,
                color: ColorStyles.active.secondary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          SizedBox(height: Paddings.betweenSimilarElements),
          AnimatedBuilder(
            animation: Settings(),
            builder: (context, _) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TileButton(
                  big: false,
                  style: TileButtonStyles.basic,
                  icon: const Icon(Icons.remove),
                  onTap: Settings().get(setting) <= minValue
                      ? null
                      : () {
                          final newValue =
                              max(minValue, Settings().get(setting) - step);
                          Settings().put(setting, newValue);
                          onChanged?.call(newValue as T);
                        },
                ),
                Text(
                  T is int
                      ? Settings().get(setting).toString()
                      : Settings().get(setting).toStringAsFixed(1),
                  style: TextStyles.active.titleLarge,
                ),
                TileButton(
                  big: false,
                  icon: const Icon(Icons.add),
                  style: TileButtonStyles.basic,
                  onTap: Settings().get(setting) >= maxValue
                      ? null
                      : () {
                          final newValue =
                              min(maxValue, Settings().get(setting) + step);
                          Settings().put(setting, newValue);
                          onChanged?.call(newValue as T);
                        },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
