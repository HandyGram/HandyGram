import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/overlays/notice/notice.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/settings/components/storage.dart';

class SettingsStorageView extends StatefulWidget {
  const SettingsStorageView({super.key});

  @override
  State<SettingsStorageView> createState() => _SettingsStorageViewState();
}

class _SettingsStorageViewState extends State<SettingsStorageView> {
  final _notices = StreamController<BaseNotice?>();

  void _optimize() async {
    _notices.add(StringNotice(AppLocalizations.current.optmizing));
    await CurrentAccount.providers.storage.optimize();
    if (mounted && context.mounted) setState(() {});
    // sometimes optimization may be instant
    await Future.delayed(const Duration(seconds: 1));
    _notices.add(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoticeOverlay(
        noticeUpdates: _notices.stream,
        child: HandyListView(
          children: [
            PageHeader(title: AppLocalizations.current.storage),
            const StorageStats(),
            SizedBox(height: Paddings.afterPageEndingWithSmallButton),
            TileButton(
              text: AppLocalizations.current.optimizeStorageUsage,
              onTap: _optimize,
            ),
            SizedBox(height: Paddings.beforeSmallButton),
            TileButton(
              text: AppLocalizations.current.doneButton,
              big: false,
              onTap: () => GoRouter.of(context).pop(),
            ),
          ],
        ),
      ),
    );
  }
}
