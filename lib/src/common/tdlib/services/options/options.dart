import 'dart:async';

import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';

class TdlibDefaultOptionsService extends TdlibService {
  static const String tag = "TdlibDefaultOptionsService";

  late final String version;

  final Map<String, dynamic> _options = {
    // For Firebase
    "notification_group_count_max": 5,
    "notification_group_size_max": 3,

    // I'm too lazy to implement Markdown parser
    "always_parse_markdown": true,

    // P.S. they'll still be shown as thumbnails :p
    "disable_animated_emoji": false,

    // "...which significantly reduces disk usage"
    "disable_time_adjustment_protection": true,

    // No scheduled messages support is planned
    "disable_sent_scheduled_message_notifications": true,

    // Why not
    "use_storage_optimizer": true,
  };

  TdlibToolbox? _box;

  @override
  Future<void> attach(TdlibToolbox toolbox) async {
    _box = toolbox;
  }

  @override
  void detach(TdlibToolbox toolbox) {
    _box = null;
  }

  @override
  FutureOr<void> onTdlibReady() async {
    version = await _box?.user.providers.options.get("version");
    for (final option in _options.entries) {
      await _box?.user.providers.options.set(option.key, option.value);
    }
  }
}
