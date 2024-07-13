/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/pages/proxy/single/bloc.dart';
import 'package:handygram/src/pages/proxy/single/view.dart';

class ProxyPage extends StatelessWidget {
  const ProxyPage({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProxyBloc(context, id)..add(const ProxyOpened()),
      child: const ProxyView(),
    );
  }
}
