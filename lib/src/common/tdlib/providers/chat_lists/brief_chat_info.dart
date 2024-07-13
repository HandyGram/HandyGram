/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'package:handy_tdlib/api.dart';

class BriefChatInfo {
  final int order;
  final int chatId;
  final bool isPinned;
  final ChatSource? source;

  final DraftMessage? lastDraftMessage;
  final Message? lastMessage;

  const BriefChatInfo({
    required this.chatId,
    required this.order,
    required this.isPinned,
    this.source,
    this.lastDraftMessage,
    this.lastMessage,
  });
}
