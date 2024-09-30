/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:meta/meta.dart';

abstract class TdlibStreamedDataProvider<T> extends TdlibDataProvider {
  static const String tag = "TdlibStreamedDataProvider";

  final StreamController<T> _statesController = StreamController.broadcast();
  late T _state = initialState;

  /// Current state of this provider
  T get state => _state;

  /// Broadcast stream with states of this provider
  late final Stream<T> states = _statesController.stream;

  /// Attached TDLib toolbox
  @protected
  late final TdlibToolbox box;

  /// Updates stream subcription
  @protected
  late final StreamSubscription subscription;

  /// Initial state of this provider
  @mustBeOverridden
  T get initialState;

  /// Report new state of this provider. To be used only by members of class.
  @protected
  void reportState(final T st) {
    _state = st;

    if (hasNoListeners) return;
    _statesController.add(st);
  }

  /// Attach TdlibToolbox to this provider. Child must call super.attach();
  @mustCallSuper
  @override
  FutureOr<void> attach(final TdlibToolbox toolbox) {
    box = toolbox;
    subscription = box.updatesStream.listen(updatesListener);
    reportState(initialState);
  }

  /// Detach TdlibToolbox from this provider. Child must call super.attach();
  @mustCallSuper
  @override
  FutureOr<void> detach(final TdlibToolbox toolbox) {
    subscription.cancel();
    _statesController.close();
  }

  /// TDLib updates listener
  @mustBeOverridden
  @visibleForOverriding
  FutureOr<void> updatesListener(final TdObject update);

  /// Has no stream listeners?
  @protected
  bool get hasNoListeners => !_statesController.hasListener;

  /// Listen to provider's states
  StreamSubscription<T> listen(
    void Function(T)? onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) =>
      states.listen(
        onData,
        onError: onError,
        onDone: onDone,
        cancelOnError: cancelOnError,
      );

  /// Wait for [state] of type [t]
  Future<T> waitForState<Y extends T>([Duration? timeout]) async {
    if (state is Y) return state;
    final states = timeout == null
        ? this.states
        : this.states.timeout(
              timeout,
              onTimeout: (sink) => sink.close(),
            );
    await for (final state in states) {
      if (state is Y) return state;
    }
    throw TdlibCoreException(tag, "Failed to wait for state $Y");
  }
}
