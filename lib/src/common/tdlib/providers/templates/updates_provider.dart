import 'dart:async';

import 'package:handy_tdlib/api.dart';
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:meta/meta.dart';

abstract class TdlibDataUpdatesProvider<T> extends TdlibDataProvider {
  static const String tag = "TdlibDataUpdatesProvider";

  late final StreamController<T> _updatesController =
      StreamController.broadcast(
    sync: isSync,
  );

  /// Use synchronous stream?
  bool get isSync => false;

  /// Broadcast stream with updates of this provider
  late final Stream<T> updates = _updatesController.stream;

  /// Attached TDLib toolbox
  @protected
  late final TdlibToolbox box;

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
  FutureOr<void> attach(final TdlibToolbox toolbox) {
    box = toolbox;
    subscription = box.updatesStream.listen(updatesListener);
  }

  /// Detach TdlibToolbox from this provider. Child must call super.attach();
  @mustCallSuper
  @override
  FutureOr<void> detach(final TdlibToolbox toolbox) {
    subscription.cancel();
    _updatesController.close();
  }

  /// TDLib updates listener
  @mustBeOverridden
  @visibleForOverriding
  FutureOr<void> updatesListener(final TdObject obj);
}
