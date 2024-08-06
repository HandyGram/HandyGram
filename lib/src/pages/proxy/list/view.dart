/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/scaling.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/checkbox.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/proxy/list/bloc.dart';

class ProxyListView extends StatelessWidget {
  const ProxyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    context.watch<ProxyListBloc>();
    return Scaffold(
      body: BlocBuilder<ProxyListBloc, ProxyListState>(
        builder: (context, state) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: switch (state) {
            ProxyListLoading() => Center(
                child: SizedBox(
                  height: 50 * Scaling.factor,
                  width: 50 * Scaling.factor,
                  child: const CircularProgressIndicator(),
                ),
              ),
            ProxyListUpdated(proxies: final proxies) => HandyListView(
                bottomPadding: false,
                children: [
                  PageHeader(title: l10n.proxySettingsTitle),
                  HandyCheckbox(
                    text: Text(
                      l10n.proxySettingsMainToggle,
                      style: TextStyles.active.titleMedium!.copyWith(
                        color:
                            proxies.any((e) => e.status is ProxyStatusEnabled)
                                ? Colors.white
                                : ColorStyles.active.onSurfaceVariant,
                      ),
                    ),
                    value: proxies.any((e) => e.status is ProxyStatusEnabled),
                    onChanged:
                        proxies.any((e) => e.status is ProxyStatusEnabled)
                            ? (_) => context
                                .read<ProxyListBloc>()
                                .add(const DisableProxyFromList())
                            : null,
                    useSwitch: true,
                  ),
                  SizedBox(height: Paddings.betweenSimilarElements),
                  for (final proxy in proxies) ...[
                    HandyCheckbox(
                      value: proxy.status is ProxyStatusEnabled,
                      onChanged: (v) => v
                          ? context
                              .read<ProxyListBloc>()
                              .add(EnableProxyFromList(proxy.id))
                          : context.read<ProxyListBloc>().add(
                                const DisableProxyFromList(),
                              ),
                      onBodyTap: () =>
                          GoRouter.of(context).push("/proxy?id=${proxy.id}"),
                      circle: true,
                      text: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            proxy.server,
                            style: TextStyles.active.titleSmall,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            switch (proxy.status) {
                              ProxyStatusDisabled(lastUsed: final lu) =>
                                lu == null || lu.millisecondsSinceEpoch == 0
                                    ? l10n.proxyConnectionDisconnected
                                    : l10n.proxyConnectionLastUsedDate(lu),
                              ProxyStatusEnabled(
                                connectionStatus: final status
                              ) =>
                                switch (status) {
                                  ProxyConnectionStatus.waitingForNetwork =>
                                    l10n.connectionWaitingForNetwork,
                                  ProxyConnectionStatus.connectingToProxy ||
                                  ProxyConnectionStatus.connectingToTelegram =>
                                    l10n.connectionConnecting,
                                  ProxyConnectionStatus.connected =>
                                    l10n.connectionConnected,
                                },
                            },
                            style: TextStyles.active.labelLarge!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: ColorStyles.active.secondary,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Paddings.betweenSimilarElements),
                  ],
                  TileButton(
                    text: l10n.proxyAdd,
                    icon: const Icon(Icons.add),
                    style: TileButtonStyles.basic,
                    onTap: () => GoRouter.of(context).push("/proxy"),
                  ),
                  SizedBox(height: Paddings.beforeSmallButton),
                  TileButton(
                    text: l10n.doneButton,
                    big: false,
                    onTap: () => GoRouter.of(context).pop(),
                  ),
                ],
              ),
          },
        ),
      ),
    );
  }
}
