import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/paddings.dart';

class QrInstructionPage extends StatelessWidget {
  const QrInstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Text(
              l10n.qrInstruction,
              textAlign: TextAlign.center,
            ),
          ),
          const SmallButtonPadding(),
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
