import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/tdlib/client/management/multi_manager.dart';
import 'package:handygram/src/common/tdlib/client/management/user_manager.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_states.dart';
import 'package:handygram/src/common/tdlib/providers/providers_combine.dart';

/// Current account's IDs.
class CurrentAccount extends Cubit<int> {
  static const String tag = "CurrentAccount";

  CurrentAccount._() : super(-1);

  set clientId(int id) {
    emit(id);
    CurrentAccount.providers.authorizationState.listen((e) async {
      if (e is AuthorizationStateLogOut) {
        await TdlibMultiManager.instance.delete(clientId: clientId);
        if (TdlibMultiManager.instance.clientIds.isEmpty) {
          await TdlibMultiManager.instance.create(0);
        } else {
          clientId = TdlibMultiManager.instance.clientIds.first;
        }
      }
    });
  }

  int get clientId => state;
  TdlibUserManager get user => TdlibMultiManager().fromClientId(clientId)!;

  static final CurrentAccount instance = CurrentAccount._();
  static TdlibProvidersCombine get providers => instance.user.providers;
  static int get currentClientId => instance.clientId;
}
