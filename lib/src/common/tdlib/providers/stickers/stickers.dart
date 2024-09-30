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

  Future<td.StickerSet> getStickerSet(int id) =>
      tdlibGetAnySingleBasicWrapper<td.StickerSet>(td.GetStickerSet(setId: id));

  Future<List<td.StickerSetInfo>> getInstalledStickerSets() =>
      tdlibGetAnySingleWrapper<td.StickerSets, List<td.StickerSetInfo>>(
        const td.GetInstalledStickerSets(stickerType: td.StickerTypeRegular()),
        transform: (stickerSets) => stickerSets.sets,
      );

  Future<List<td.Sticker>> getRecentStickers() =>
      tdlibGetAnySingleWrapper<td.Stickers, List<td.Sticker>>(
        const td.GetRecentStickers(isAttached: false),
        transform: (stickers) => stickers.stickers,
      );

  @override
  void updatesListener(td.TdObject obj) {
    if (hasNoListeners) return;
    if (obj is! td.UpdateStickerSet) return;
    update(obj.stickerSet);
  }
}
