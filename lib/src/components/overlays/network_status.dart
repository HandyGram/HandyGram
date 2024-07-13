import 'package:flutter/material.dart';
import 'package:handy_tdlib/handy_tdlib.dart' as td;
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/overlays/notice/notice.dart';

class NetworkStatusOverlay extends StatelessWidget {
  const NetworkStatusOverlay({
    super.key,
    required this.child,
  });

  final Widget child;

  StringNotice? _stateToNotice(td.ConnectionState state) {
    final l10n = AppLocalizations.current;
    final string = switch (state) {
      td.ConnectionStateConnecting() => l10n.connectionConnecting,
      td.ConnectionStateConnectingToProxy() => l10n.connectionConnectingToProxy,
      td.ConnectionStateWaitingForNetwork() => l10n.connectionWaitingForNetwork,
      td.ConnectionStateUpdating() => l10n.connectionUpdating,
      td.ConnectionStateReady() => null,
    };
    if (string == null) return null;
    return StringNotice(string);
  }

  @override
  Widget build(BuildContext context) {
    final provider = CurrentAccount.providers.connectionState;
    return NoticeOverlay(
      noticeUpdates: provider.states.map((e) => _stateToNotice(e)),
      initialValue: _stateToNotice(provider.state),
      child: child,
    );
  }
}
