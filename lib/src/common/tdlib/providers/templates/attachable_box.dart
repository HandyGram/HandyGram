import 'dart:async';

import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:meta/meta.dart';

mixin AttachableBox on TdlibDataProvider {
  @protected
  TdlibToolbox? box;

  @override
  @mustCallSuper
  FutureOr<void> attach(TdlibToolbox toolbox) {
    box = toolbox;
    return super.attach(toolbox);
  }

  @override
  @mustCallSuper
  FutureOr<void> detach(TdlibToolbox toolbox) {
    box = null;
    return super.detach(toolbox);
  }
}
