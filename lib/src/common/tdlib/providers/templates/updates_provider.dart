/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';

import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/providers/templates/attachable_box.dart';
import 'package:meta/meta.dart';

abstract class TdlibDataUpdatesProvider<T> extends TdlibDataProvider
    with AttachableBox {
  static const String tag = "TdlibDataUpdatesProvider";

  late final StreamController<T> _updatesController =
      StreamController.broadcast(
    sync: isSync,
  );

  /// Use synchronous stream?
  bool get isSync => false;

  /// Broadcast stream with updates of this provider
  late final Stream<T> updates = _updatesController.stream;

  /// TDLib updates stream subcription
  @protected
  late final StreamSubscription subscription;

  /// Report an update of this provider's data. To be used only by members of class.
  @protected
  void update(final T st) {
    _updatesController.add(st);
  }

  /// Attach TdlibToolbox to this provider. Child must call super.attach();
  @mustCallSuper
  @override
  FutureOr<void> attach(final TdlibToolbox toolbox) async {
    await super.attach(toolbox);
    subscription = box!.updatesStream.listen(updatesListener);
  }

  /// Detach TdlibToolbox from this provider. Child must call super.attach();
  @mustCallSuper
  @override
  FutureOr<void> detach(final TdlibToolbox toolbox) async {
    await super.detach(toolbox);
    subscription.cancel();
    _updatesController.close();
  }

  /// TDLib updates listener
  @mustBeOverridden
  @visibleForOverriding
  FutureOr<void> updatesListener(final TdObject obj);
}
