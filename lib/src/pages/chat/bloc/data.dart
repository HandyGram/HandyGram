import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/tdlib/misc/service_chat_type.dart';

//
// Internal data types
//

/// Internal chat BLoC's data types container
sealed class ChatBlocContainer {
  const ChatBlocContainer();
}

/// Ordinary TDLib message ID.
class ChatBlocMessageId extends ChatBlocContainer {
  final int id;
  const ChatBlocMessageId(this.id);
}

/// Marker to load more messages.
class ChatBlocLoadMore extends ChatBlocContainer {
  final int fromMessageId;
  final bool older;
  const ChatBlocLoadMore({
    required this.fromMessageId,
    required this.older,
  });
}

/// Marker meaning we don't have more messages to load.
class ChatBlocNoMoreMessages extends ChatBlocContainer {
  final bool older;
  const ChatBlocNoMoreMessages({required this.older});
}

final class MessageListChange {
  final int refIndexBefore;
  final int refIndexAfter;
  final int delta;
  final bool preservationUnneeded;
  const MessageListChange({
    required this.refIndexAfter,
    required this.refIndexBefore,
    required this.delta,
    this.preservationUnneeded = false,
  });
}

//
// Miscellaneous
//
class ChatBlocFocusData {
  /// Message id to focus on
  final int focusOnMessageId;

  /// Must focus on [focusMessageId] immediately, without animation.
  final bool mustFocusInstantly;

  const ChatBlocFocusData({
    required this.focusOnMessageId,
    this.mustFocusInstantly = false,
  });
}

//
// Events
//

sealed class ChatBlocEvent {
  const ChatBlocEvent();
}

/// Start preloading messages, UI is loading now.
class ChatBlocStartPreloadingEvent extends ChatBlocEvent {
  final int chatId;
  final int? focusOnMessageId;
  const ChatBlocStartPreloadingEvent({
    required this.chatId,
    this.focusOnMessageId,
  });
}

/// UI tells that it's ready to show messages.
class ChatBlocReadyToShowEvent extends ChatBlocEvent {
  const ChatBlocReadyToShowEvent();
}

/// UI has rendered "load more" block.
class ChatBlocLoadMoreEvent extends ChatBlocEvent {
  final ChatBlocLoadMore data;
  final Function(DateTime)? setCooldownExpirationDate;
  const ChatBlocLoadMoreEvent(this.data, {this.setCooldownExpirationDate});
}

/// UI has advertised message IDs, which're currently shown on screen.
/// Required for TDLib to mark messages as read.
class ChatBlocCurrentlyFocusedMessagesEvent extends ChatBlocEvent {
  final List<int> focusedMessagesIds;
  const ChatBlocCurrentlyFocusedMessagesEvent(this.focusedMessagesIds);
}

/// UI has advertised message IDs, which're currently shown on screen.
/// Required for TDLib to mark messages as read.
class ChatBlocNewFocusedMessageEvent extends ChatBlocEvent {
  final int messageId;
  final bool isContentRead;
  const ChatBlocNewFocusedMessageEvent(
    this.messageId, {
    this.isContentRead = false,
  });
}

/// Load chunk of messages with [middleMessageId] in middle of it.
/// Used for loading messages which're being replied to.
class ChatBlocLoadChunkEvent extends ChatBlocEvent {
  final int middleMessageId;
  const ChatBlocLoadChunkEvent(this.middleMessageId);
}

/// Load some latest messages.
/// Used on clicking on "jump to the newest" button.
class ChatBlocLoadLatestMessagesEvent extends ChatBlocEvent {
  const ChatBlocLoadLatestMessagesEvent();
}

//
// BLoC states
//

sealed class ChatBlocState {
  const ChatBlocState();
}

/// Messages list is loading now.
class ChatBlocLoadingState extends ChatBlocState {
  const ChatBlocLoadingState();
}

/// Messages list is loading now.
class ChatBlocError extends ChatBlocState {
  final String error;
  const ChatBlocError(this.error);
}

/// Messages list is ready. UI needs to listen to the dataStream for its updates.
/// After this stage, BLoC states aren't being used (events are still used).
class ChatBlocReady extends ChatBlocState {
  final Stream<ChatBlocStreamedData> dataStream;
  final ServiceChatType? chatType;
  const ChatBlocReady(this.dataStream, this.chatType);
}

//
// Streamed data
//
sealed class ChatBlocStreamedData {
  const ChatBlocStreamedData();
}

/// The most recent list of messages in appropriate order.
/// ChatBloc.messagesData is updated before this data is sent.
class ChatBlocMessagesListData extends ChatBlocStreamedData {
  final List<ChatBlocContainer> containers;
  final ChatBlocFocusData? focusData;
  final MessageListChange? whatsChanged;

  const ChatBlocMessagesListData(
    this.containers, {
    this.focusData,
    this.whatsChanged,
  });
}

/// Message content was updated - ask UI to reload it.
/// BLoC track messages data, so constructing full Message object from partial
/// data is cheap.
class ChatBlocMessageContentUpdated extends ChatBlocStreamedData {
  final td.Message updatedMessage;
  const ChatBlocMessageContentUpdated(this.updatedMessage);
}
