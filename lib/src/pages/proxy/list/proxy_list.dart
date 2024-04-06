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
