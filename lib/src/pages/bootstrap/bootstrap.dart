/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/misc/vectors.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_states.dart';
import 'package:handygram/src/common/tdlib/runner/runner.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

/// Starts TDLib with atleast one client, showing pretty loading animation.
class BootstrapPage extends StatefulWidget {
  const BootstrapPage({super.key});

  @override
  State<BootstrapPage> createState() => _BootstrapPageState();
}

class _BootstrapPageState extends State<BootstrapPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ac = AnimationController(
    value: 0,
    duration: const Duration(milliseconds: 700),
    vsync: this,
  );

  Future<void> _run() async {
    await TdlibRunner.fromUIThread();
    if (mounted) {
      await loadLocalizations(Localizations.localeOf(context));
    }
    final authStates = CurrentAccount.providers.authorizationState;
    if (authStates.isLoggedIn == null) {
      statesLoop:
      await for (final state in authStates.states) {
        switch (state) {
          case AuthorizationStateLoading():
            continue;
          default:
            break statesLoop;
        }
      }
    }
  }

  bool _stopAnim = false;

  @override
  void dispose() {
    _ac.dispose();
    super.dispose();
  }

  Future<void> _animate() async {
    await _ac.animateTo(
      1,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
    while (mounted || !_stopAnim) {
      await _ac.animateTo(
        0.95,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
      if (_stopAnim || !mounted) break;
      await _ac.animateTo(
        1,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void _waitForTd() async {
    await _run();
    _stopAnim = true;
    await _ac.animateTo(
      0,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
    if (mounted) {
      final payload = HandyNatives().launchPayload;
      if (CurrentAccount.providers.authorizationState.state
              is! AuthorizationStateReady ||
          Settings().get(SettingsEntries.currentSetupStep) != -1) {
        GoRouter.of(context).pushReplacement("/setup");
      } else if (payload != null) {
        GoRouter.of(context).pushReplacement(
          "/home?openChatId=${payload.chatId}&openUserId=${payload.userId}",
        );
        HandyNatives().disposeLaunchPayload();
      } else {
        GoRouter.of(context).pushReplacement("/home");
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _animate();
    _waitForTd();
  }

  @override
  Widget build(BuildContext context) {
    final sz = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AnimatedBuilder(
          animation: _ac,
          builder: (context, _) => SizedBox(
            height: sz.height * 0.7 * _ac.value,
            width: sz.width * 0.7 * _ac.value,
            child: SvgPicture(
              AssetBytesLoader(
                getVector('handygram_nopad'),
              ),
              colorFilter: ColorFilter.mode(
                  ColorStyles.active.primary.withOpacity(_ac.value),
                  BlendMode.srcIn),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
