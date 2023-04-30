import 'dart:async';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'package:handygram/src/telegram/session.dart';

void loginHandler(tdlib.TdObject object, TgSession session) async {
  if (object.getConstructor() != tdlib.UpdateAuthorizationState.constructor) {
    return;
  }
  object as tdlib.UpdateAuthorizationState;
  tdlib.AuthorizationState state = object.authorizationState;

  if (state.getConstructor() ==
      tdlib.AuthorizationStateWaitTdlibParameters.constructor) {
    state as tdlib.AuthorizationStateWaitTdlibParameters;
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
  } else if (state.getConstructor() ==
      tdlib.AuthorizationStateWaitOtherDeviceConfirmation.constructor) {
    state as tdlib.AuthorizationStateWaitOtherDeviceConfirmation;
    l.i("loginHandler", "Auth link: ${state.link}");
    if (session.authQRListener != null) {
      session.authQRListener!(state.link);
    }
    session.isLoggedInPriv = false;
  } else if (state.getConstructor() ==
      tdlib.AuthorizationStateWaitPhoneNumber.constructor) {
    if (session.authStateListener != null) {
      session.authStateListener!("showQR");
    }
    session.isLoggedInPriv = false;
  } else if (state.getConstructor() ==
      tdlib.AuthorizationStateWaitPassword.constructor) {
    if (session.authStateListener != null) {
      session.authStateListener!("password");
    }
    session.isLoggedInPriv = false;
  } else if (state.getConstructor() ==
      tdlib.AuthorizationStateReady.constructor) {
    if (session.authStateListener != null) {
      session.authStateListener!("done");
    }
    session.functions.getChatList();
    session.isLoggedInPriv = true;
  } else if (state.getConstructor() ==
      tdlib.AuthorizationStateClosed.constructor) {
    if (session.authStateListener != null) {
      session.authStateListener!("closed");
    }
    session.isLoggedInPriv = false;
  } else {
    l.w("loginHandler", "Unhandled auth state ${state.getConstructor()}");
  }
}
