import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_state.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_states.dart';

sealed class AuthorizationBlocEvent {
  const AuthorizationBlocEvent();
}

class RequestQrCode extends AuthorizationBlocEvent {
  const RequestQrCode();
}

class SetPassword extends AuthorizationBlocEvent {
  final String password;
  const SetPassword(this.password);
}

sealed class AuthorizationBlocState {
  const AuthorizationBlocState();
}

class AuthorizationBlocStateRequestingQr extends AuthorizationBlocState {
  const AuthorizationBlocStateRequestingQr();
}

class AuthorizationBlocStateQr extends AuthorizationBlocState {
  final String qrLink;
  const AuthorizationBlocStateQr(this.qrLink);
}

class AuthorizationBlocStateWaitingPassword extends AuthorizationBlocState {
  final String hint;
  const AuthorizationBlocStateWaitingPassword(this.hint);
}

class AuthorizationBlocStateLoadingPassword extends AuthorizationBlocState {
  final String hint;
  const AuthorizationBlocStateLoadingPassword(this.hint);
}

class AuthorizationBlocStateIncorrectPassword extends AuthorizationBlocState {
  final String hint;
  const AuthorizationBlocStateIncorrectPassword(this.hint);
}

class AuthorizationBlocStateErrorPassword extends AuthorizationBlocState {
  final String error;
  final String hint;
  const AuthorizationBlocStateErrorPassword(this.error, this.hint);
}

class AuthorizationBlocStateSuccess extends AuthorizationBlocState {
  const AuthorizationBlocStateSuccess();
}

class AuthorizationBloc
    extends Bloc<AuthorizationBlocEvent, AuthorizationBlocState> {
  static const String tag = "AuthorizationBloc";

  AuthorizationBloc() : super(const AuthorizationBlocStateRequestingQr()) {
    on<RequestQrCode>(_requestQrCode);
    on<SetPassword>(_setPassword);
  }

  String hint = "";

  Future<void> _requestQrCode(
    RequestQrCode _,
    Emitter<AuthorizationBlocState> emit,
  ) async {
    // Auth may be incomplete
    if (_auth.state is AuthorizationStateWaitingPassword) {
      hint = (_auth.state as AuthorizationStateWaitingPassword).hint;
      emit(AuthorizationBlocStateWaitingPassword(hint));
      return;
    }

    // Setup was completed already
    if (_auth.state is AuthorizationStateReady) {
      emit(const AuthorizationBlocStateSuccess());
      return;
    }

    if (_auth.lastQRLink == null) {
      emit(const AuthorizationBlocStateRequestingQr());
      _auth.requestQrCode();
    } else {
      emit(AuthorizationBlocStateQr(_auth.lastQRLink!));
    }

    await for (final i in _auth.states) {
      if (i is AuthorizationStateReadyToScanQr) {
        emit(AuthorizationBlocStateQr(i.qrLink));
      }
      if (i is AuthorizationStateReady) {
        emit(const AuthorizationBlocStateSuccess());
        break;
      }
      if (i is AuthorizationStateWaitingPassword) {
        hint = i.hint;
        emit(AuthorizationBlocStateWaitingPassword(i.hint));
        break;
      }
    }
  }

  Future<void> _setPasswordReadyListener(
      Emitter<AuthorizationBlocState> emit) async {
    await for (final i in _auth.states) {
      if (i is AuthorizationStateReady) {
        emit(const AuthorizationBlocStateSuccess());
        return;
      }
    }
  }

  Future<void> _setPassword(
    SetPassword event,
    Emitter<AuthorizationBlocState> emit,
  ) async {
    emit(AuthorizationBlocStateLoadingPassword(hint));

    // Start future before setPassword to be on time with broadcast stream
    final op = CancelableOperation.fromFuture(_setPasswordReadyListener(emit));

    try {
      final isCorrect = await _auth.setPassword(event.password);
      if (!isCorrect) {
        emit(AuthorizationBlocStateIncorrectPassword(hint));
        op.cancel();
        return;
      }
    } on TdlibCoreException catch (e) {
      emit(AuthorizationBlocStateErrorPassword(e.message, hint));
    }
  }

  final AuthorizationStateProvider _auth =
      CurrentAccount.providers.authorizationState;
}
