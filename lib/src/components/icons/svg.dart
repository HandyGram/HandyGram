/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/misc/vectors.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class SvgIcon extends StatelessWidget {
  const SvgIcon(this.name, {super.key, this.color});

  final String name;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture(
      AssetBytesLoader(
        getVector(name),
      ),
      width: Theme.of(context).iconTheme.size ?? 29 * Scaling.factor,
      height: Theme.of(context).iconTheme.size ?? 29 * Scaling.factor,
      colorFilter: ColorFilter.mode(
        color ??
            Theme.of(context).iconTheme.color ??
            ColorStyles.active.onSurface,
        BlendMode.srcIn,
      ),
      clipBehavior: Clip.antiAlias,
      fit: BoxFit.fill,
    );
  }
}
