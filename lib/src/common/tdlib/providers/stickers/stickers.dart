import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/updaters_wrappers.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class StickersProvider extends TdlibDataUpdatesProvider<td.StickerSet>
    with TdlibUpdatesProviderTypicalWrappers {
  static const String tag = "StickersProvider";

  Future<td.Sticker?> getCustomEmoji(int id) =>
      tdlibGetAnySingleWrapper<td.Stickers, td.Sticker?>(
        td.GetCustomEmojiStickers(customEmojiIds: [id]),
        transform: (stickers) => stickers.stickers.firstOrNull,
      );

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateStickerSet) return;
    update(obj.stickerSet);
  }
}
