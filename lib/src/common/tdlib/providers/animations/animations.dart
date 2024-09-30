import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/client/structures/base_provider.dart';
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/templates/attachable_box.dart';

class AnimationsProvider extends TdlibDataProvider
    with AttachableBox, TdlibUpdatesProviderTypicalWrappers {
  Future<List<td.Animation>> getSavedAnimations() =>
      tdlibGetAnySingleWrapper<td.Animations, List<td.Animation>>(
        const td.GetSavedAnimations(),
        transform: (source) => source.animations,
      );
}
