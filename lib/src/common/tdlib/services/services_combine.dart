import 'package:handygram/src/common/tdlib/client/structures/base_service.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/services/firebase/firebase.dart';
import 'package:handygram/src/common/tdlib/services/network_type/network_type.dart';
import 'package:handygram/src/common/tdlib/services/options/options.dart';

class TdlibServicesCombine {
  static const String tag = "TdlibServicesCombine";

  final TdlibNetworkTypeService networkType = TdlibNetworkTypeService();
  final TdlibDefaultOptionsService defaultOptions =
      TdlibDefaultOptionsService();
  final TdlibFirebaseService firebase = TdlibFirebaseService();

  late final List<TdlibService> _services = !isLite
      ? [
          networkType,
          defaultOptions,
          firebase,
        ]
      : [
          defaultOptions,
        ];

  final bool isLite;

  Future<void> attach(TdlibToolbox box) async {
    for (final s in _services) {
      await s.attach(box);
    }
  }

  Future<void> detach(TdlibToolbox box) async {
    for (final s in _services) {
      await s.detach(box);
    }
  }

  Future<void> onTdlibReady() async {
    for (final s in _services) {
      await s.onTdlibReady();
    }
  }

  Future<void> onAuthorized() async {
    for (final s in _services) {
      await s.onAuthorized();
    }
  }

  TdlibServicesCombine(this.isLite);
}
