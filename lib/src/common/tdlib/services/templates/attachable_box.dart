import 'dart:async';

import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:meta/meta.dart';

mixin ServiceWithAttachableBox on TdlibService {
  @protected
  TdlibToolbox? box;

  @override
  @mustCallSuper
  FutureOr<void> attach(TdlibToolbox toolbox) async {
    box = toolbox;
  }

  @override
  @mustCallSuper
  FutureOr<void> detach(TdlibToolbox toolbox) {
    box = null;
  }
}
