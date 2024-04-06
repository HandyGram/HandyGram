import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/checkbox.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/fields/text_field.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/paddings.dart';
import 'package:handygram/src/components/picker/picker.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/proxy/single/bloc.dart';

class ProxyView extends StatefulWidget {
  const ProxyView({super.key});

  @override
  State<ProxyView> createState() => _ProxyViewState();
}

enum _ProxyType {
  http,
  socks5,
  mtproto,
}

class _Ready with ChangeNotifier {
  bool ready = false;

  void check({
    required String server,
    required String port,
    required _ProxyType type,
    required String secret,
  }) {
    if (server.isEmpty) return _notify(false);
    if (port.isEmpty || int.tryParse(port) == null) return _notify(false);
    if (type == _ProxyType.mtproto && secret.isEmpty) return _notify(false);
    _notify(true);
  }

  void _notify(bool val) {
    if (ready == val) return;
    ready = val;
    notifyListeners();
  }
}

class _ProxyViewState extends State<ProxyView> {
  final serverController = TextEditingController(),
      portController = TextEditingController(),
      passwordController = TextEditingController(),
      usernameController = TextEditingController(),
      secretController = TextEditingController();
  bool insecure = false;
  _ProxyType type = _ProxyType.http;
  _Ready ready = _Ready();

  bool filled = false;

  void _checkIsReady() {
    ready.check(
      server: serverController.text,
      port: portController.text,
      secret: secretController.text,
      type: type,
    );
  }

  void _readyListener() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    serverController.addListener(_checkIsReady);
    portController.addListener(_checkIsReady);
    usernameController.addListener(_checkIsReady);
    passwordController.addListener(_checkIsReady);
    secretController.addListener(_checkIsReady);
    ready.addListener(_readyListener);
  }

  @override
  void dispose() {
    serverController.dispose();
    portController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    secretController.dispose();
    ready.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final state = context.watch<ProxyBloc>().state;
    if (state is ProxyEditing && !filled) {
      filled = true;
      final server = state.server.split(':');
      serverController.text = server.firstOrNull ?? "";
      portController.text = state.port.toString();
      switch (state.type) {
        case td.ProxyTypeHttp(
            httpOnly: final httpOnly,
            username: final username,
            password: final password,
          ):
          type = _ProxyType.http;
          insecure = httpOnly;
          passwordController.text = password;
          usernameController.text = username;
        case td.ProxyTypeMtproto(secret: final secret):
          type = _ProxyType.mtproto;
          secretController.text = secret;
        case td.ProxyTypeSocks5(
            password: final password,
            username: final username,
          ):
          type = _ProxyType.socks5;
          usernameController.text = username;
          passwordController.text = password;
      }
      ready.ready = true;
    }
    return Scaffold(
      body: state is ProxyLoading
          ? const Center(
              child: SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(),
              ),
            )
          : HandyListView(
              bottomPadding: false,
              children: [
                PageHeader(
                  title: state is ProxyCreating
                      ? l10n.createProxy
                      : l10n.editProxy,
                ),
                HandyTextField(
                  controller: serverController,
                  title: l10n.proxyServer,
                  autocorrect: false,
                ),
                const ElementsPadding(),
                HandyTextField(
                  controller: portController,
                  title: l10n.proxyPort,
                  autocorrect: false,
                ),
                const ElementsPadding(),
                ValuePicker<_ProxyType>(
                  values: [
                    ValuePickable(
                      title: l10n.proxyTypeHTTP,
                      value: _ProxyType.http,
                    ),
                    ValuePickable(
                      title: l10n.proxyTypeMTProto,
                      value: _ProxyType.mtproto,
                    ),
                    ValuePickable(
                      title: l10n.proxyTypeSOCKS5,
                      value: _ProxyType.socks5,
                    ),
                  ],
                  title: l10n.proxyType,
                  pickerHint: l10n.proxyTypePickerTitle,
                  currentValue: type,
                  onSelected: (v) => setState(() {
                    type = v;
                    _checkIsReady();
                  }),
                ),
                if (type == _ProxyType.http) ...[
                  const ElementsPadding(),
                  HandyCheckbox(
                    text: Text(
                      l10n.proxyInsecure,
                      style: TextStyles.active.titleMedium,
                    ),
                    useSwitch: true,
                    value: insecure,
                    onChanged: (v) => setState(() => insecure = v),
                  ),
                ],
                const ElementsPadding(),
                if (type == _ProxyType.mtproto) ...[
                  HandyTextField(
                    controller: secretController,
                    title: l10n.proxySecret,
                    autocorrect: false,
                    obscureText: true,
                  ),
                ] else ...[
                  HandyTextField(
                    controller: usernameController,
                    title: l10n.proxyUser,
                    autocorrect: false,
                  ),
                  const ElementsPadding(),
                  HandyTextField(
                    controller: passwordController,
                    title: l10n.proxyPassword,
                    autocorrect: false,
                    obscureText: true,
                  ),
                ],
                const SmallButtonPadding(),
                if (state is ProxyEditing) ...[
                  TileButton(
                    big: false,
                    text: l10n.removeButton,
                    colorful: false,
                    onTap: () =>
                        context.read<ProxyBloc>().add(const ProxyDelete()),
                  ),
                  const ElementsPadding(),
                ],
                TileButton(
                  big: false,
                  text: (state is ProxyEditing)
                      ? l10n.doneButton
                      : l10n.createButton,
                  onTap: ready.ready
                      ? () => context.read<ProxyBloc>().add(ProxyCommit(
                          port: int.parse(portController.text),
                          server: serverController.text,
                          type: switch (type) {
                            _ProxyType.http => td.ProxyTypeHttp(
                                httpOnly: insecure,
                                password: passwordController.text,
                                username: usernameController.text,
                              ),
                            _ProxyType.mtproto => td.ProxyTypeMtproto(
                                secret: secretController.text,
                              ),
                            _ProxyType.socks5 => td.ProxyTypeSocks5(
                                password: passwordController.text,
                                username: usernameController.text,
                              )
                          }))
                      : null,
                ),
              ],
            ),
    );
  }
}
