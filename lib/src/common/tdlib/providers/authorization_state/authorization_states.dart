sealed class AuthorizationState {
  const AuthorizationState();
}

final class AuthorizationStateLoading extends AuthorizationState {
  final bool sentTdlibParameters;
  const AuthorizationStateLoading(this.sentTdlibParameters);
}

final class AuthorizationStateRequestingQr extends AuthorizationState {
  const AuthorizationStateRequestingQr();
}

final class AuthorizationStateReadyToScanQr extends AuthorizationState {
  final String qrLink;
  const AuthorizationStateReadyToScanQr(this.qrLink);
}

final class AuthorizationStateWaitingPassword extends AuthorizationState {
  final String hint;
  const AuthorizationStateWaitingPassword(this.hint);
}

final class AuthorizationStateReady extends AuthorizationState {
  const AuthorizationStateReady();
}

final class AuthorizationStateLogOut extends AuthorizationState {
  const AuthorizationStateLogOut();
}

final class AuthorizationStateClosed extends AuthorizationState {
  const AuthorizationStateClosed();
}
