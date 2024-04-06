import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/pages/setup/stages/authorization/bloc.dart';
import 'package:handygram/src/pages/setup/stages/authorization/view.dart';

class AuthorizationPage extends StatelessWidget {
  const AuthorizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthorizationBloc()..add(const RequestQrCode()),
      child: const AuthorizationView(),
    );
  }
}
