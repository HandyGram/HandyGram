import 'dart:async';

import 'package:flutter/material.dart';
import 'package:handygram/src/misc/utils.dart';
import 'package:handygram/src/tdlib/tdapi/tdapi.dart' as tdlib;
import 'session.dart';

class TgChatActions extends ChangeNotifier {
  final Map<int, List<int>> _isTyping = {};

  void processEvent(tdlib.UpdateChatAction event) {
    _isTyping[event.chatId] ??= [];
    if (event.action.getConstructor() != "chatActionCancel") {
      _isTyping[event.chatId]!.add(event.senderId.getSenderId());
      Timer(
        const Duration(seconds: 30),
        () => _isTyping[event.chatId]?.remove(event.senderId.getSenderId()),
      );
    } else {
      _isTyping[event.chatId]!.remove(event.senderId.getSenderId());
    }
    notifyListeners();
  }

  void clear() {
    _isTyping.clear();
  }

  List<int> getTypersList(int chatId) {
    return _isTyping[chatId] ?? [];
  }
}

void actionsHandler(tdlib.TdObject event, TgSession session) {
  if (event.getConstructor() != "updateChatAction") {
    return;
  }

  session.chatActions.processEvent(event as tdlib.UpdateChatAction);
}
