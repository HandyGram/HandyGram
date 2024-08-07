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
import 'package:handygram/src/components/scaled_sizes.dart';

class SettingsContributorTile extends StatelessWidget {
  const SettingsContributorTile({
    super.key,
    required this.name,
    required this.role,
    required this.image,
    this.chatId,
  });

  final Widget image;
  final String name;
  final String role;
  final int? chatId;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadii.tilesRadius,
      // TODO: decide do we really need some input handling here
      // important - we don't have a web browser!!
      onTap: chatId == null
          ? null
          : () {
              GoRouter.of(context).push("/chat?id=$chatId");
            },
      splashColor: ColorStyles.active.onSurface.withOpacity(0.1),
      highlightColor: ColorStyles.active.onSurface.withOpacity(0.1),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: Sizes.tilesHeight,
        ),
        child: Ink(
          padding: EdgeInsets.all(10 * Scaling.factor),
          width: Sizes.tilesWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(31 * Scaling.factor),
            color: ColorStyles.active.surface,
          ),
          child: Row(
            children: [
              SizedBox(
                height: 38 * Scaling.factor,
                width: 38 * Scaling.factor,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(999),
                  child: image,
                ),
              ),
              SizedBox(width: 7 * Scaling.factor),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      name,
                      maxLines: 1,
                      style: TextStyles.active.titleMedium,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    Text(
                      role,
                      maxLines: 2,
                      style: TextStyles.active.bodyMedium!.copyWith(
                        color: ColorStyles.active.secondary,
                      ),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      softWrap: false,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
