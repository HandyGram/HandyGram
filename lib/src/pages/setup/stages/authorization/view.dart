/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:handygram/src/pages/setup/bloc.dart';
import 'package:handygram/src/pages/setup/stages/authorization/bloc.dart';
import 'package:handygram/src/pages/setup/stages/authorization/views/password.dart';
import 'package:handygram/src/pages/setup/stages/authorization/views/qr.dart';

class AuthorizationView extends StatelessWidget {
  const AuthorizationView({
    super.key,
    this.destinationRoute,
  });

  final String? destinationRoute;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthorizationBloc, AuthorizationBlocState>(
      listener: (context, state) {
        if (state is AuthorizationBlocStateSuccess) {
          try {
            context.read<SetupBloc>().add(const SetupEventAuthorized());
          } catch (_) {
            GoRouter.of(context).pushReplacement(destinationRoute ?? "/home");
          }
        }
      },
      child: BlocBuilder<AuthorizationBloc, AuthorizationBlocState>(
        builder: (context, state) => AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeInOutSine,
          switchOutCurve: Curves.easeInOutSine,
          transitionBuilder: (child, animation) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.3, 0),
                end: const Offset(0, 0),
              ).animate(animation),
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.8, end: 1).animate(animation),
                child: FadeTransition(
                  opacity:
                      Tween<double>(begin: 0.01, end: 1).animate(animation),
                  child: child,
                ),
              ),
            );
          },
          child: switch (state) {
            AuthorizationBlocStateRequestingQr() => const AuthorizationQrView(
                qrLink: null,
              ),
            AuthorizationBlocStateQr(qrLink: final qrLink) =>
              AuthorizationQrView(
                qrLink: qrLink,
              ),
            AuthorizationBlocStateWaitingPassword(hint: final hint) =>
              AuthorizationPasswordView(hint: hint),
            AuthorizationBlocStateIncorrectPassword(hint: final hint) =>
              AuthorizationPasswordView(
                hint: hint,
                previousAttemptWasIncorrect: true,
              ),
            AuthorizationBlocStateErrorPassword(
              error: final error,
              hint: final hint,
            ) =>
              AuthorizationPasswordView(
                hint: hint,
                error: error,
              ),
            AuthorizationBlocStateLoadingPassword(hint: final hint) =>
              AuthorizationPasswordView(
                hint: hint,
                isLoading: true,
              ),
            _ => Container(),
          },
        ),
      ),
    );
  }
}
