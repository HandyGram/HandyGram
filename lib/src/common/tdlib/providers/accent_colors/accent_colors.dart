import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/providers/templates/streamed_provider.dart';

import 'data.dart';
export 'data.dart';

class AccentColorsProvider extends TdlibStreamedDataProvider<AccentColors?> {
  @override
  AccentColors? get initialState => null;

  @override
  void updatesListener(td.TdObject update) {
    if (update is! td.UpdateAccentColors) return;
    reportState(AccentColors.fromTd(
      accentColors: update.colors,
      availableAccentColorIds: update.availableAccentColorIds,
    ));
  }
}
