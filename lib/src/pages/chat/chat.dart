/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handygram/src/pages/chat/bloc/bloc.dart';
import 'package:handygram/src/pages/chat/bloc/data.dart';
import 'package:handygram/src/pages/chat/view/view.dart';
import 'package:handygram/src/pages/chat/view/widgets/focus_data.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({
    super.key,
    required this.id,
    this.focusOnMessageId,
  });

  final int id;
  final int? focusOnMessageId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChatBloc()
        ..add(ChatBlocStartPreloadingEvent(
          chatId: id,
          focusOnMessageId: focusOnMessageId,
        )),
      child: MessageFocusData(child: const ChatView()),
    );
  }
}
