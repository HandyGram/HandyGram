/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/ui_exception.dart';
import 'package:handygram/src/common/native/channel.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_states.dart';
import 'package:handygram/src/router/router.dart';

enum NetworkState {
  waitingForNetwork,
  connectingToServers,
  connectingToProxy,
}

sealed class SetupEvent {
  const SetupEvent();
}

final class _ExitSetup extends SetupEvent {
  const _ExitSetup();
}

final class SetupEventRestart extends SetupEvent {
  const SetupEventRestart();
}

final class SetupEventBack extends SetupEvent {
  const SetupEventBack();
}

final class SetupEventGetStarted extends SetupEvent {
  const SetupEventGetStarted();
}

final class SetupEventAuthorized extends SetupEvent {
  const SetupEventAuthorized();
}

final class SetupEventSetColorScheme extends SetupEvent {
  final int colorSchemeId;
  final bool noTransition;
  const SetupEventSetColorScheme(this.colorSchemeId,
      [this.noTransition = false]);
}

final class SetupEventSetWatchShape extends SetupEvent {
  final bool isRoundScreen;
  final bool noTransition;
  const SetupEventSetWatchShape(this.isRoundScreen,
      [this.noTransition = false]);
}

final class SetupEventSetSettings extends SetupEvent {
  final bool runInBg, showNotif, disablePfps;
  final bool noTransition;
  const SetupEventSetSettings(
      {required this.runInBg,
      required this.disablePfps,
      required this.showNotif,
      this.noTransition = false});
}

sealed class SetupState {
  final int id;
  const SetupState(this.id);
}

/// First screen shown to user
final class SetupStateWelcome extends SetupState {
  const SetupStateWelcome() : super(3);
}

/// Client is connecting to Telegram
///
/// May suggest proxy if connection is setting up for more than 5 seconds
final class SetupStateConnecting extends SetupState {
  final NetworkState state;
  const SetupStateConnecting(this.state) : super(3);
}

/// Logging into account
final class SetupStateAuthorizing extends SetupState {
  const SetupStateAuthorizing() : super(3);
}

/// Screen shape setup
final class SetupStateScreenShape extends SetupState {
  final bool isRoundScreen;
  const SetupStateScreenShape(this.isRoundScreen) : super(2);
}

/// Color scheme setup
final class SetupStateColorScheme extends SetupState {
  final int currentId;
  const SetupStateColorScheme(this.currentId) : super(1);
}

/// Important settings setup
final class SetupStateSettings extends SetupState {
  final bool runInBg, enableNotif, disablePfps;
  const SetupStateSettings({
    required this.runInBg,
    required this.disablePfps,
    required this.enableNotif,
  }) : super(0);
}

/// Invalid state; setup was already finished
final class SetupStateFinished extends SetupState {
  const SetupStateFinished() : super(-1);
}

class SetupBloc extends Bloc<SetupEvent, SetupState> {
  static const String tag = "SetupBloc";

  SetupBloc() : super(_stateBySettingsAndAuth) {
    on<_ExitSetup>((_, emit) => _exit(emit));
    on<SetupEventRestart>((_, emit) => _restart(emit));
    on<SetupEventBack>((_, emit) => _back(emit));
    on<SetupEventGetStarted>((_, emit) => _connect(emit));
    on<SetupEventAuthorized>(
      (_, emit) => _nextSetupStep(
        emit,
        HandyNatives().isWearOS ? 2 : 1,
      ),
    );
    on<SetupEventSetWatchShape>((event, emit) {
      Settings().put(SettingsEntries.isRoundScreen, event.isRoundScreen);
      if (event.noTransition) {
        emit(SetupStateScreenShape(event.isRoundScreen));
        return;
      }
      return _nextSetupStep(emit);
    });
    on<SetupEventSetColorScheme>((event, emit) {
      Settings().put(SettingsEntries.colorSchemeId, event.colorSchemeId);
      ColorStyles().accentColor = event.colorSchemeId;
      if (event.noTransition) {
        emit(SetupStateColorScheme(event.colorSchemeId));
        return;
      }
      return _nextSetupStep(emit);
    });
    on<SetupEventSetSettings>((event, emit) {
      Settings().put(SettingsEntries.enableNotifications, event.showNotif);
      Settings().put(SettingsEntries.disablePFPs, event.disablePfps);
      Settings().put(SettingsEntries.runInBackground, event.runInBg);
      if (event.noTransition) {
        emit(SetupStateSettings(
          enableNotif: event.showNotif,
          disablePfps: event.disablePfps,
          runInBg: event.runInBg,
        ));
        return;
      }
      return _nextSetupStep(emit);
    });

    CurrentAccount.providers.authorizationState
        .waitForState<AuthorizationStateReady>()
        .then((_) => isClosed ? null : add(const _ExitSetup()));
  }

  void _exit(final Emitter<SetupState> emit) {
    Settings().put(SettingsEntries.currentSetupStep, -1);
    router.pushReplacement('/home');
    emit(const SetupStateFinished());
  }

  void _restart(final Emitter<SetupState> emit) {
    Settings().put(
      SettingsEntries.currentSetupStep,
      SettingsEntries.currentSetupStep.defaultValue,
    );
    Settings().put(
      SettingsEntries.colorSchemeId,
      SettingsEntries.colorSchemeId.defaultValue,
    );
    ColorStyles().accentColor = SettingsEntries.colorSchemeId.defaultValue!;
    emit(const SetupStateWelcome());
  }

  void _nextSetupStep(final Emitter<SetupState> emit, [int count = 1]) {
    final step = Settings().get(SettingsEntries.currentSetupStep) - count;
    Settings().put(SettingsEntries.currentSetupStep, step);
    if (step == -1) {
      add(const _ExitSetup());
      return;
    }
    emit(_stateBySettings);
  }

  void _back(final Emitter<SetupState> emit) {
    final step = Settings().get(SettingsEntries.currentSetupStep) + 1;
    if (step == 3) {
      // Cannot relogin in the same session
      return;
    }
    Settings().put(SettingsEntries.currentSetupStep, step);
    emit(_stateBySettings);
  }

  Future<void> _connect(final Emitter<SetupState> emit) async {
    CurrentAccount.providers.authorizationState
        .waitForState<AuthorizationStateReady>()
        .then((_) => add(const _ExitSetup()));

    final cs = CurrentAccount.providers.connectionState;
    if (_compareStates(emit, cs.state)) return;
    await for (final state in cs.states) {
      if (_compareStates(emit, state)) return;
    }
  }

  bool _compareStates(Emitter<SetupState> emit, td.ConnectionState state) {
    switch (state) {
      case td.ConnectionStateReady():
        if (CurrentAccount.providers.authorizationState.state
            is AuthorizationStateReady) {
          // Can be a case on setup restart
          add(const _ExitSetup());
        } else {
          emit(const SetupStateAuthorizing());
        }
        return true;
      case td.ConnectionStateWaitingForNetwork():
        emit(const SetupStateConnecting(NetworkState.waitingForNetwork));
      case td.ConnectionStateConnecting():
        emit(const SetupStateConnecting(NetworkState.connectingToServers));
      case td.ConnectionStateConnectingToProxy():
        emit(const SetupStateConnecting(NetworkState.connectingToProxy));
      case td.ConnectionStateUpdating():
        throw const HandyUiException(tag, "updating on setup is impossible");
    }
    return false;
  }

  static SetupState get _stateBySettingsAndAuth {
    switch (CurrentAccount.providers.authorizationState.state) {
      case AuthorizationStateRequestingQr():
      case AuthorizationStateReadyToScanQr():
        return const SetupStateWelcome();
      case AuthorizationStateWaitingPassword():
        return const SetupStateAuthorizing();
      case AuthorizationStateReady():
        return const SetupStateFinished();
      default:
        return _stateBySettings;
    }
  }

  static SetupState get _stateBySettings =>
      switch (Settings().get(SettingsEntries.currentSetupStep)) {
        3 => const SetupStateWelcome(),
        2 => SetupStateScreenShape(
            Settings().get(SettingsEntries.isRoundScreen),
          ),
        1 => SetupStateColorScheme(
            Settings().get(SettingsEntries.colorSchemeId),
          ),
        0 => SetupStateSettings(
            runInBg: Settings().get(SettingsEntries.runInBackground),
            disablePfps: Settings().get(SettingsEntries.disablePFPs),
            enableNotif: Settings().get(SettingsEntries.enableNotifications),
          ),
        -1 => const SetupStateFinished(),
        _ => const SetupStateWelcome(),
      };
}
