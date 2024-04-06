import 'dart:async';
import 'dart:convert';

import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/client/td/parameters.dart';
import 'package:handygram/src/common/tdlib/providers/authorization_state/authorization_states.dart';
import 'package:handygram/src/common/tdlib/providers/templates/streamed_provider.dart';

class AuthorizationStateProvider
    extends TdlibStreamedDataProvider<AuthorizationState> {
  static const String tag = "AuthorizationStateProvider";

  @override
  final initialState = const AuthorizationStateLoading(false);

  bool? _isLoggedIn;
  String? _lastQRLink;
  bool? get isLoggedIn => _isLoggedIn;
  String? get lastQRLink => _lastQRLink;

  Future<void> logout() async {
    await box.invoke(const td.LogOut());
  }

  bool _sent = false;
  Future<void> setTdlibParameters() async {
    if (_sent) return;
    late final TdlibParameters p;
    try {
      p = box.user.parameters;
    } on TdlibCoreException {
      // Caused by race condition - very stupid dirty hack
      await Future.delayed(const Duration(seconds: 1));
      p = box.user.parameters;
    }
    final r = await box.invoke(td.SetTdlibParameters(
      apiHash: p.apiHash,
      apiId: p.apiId,
      useTestDc: p.useTestDc,
      databaseDirectory: p.databaseDirectory,
      filesDirectory: p.filesDirectory,
      databaseEncryptionKey: base64.encode(p.databaseEncryptionKey),
      useFileDatabase: p.useFileDatabase,
      useChatInfoDatabase: p.useChatInfoDatabase,
      useMessageDatabase: p.useMessageDatabase,
      useSecretChats: p.useSecretChats,
      systemLanguageCode: p.systemLanguageCode,
      deviceModel: p.deviceModel,
      systemVersion: p.systemVersion,
      applicationVersion: p.applicationVersion,
    ));
    if (r is td.TdError) {
      l.e(tag, "Failed to send TDLib parameters, killing the app.");
      //exit(0);
    }
    if (r is td.Ok) {
      _sent = true;
    }
  }

  Future<void> requestQrCode() async {
    reportState(const AuthorizationStateRequestingQr());
    await box.invoke(const td.RequestQrCodeAuthentication(
      otherUserIds: [],
    ));
  }

  /// Returns check result
  Future<bool> setPassword(final String password) async {
    late td.TdObject? result;
    try {
      result =
          await box.invoke(td.CheckAuthenticationPassword(password: password));
    } catch (e) {
      l.e(tag, "Error while setting password: $e");
    }

    if (result is td.TdError) {
      if (result.code == 400) return false;
      l.e(
        tag,
        "Got TdError[${result.code}]: ${result.message} on setPassword()",
      );
      throw TdlibCoreException(tag, result.message);
    }

    return true;
  }

  void _askToShowQrCode(String link) {
    _lastQRLink = link;
    reportState(AuthorizationStateReadyToScanQr(link));
  }

  void _askToEnterPassword(String hint) {
    _lastQRLink = null;
    reportState(AuthorizationStateWaitingPassword(hint));
  }

  void _notifyAboutSuccessfulAuth() {
    _lastQRLink = null;
    reportState(const AuthorizationStateReady());
    box.user.services.onAuthorized();
  }

  void _askToRunAuthAgain() {
    reportState(const AuthorizationStateLogOut());
  }

  void _askToDestroyUI() {
    reportState(const AuthorizationStateClosed());
  }

  Future<void> _processUpdateAuthorizationState(
    final td.AuthorizationState state,
  ) async {
    switch (state) {
      case td.AuthorizationStateWaitTdlibParameters():
        l.d(tag, "Sending TDLib parameters...");
        return setTdlibParameters();
      case td.AuthorizationStateWaitPhoneNumber():
        l.d(tag, "Requesting QR...");
        _isLoggedIn = false;
        requestQrCode();
        return;
      case td.AuthorizationStateWaitOtherDeviceConfirmation(link: final link):
        l.d(tag, "Notifying UI about QR...");
        _isLoggedIn = false;
        _askToShowQrCode(link);
        return;
      case td.AuthorizationStateWaitPassword(passwordHint: final hint):
        l.d(tag, "Notifying UI about 2FA password...");
        _isLoggedIn = false;
        _askToEnterPassword(hint);
        return;
      case td.AuthorizationStateReady():
        l.d(tag, "Notifying UI about successful auth...");
        _isLoggedIn = true;
        _notifyAboutSuccessfulAuth();
        return;
      case td.AuthorizationStateLoggingOut():
        _isLoggedIn = false;
        l.d(tag, "User is logging out...");
        _askToRunAuthAgain();
        return;
      case td.AuthorizationStateClosed():
        l.d(tag, "Wisely asking UI to destroy itself...");
        _askToDestroyUI();
        return;
      default:
        return;
    }
  }

  @override
  Future<void> updatesListener(final td.TdObject update) async {
    switch (update) {
      case td.UpdateAuthorizationState(authorizationState: final state):
        _processUpdateAuthorizationState(state);
      default:
        return;
    }
  }
}
