/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/misc/vectors.dart';
import 'package:handygram/src/components/controls/text_button.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/scaled_sizes.dart';
import 'package:handygram/src/pages/setup/bloc.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

import '../../../common/cubits/scaling.dart';

class SetupWelcomeStageView extends StatelessWidget {
  const SetupWelcomeStageView({super.key, this.state});

  final NetworkState? state;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final sz = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<SetupBloc, SetupState>(
        builder: (context, state) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: sz.height * 0.3125 * Scaling.userFactor,
                      width: sz.width * 0.3125 * Scaling.userFactor,
                      child: switch (state) {
                        SetupStateConnecting(state: final state) => switch (
                              state) {
                            NetworkState.connectingToProxy ||
                            NetworkState.connectingToServers ||
                            NetworkState.waitingForNetwork =>
                              const Center(
                                child: SizedBox(
                                  height: 30,
                                  width: 30,
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                          },
                        _ => SvgPicture(
                            AssetBytesLoader(
                              getVector('handygram_nopad'),
                            ),
                            colorFilter: ColorFilter.mode(
                              ColorStyles.active.primary,
                              BlendMode.srcIn,
                            ),
                            fit: BoxFit.fill,
                          ),
                      },
                    ),
                    SizedBox(height: Paddings.betweenSimilarElements),
                    Text(
                      switch (state) {
                        SetupStateConnecting(state: final state) => switch (
                              state) {
                            NetworkState.connectingToProxy =>
                              l10n.connectionConnectingToProxy,
                            NetworkState.connectingToServers =>
                              l10n.connectionConnecting,
                            NetworkState.waitingForNetwork =>
                              l10n.connectionWaitingForNetwork,
                          },
                        _ => l10n.handygram,
                      },
                      style: switch (state) {
                        SetupStateConnecting(state: final state) => switch (
                              state) {
                            NetworkState.connectingToProxy ||
                            NetworkState.connectingToServers ||
                            NetworkState.waitingForNetwork =>
                              TextStyles.active.labelLarge,
                          },
                        _ => TextStyles.active.titleLarge,
                      },
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: AnimatedSwitcher(
                key: const ValueKey<String>("first_setup_get_started"),
                duration: const Duration(milliseconds: 450),
                switchOutCurve: Curves.easeInOut,
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return SizeTransition(
                    sizeFactor: animation,
                    child: ScaleTransition(
                      scale: animation,
                      alignment: Alignment.center,
                      child: child,
                    ),
                  );
                },
                child: state is SetupStateWelcome
                    ? Center(
                        child: TileButton(
                          text: l10n.getStarted,
                          big: false,
                          onTap: () {
                            context
                                .read<SetupBloc>()
                                .add(const SetupEventGetStarted());
                          },
                        ),
                      )
                    : SizedBox(key: UniqueKey()),
              ),
            ),
            HandyTextButton(
              text: l10n.proxySettingsButton,
              onTap: () => GoRouter.of(context).push("/proxy_list"),
            ),
            SizedBox(height: Paddings.betweenSimilarElements),
          ],
        ),
      ),
    );
  }
}
