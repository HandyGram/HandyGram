import 'package:flutter/material.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/service_chat_type.dart';
import 'package:handygram/src/components/messages/data.dart';

abstract class MessageStatelessWidget<T extends td.MessageContent>
    extends StatelessWidget {
  const MessageStatelessWidget({
    super.key,
    required this.data,
  });

  final MessageBubbleData<T> data;

  td.Chat? get chat => data.chat;
  ServiceChatType? get chatType => data.chatType;

  T get content => data.content;
  td.Message get message => data.message;

  bool get isOutgoing => data.commonIsOutgoing;

  Widget get attributesWidget => data.attributesWidget;
}

abstract class MessageStatefulWidget<T extends td.MessageContent>
    extends StatefulWidget {
  const MessageStatefulWidget({
    super.key,
    required this.data,
  });

  final MessageBubbleData<T> data;

  td.Chat? get chat => data.chat;
  ServiceChatType? get chatType => data.chatType;

  T get content => data.content;
  td.Message get message => data.message;

  bool get isOutgoing => data.commonIsOutgoing;

  Widget get attributesWidget => data.attributesWidget;
}
