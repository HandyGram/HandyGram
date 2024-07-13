import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/providers/templates/updates_provider.dart';

class StickersProvider extends TdlibDataUpdatesProvider<td.StickerSet> {
  static const String tag = "StickersProvider";

  Future<td.Sticker?> getCustomEmoji(int id) async {
    final obj = await box.invoke(td.GetCustomEmojiStickers(
      customEmojiIds: [id],
    ));
    if (obj is! td.Stickers) {
      if (obj is td.TdError) {
        l.e(tag, "Failed to get emoji $id [${obj.code}]: ${obj.message}");
        throw TdlibCoreException.fromTd(tag, obj);
      } else {
        l.e(tag, "Failed to get emoji $id: got ${obj.runtimeType}");
        throw TdlibCoreException(
            tag, "Got ${id.runtimeType} instead of td.Stickers");
      }
    }
    return obj.stickers.firstOrNull;
  }

  @override
  void updatesListener(td.TdObject obj) {
    if (obj is! td.UpdateStickerSet) return;
    update(obj.stickerSet);
  }
}
