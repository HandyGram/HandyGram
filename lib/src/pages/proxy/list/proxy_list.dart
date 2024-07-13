/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/pages/proxy/list/bloc.dart';
import 'package:handygram/src/pages/proxy/list/view.dart';

class ProxyListPage extends StatelessWidget {
  const ProxyListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProxyListBloc()..add(const ProxyListOpened()),
      child: const ProxyListView(),
    );
  }
}
