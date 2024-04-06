import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/components/list/page_indicator.dart';
import 'package:handygram/src/pages/setup/bloc.dart';
import 'package:handygram/src/pages/setup/stages/authorization/authorization.dart';
import 'package:handygram/src/pages/setup/stages/color_scheme.dart';
import 'package:handygram/src/pages/setup/stages/settings.dart';
import 'package:handygram/src/pages/setup/stages/shape.dart';
import 'package:handygram/src/pages/setup/stages/welcome.dart';

class SetupView extends StatelessWidget {
  const SetupView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupBloc, SetupState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 600),
          switchInCurve: Curves.fastEaseInToSlowEaseOut,
          switchOutCurve: Curves.fastLinearToSlowEaseIn,
          transitionBuilder: (child, animation) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: const Offset(0, 0),
              ).animate(animation),
              child: child,
            );
          },
          child: switch (state) {
            SetupStateWelcome() => const SetupWelcomeStageView(
                key: ValueKey<String>("setup_welcome"),
              ),
            SetupStateConnecting(state: final state) => SetupWelcomeStageView(
                state: state,
                key: const ValueKey<String>("setup_welcome"),
              ),
            SetupStateAuthorizing() => const AuthorizationPage(
                key: ValueKey<String>("setup_auth_root"),
              ),
            SetupStateColorScheme() ||
            SetupStateSettings() ||
            SetupStateScreenShape() =>
              PageIndicator(
                currentPage: switch (state) {
                      SetupStateScreenShape() => 0,
                      SetupStateColorScheme() => 1,
                      SetupStateSettings() => 2,
                      _ => 0,
                    } -
                    (HandyNatives().isWearOS ? 1 : 0),
                pageCount: HandyNatives().isWearOS ? 2 : 3,
                child: switch (state) {
                  SetupStateColorScheme(currentId: final id) =>
                    SetupStageColorSchemeView(
                      currentId: id,
                      key: const ValueKey<String>("setup_colors"),
                    ),
                  SetupStateScreenShape(isRoundScreen: final isRound) =>
                    SetupStageScreenShapeView(
                      isRoundScreen: isRound,
                      key: const ValueKey<String>("setup_shape"),
                    ),
                  SetupStateSettings(
                    runInBg: final runInBg,
                    disablePfps: final disablePfps,
                    enableNotif: final enableNotif,
                  ) =>
                    SetupStageSettingsView(
                      runInBg: runInBg,
                      disablePfps: disablePfps,
                      enableNotif: enableNotif,
                      key: const ValueKey<String>("setup_settings"),
                    ),
                  _ => Container(),
                },
              ),
            SetupStateFinished() => Container(
                key: const ValueKey<String>("setup_placeholder"),
              ),
          },
        );
      },
    );
  }
}
