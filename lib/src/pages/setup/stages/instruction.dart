/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';

class QrInstructionPage extends StatelessWidget {
  const QrInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: [
          SizedBox(height: 40 * Scaling.factor),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 22) * Scaling.factor,
            child: Text(
              l10n.qrInstruction,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: Paddings.beforeSmallButton),
          TileButton(
            big: false,
            text: l10n.closeButton,
            onTap: () => GoRouter.of(context).pop(),
          ),
        ],
      ),
    );
  }
}
