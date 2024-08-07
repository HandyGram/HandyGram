import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/generated/l10n.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/client/management/multi_manager.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/overlays/notice/notice.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/home/settings/user.dart';
import 'package:handygram/src/router/router.dart';

class SettingsAccountView extends StatefulWidget {
  const SettingsAccountView({super.key});

  @override
  State<SettingsAccountView> createState() => _SettingsAccountViewState();
}

class _SettingsAccountViewState extends State<SettingsAccountView> {
  final _noticesC = StreamController<BaseNotice?>();

  void _logOut() async {
    _noticesC.add(const StringNotice("Logging out..."));
    await TdlibMultiManager.instance
        .delete(clientId: CurrentAccount.instance.clientId);
    if (TdlibMultiManager.instance.clientIds.isEmpty) {
      await TdlibMultiManager.instance.create(0);
      Settings().put(
        SettingsEntries.currentSetupStep,
        SettingsEntries.currentSetupStep.defaultValue,
      );
    }
    CurrentAccount.instance.clientId =
        TdlibMultiManager.instance.clientIds.first;

    Settings().put(
      SettingsEntries.lastDatabaseId,
      TdlibMultiManager.instance.databaseIds.first,
    );

    await router.replace('/');
  }

  void _authorize(int clientId) {
    GoRouter.of(context).push(
      Uri(
        path: "/authorization",
        queryParameters: {"destination": "/settings/account"},
      ).toString(),
      extra: TdlibMultiManager.instance.fromClientId(clientId),
    );
  }

  void _switchAccount(int clientId, bool isUnknown) {
    if (isUnknown) {
      return _authorize(clientId);
    }
    CurrentAccount.instance.clientId = clientId;
    Settings().put(
      SettingsEntries.lastDatabaseId,
      TdlibMultiManager.instance.fromClientId(clientId)!.databaseId,
    );
    router.push('/');
  }

  @override
  Widget build(BuildContext context) {
    return NoticeOverlay(
      noticeUpdates: _noticesC.stream,
      child: Scaffold(
        body: HandyListView(
          children: [
            PageHeader(title: AppLocalizations.current.accounts),
            for (final account in TdlibMultiManager.instance.clientIds)
              FutureBuilder(
                future: TdlibMultiManager.instance
                    .fromClientId(account)!
                    .providers
                    .options
                    .getMaybeCached('my_id'),
                builder: (context, snapshot) => Padding(
                  padding:
                      EdgeInsets.only(bottom: Paddings.betweenSimilarElements),
                  child: snapshot.data == null
                      ? TileButton(
                          style: TileButtonStyles.basic,
                          text:
                              "Unauthorized #${TdlibMultiManager.instance.fromClientId(account)!.databaseId}",
                          onTap: () => _switchAccount(account, true),
                        )
                      : SettingsUserButton(
                          userId: snapshot.data,
                          onTap: () => _switchAccount(account, false),
                        ),
                ),
              ),
            TileButton(
              style: TileButtonStyles.basic,
              text: AppLocalizations.current.addAccount,
              icon: const Icon(Icons.add),
              onTap: TdlibMultiManager.instance.clientIds.length >=
                      TdlibMultiManager.maxClients
                  ? null
                  : () => TdlibMultiManager.instance.create().then(
                        (id) => _authorize(id),
                      ),
            ),
            SizedBox(height: Paddings.betweenSimilarElements),
            TileButton(
              style: TileButtonStyles.error,
              text: AppLocalizations.current.logout,
              onTap: _logOut,
            ),
          ],
        ),
      ),
    );
  }
}
