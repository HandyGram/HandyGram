import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/cubits/colors.dart';
import 'package:handygram/src/common/cubits/text.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/components/controls/tile_button.dart';
import 'package:handygram/src/components/fields/text_field.dart';
import 'package:handygram/src/components/list/listview.dart';
import 'package:handygram/src/components/paddings.dart';
import 'package:handygram/src/components/text/header.dart';
import 'package:handygram/src/pages/setup/stages/authorization/bloc.dart';

class AuthorizationPasswordView extends StatefulWidget {
  const AuthorizationPasswordView({
    super.key,
    required this.hint,
    this.error,
    this.previousAttemptWasIncorrect = false,
    this.isLoading = false,
  });

  final String hint;
  final bool previousAttemptWasIncorrect;
  final bool isLoading;
  final String? error;

  @override
  State<AuthorizationPasswordView> createState() =>
      _AuthorizationPasswordViewState();
}

class _AuthorizationPasswordViewState extends State<AuthorizationPasswordView> {
  final TextEditingController controller = TextEditingController();
  bool active = false;
  final FocusNode focus = FocusNode();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      bool act = controller.text.isNotEmpty;
      if (act != active) {
        setState(() {
          active = act;
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: HandyListView(
        bottomPadding: false,
        children: (widget.isLoading)
            ? [
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: const Center(
                    child: SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              ]
            : [
                PageHeader(title: l10n.enterPassword),
                HandyTextField(
                  title: l10n.password,
                  autocorrect: false,
                  obscureText: true,
                  controller: controller,
                  focusNode: focus,
                ),
                if (widget.hint.isNotEmpty) const ElementsPadding(),
                if (widget.hint.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      widget.hint,
                      style: TextStyles.active.labelLarge!.copyWith(
                        color: ColorStyles.active.onError,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                if (widget.previousAttemptWasIncorrect || widget.error != null)
                  const ElementsPadding(),
                if (widget.previousAttemptWasIncorrect || widget.error != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Text(
                      widget.error ?? l10n.incorrectPassword,
                      style: TextStyles.active.labelLarge!.copyWith(
                        color: ColorStyles.active.onError,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                const ElementsPadding(),
                TileButton(
                  big: false,
                  text: l10n.login,
                  onTap: active
                      ? () => context
                          .read<AuthorizationBloc>()
                          .add(SetPassword(controller.text))
                      : null,
                ),
              ],
      ),
    );
  }
}
