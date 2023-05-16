import 'dart:async';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/session.dart';

void loginHandler(tdlib.TdObject object, TgSession session) async {
  if (object is! tdlib.UpdateAuthorizationState) {
    return;
  }

  switch (object.authorizationState) {
    case tdlib.AuthorizationStateWaitTdlibParameters():
      try {
        await session.functions.setTdlibParameters(TgSession.options);
      } catch (e) {
        if (e.toString().contains("Unexpected setTdlibParameters")) {
          return;
        }
        l.e("loginHandler", "Failed to set parameters $e, trying again");
        Timer(
          const Duration(seconds: 2),
          () => loginHandler(object, session),
        );
      }
      l.i("loginHandler", "Set TDLib parameters successfully");
      break;
    case tdlib.AuthorizationStateWaitOtherDeviceConfirmation(link: var link):
      l.i("loginHandler", "Auth link: $link");
      if (session.authQRListener != null) {
        session.authQRListener!(link);
      }
      session.isLoggedInPriv = false;
      break;
    case tdlib.AuthorizationStateWaitPhoneNumber():
      if (session.authStateListener != null) {
        session.authStateListener!("showQR");
      }
      session.isLoggedInPriv = false;
      break;
    case tdlib.AuthorizationStateWaitPassword():
      if (session.authStateListener != null) {
        session.authStateListener!("password");
      }
      session.isLoggedInPriv = false;
      break;
    case tdlib.AuthorizationStateReady():
      if (session.authStateListener != null) {
        session.authStateListener!("done");
      }
      session.functions.getChatList();
      session.isLoggedInPriv = true;
      break;
    case tdlib.AuthorizationStateClosed():
      if (session.authStateListener != null) {
      session.authStateListener!("closed");
    }
    session.isLoggedInPriv = false;
    break;
    default:
      l.w("loginHandler", "Unhandled auth state ${object.authorizationState.instanceType}");
  }
}
