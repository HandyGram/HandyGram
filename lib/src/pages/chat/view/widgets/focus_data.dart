import 'dart:async';

import 'package:flutter/material.dart';

class MessageFocusData extends InheritedWidget {
  MessageFocusData({super.key, required super.child});

  final List<int> _messages = [];

  final StreamController<List<int>> _controller = StreamController();
  final StreamController<int> _controllerNew = StreamController();
  final StreamController<int> _controllerReq = StreamController();

  Stream<List<int>> get focusedMessages => _controller.stream;
  Stream<int> get newFocusedMessages => _controllerNew.stream;
  Stream<int> get focusRequestedMessages => _controllerReq.stream;

  void addMessage(int id) {
    if (!_messages.contains(id)) _messages.add(id);
    _controller.add(_messages);
    _controllerNew.add(id);
  }

  void removeMessage(int id) {
    _messages.remove(id);
    _controller.add(_messages);
  }

  void requestFocus(int id) {
    _controllerReq.add(id);
  }

  static MessageFocusData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MessageFocusData>();
  }

  @override
  bool updateShouldNotify(MessageFocusData oldWidget) {
    return true;
  }
}
