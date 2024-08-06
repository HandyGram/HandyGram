/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/common/tdlib/client/management/user_manager.dart';
import 'package:handygram/src/pages/setup/stages/authorization/bloc.dart';
import 'package:handygram/src/pages/setup/stages/authorization/view.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({
    super.key,
    required this.user,
    this.destinationRoute,
  });

  final TdlibUserManager user;
  final String? destinationRoute;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthorizationBloc(user)..add(const RequestQrCode()),
      child: const AuthorizationView(),
    );
  }
}
