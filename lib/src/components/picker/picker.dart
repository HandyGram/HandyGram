/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';

class ValuePickable<T> {
  final String title;
  final T value;

  const ValuePickable({
    required this.title,
    required this.value,
  });
}

class ValuePicker<T> extends StatelessWidget {
  const ValuePicker({
    super.key,
    required this.values,
    required this.currentValue,
    required this.onSelected,
    this.title,
    this.pickerHint,
  }) : assert(values.length > 1);

  final List<ValuePickable<T>> values;
  final T currentValue;
  final Function(T) onSelected;

  final String? title;
  final String? pickerHint;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: Sizes.tilesHeight,
      ),
      child: InkWell(
        borderRadius: BorderRadii.tilesRadius,
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Dialog.fullscreen(
              insetAnimationDuration: const Duration(milliseconds: 300),
              backgroundColor: Colors.black,
              child: SizedBox.expand(
                child: HandyListView(
                  controller: ScrollController(
                    initialScrollOffset: pickerHint == null ? 40 : 0,
                  ),
                  children: [
                    if (pickerHint != null)
                      PageHeader(title: pickerHint!)
                    else
                      SizedBox(height: Paddings.afterPage),
                    ...values.map(
                      (e) => Padding(
                        padding: EdgeInsets.only(bottom: 5 * Scaling.factor),
                        child: TileButton(
                          text: e.title,
                          style: e.value == currentValue
                              ? TileButtonStyles.gradient
                              : TileButtonStyles.basic,
                          onTap: () {
                            GoRouter.of(context).pop();
                            onSelected(e.value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Ink(
          width: Sizes.tilesWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadii.tilesRadius,
            color: Theme.of(context).colorScheme.surface,
          ),
          padding: const EdgeInsets.only(
                left: 16,
                right: 12,
                top: 5,
                bottom: 5,
              ) *
              Scaling.factor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      textAlign: TextAlign.left,
                      style: TextStyles.active.labelLarge!.copyWith(
                        fontWeight: FontWeight.w500,
                        color: ColorStyles.active.secondary,
                      ),
                      maxLines: 1,
                    ),
                  Text(
                    values.firstWhere((e) => e.value == currentValue).title,
                    style: TextStyles.active.titleSmall,
                    maxLines: 1,
                  ),
                ],
              ),
              const Icon(
                Icons.arrow_drop_down,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
