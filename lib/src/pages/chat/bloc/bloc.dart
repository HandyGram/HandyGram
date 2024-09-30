/*
 * Copyright (C) Roman Rikhter <teledurak@gmail.com>, 2024
 * This program comes with ABSOLUTELY NO WARRANTY;
 * This is free software, and you are welcome to redistribute it under certain conditions;
 *
 * See /LICENSE for more details.
 */

import 'dart:async';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_tdlib/handy_tdlib.dart';
import 'package:handygram/src/common/cubits/current_account.dart';
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/exceptions/ui_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/misc/localizations.dart';
import 'package:handygram/src/common/settings/entries.dart';
import 'package:handygram/src/common/settings/manager.dart';
import 'package:handygram/src/common/tdlib/providers/messages/messages.dart';
import 'package:handygram/src/common/tdlib/misc/service_chat_type.dart';
import 'package:handygram/src/pages/chat/bloc/data.dart';
import 'package:handy_tdlib/api.dart' as td;
import 'package:mutex/mutex.dart';

enum _ContainerInsertStatus {
  /// Inserted new container
  insertedNew,

  /// Exactly same container already did exist
  alreadyExists,

  /// Similar container was updated
  updated,
}

class ChatBloc extends Bloc<ChatBlocEvent, ChatBlocState> {
  static const String tag = "ChatBloc";
  static bool debugCleanupDisabled = false;

  final Map<int, td.Message> _messagesData = {};
  final List<ChatBlocContainer> _containers = [];
  Completer<void>? _uiReady = Completer<void>();
  final _streamController = StreamController<ChatBlocStreamedData>();
  final Mutex _lock = Mutex();
  StreamSubscription? _chatInfoUpdateSub, _messageUpdatesSub;

  late td.Chat _chat;

  Map<int, td.Message> get messagesData => _messagesData;
  td.Chat get chat => _chat;

  @override
  void onError(Object error, StackTrace stackTrace) {
    l.e(tag, "$error");
    l.e(tag, "$stackTrace");
    super.onError(error, stackTrace);
  }

  ChatBloc() : super(const ChatBlocLoadingState()) {
    on<ChatBlocStartPreloadingEvent>(_preload);
    on<ChatBlocReadyToShowEvent>(_setUiReady);
    on<ChatBlocLoadChunkEvent>(_loadChunk);
    on<ChatBlocLoadMoreEvent>(_loadMore);
    on<ChatBlocLoadLatestMessagesEvent>(_loadLatest);
    on<ChatBlocCurrentlyFocusedMessagesEvent>(_cleanup);
    on<ChatBlocNewFocusedMessageEvent>(_viewMessage);
  }

  void dispose() async {
    await _chatInfoUpdateSub?.cancel();
    await _messageUpdatesSub?.cancel();
    await _streamController.close();
    await CurrentAccount.providers.chats.closeChat(_chat.id);
  }

  Future<void> _exceptionsGuard(
    Emitter<ChatBlocState> emit,
    Future<void> value,
  ) async {
    try {
      await value;
    } catch (error) {
      emit(ChatBlocError(
          AppLocalizations.current.chatBlocLoadingError(switch (error) {
        TdlibCoreException(module: final module, message: final message) =>
          "TDLib[$module] $message",
        _ => "[Unknown] $error",
      })));
    }
  }

  /// 1. Loads chat info, subscribes to its updates
  /// 2. Parses +5/-5 messages from lastReadInboxMessageId into ChatBlocContainer
  /// 3. Sets NoMoreMessages and LoadMore appropriately
  /// 4. Waits for UI loading and then sends ChatBlocReady state
  Future<void> _preload(
    ChatBlocStartPreloadingEvent event,
    Emitter<ChatBlocState> emit,
  ) async =>
      _exceptionsGuard(emit, _lock.protect(() async {
        // Load chat info
        _chat = await CurrentAccount.providers.chats.getChat(event.chatId);
        _chatInfoUpdateSub =
            CurrentAccount.providers.chats.filter(event.chatId, tdUpdateTypes: [
          td.UpdateChatReadInbox,
          td.UpdateChatReadOutbox,
          td.UpdateChatLastMessage,
        ]).listen((final upd) {
          switch (upd.update) {
            case td.UpdateChatReadInbox(
                lastReadInboxMessageId: final lastReadInboxMessageId,
                unreadCount: final unreadCount,
              ):
              _chat = _chat.copyWith(
                lastReadInboxMessageId: lastReadInboxMessageId,
                unreadCount: unreadCount,
              );
            case td.UpdateChatReadOutbox(
                lastReadOutboxMessageId: final lastReadOutboxMessageId,
              ):
              _chat = _chat.copyWith(
                lastReadOutboxMessageId: lastReadOutboxMessageId,
              );
            case td.UpdateChatLastMessage(lastMessage: final lastMessage):
              _chat = _chat.copyWith(lastMessage: lastMessage);
            default:
              break;
          }
        });

        final serviceChatType = await getServiceChatType(_chat);
        int fromMessageId =
            event.focusOnMessageId ?? _chat.lastReadInboxMessageId;
        int focusOnMessageId = fromMessageId;
        if (serviceChatType == ServiceChatType.savedMessages) {
          fromMessageId = _chat.lastMessage!.id;
        }

        // Load chunk of latest read messages
        final messages = await CurrentAccount.providers.messages.getHistory(
          _chat.id,
          fromMessageId: fromMessageId,
          offset: -5,
          limit: 11,
        );

        if (serviceChatType == ServiceChatType.savedMessages) {
          focusOnMessageId = messages.first.id;
        }

        // Construct initial containers list
        if (messages.first.id == _chat.lastMessage?.id) {
          _containers.add(const ChatBlocNoMoreMessages(older: false));
        } else {
          _containers.add(ChatBlocLoadMore(
            fromMessageId: messages.first.id,
            older: false,
          ));
        }
        _containers.addAll(messages.map((m) => ChatBlocMessageId(m.id)));
        if (messages.length != 11 &&
            _containers.first is! ChatBlocNoMoreMessages) {
          _containers.add(const ChatBlocNoMoreMessages(older: true));
        } else {
          _containers.add(ChatBlocLoadMore(
            fromMessageId: messages.last.id,
            older: true,
          ));
        }

        for (final message in messages) {
          messagesData[message.id] = message;
        }
        _streamController.add(ChatBlocMessagesListData(
          _containers,
          focusData: ChatBlocFocusData(
            focusOnMessageId: focusOnMessageId,
            mustFocusInstantly: true,
          ),
        ));

        _messageUpdatesSub = CurrentAccount.providers.messages.filter(
          _chat.id,
          tdUpdateTypes: [
            td.UpdateMessageContent,
            td.UpdateMessageContentOpened,
            td.UpdateMessageEdited,
            td.UpdateMessageInteractionInfo,
            td.UpdateMessageSendSucceeded,
            td.UpdateMessageSendFailed,
            td.UpdateDeleteMessages,
            td.UpdateNewMessage,
          ],
        ).listen(_onMessagesUpdate);

        await _uiReady?.future;
        await CurrentAccount.providers.chats.openChat(_chat.id);

        emit(ChatBlocReady(_streamController.stream, serviceChatType));
      }));

  Future<void> _setUiReady(
    ChatBlocReadyToShowEvent event,
    Emitter<ChatBlocState> emit,
  ) async {
    _uiReady?.complete();
    _uiReady = null;
  }

  /// Automatically insert container into the most relevant position
  /// Also checks for LoadMore, NoMoreMessages conflicts.
  _ContainerInsertStatus _containerInsert(
      final ChatBlocContainer newContainer) {
    switch (newContainer) {
      case ChatBlocNoMoreMessages(older: final older):
        if (_containers.contains(newContainer)) {
          return _ContainerInsertStatus.alreadyExists;
        }
        if (older) {
          _containers.add(newContainer);
        } else {
          _containers.insert(0, newContainer);
        }
      case ChatBlocLoadMore(
          fromMessageId: final fromMessageId,
          older: final older,
        ):
        final targetMessageIndex = _getMessageIndex(fromMessageId);
        if (targetMessageIndex == -1) {
          throw const HandyUiException(
            tag,
            "fromMessageId must exist in message list, but it doesn't",
          );
        }

        final nextIndex =
            min(_containers.length - 1, targetMessageIndex + (older ? 1 : 0));
        if (_containers[nextIndex] == newContainer) {
          return _ContainerInsertStatus.alreadyExists;
        }

        final next = _containers[nextIndex];
        if (next is ChatBlocLoadMore) {
          // Update?
          if (next.older == older) {
            _containers[nextIndex] = newContainer;
            return _ContainerInsertStatus.updated;
          }
        }

        _containers.insert(
          targetMessageIndex + (older ? 1 : 0),
          newContainer,
        );
      case ChatBlocMessageId(id: final objId):
        // It may be the same or older message
        final closestMessageId = _containers.indexWhere((e) => switch (e) {
              ChatBlocMessageId(id: final id) => id <= objId,
              _ => false,
            });
        if (closestMessageId == -1) {
          // The message is older than every message in this list.
          switch (_containers.last) {
            case ChatBlocMessageId():
              // can be a case if not all messages were loaded yet
              _containers.add(newContainer);
            case ChatBlocNoMoreMessages():
              // invalid
              throw const HandyUiException(
                tag,
                "NMM flag was set, but messages are still appearing!",
              );
            case ChatBlocLoadMore():
              _containers.add(newContainer);
          }
        } else {
          final closestMessage =
              _containers[closestMessageId] as ChatBlocMessageId;
          if (closestMessage.id == objId) {
            return _ContainerInsertStatus.alreadyExists;
          }

          // Correct LoadMore id

          if (closestMessageId > 0) {
            final loadMore = _containers[closestMessageId - 1];
            if (loadMore is ChatBlocLoadMore &&
                loadMore.fromMessageId == closestMessage.id) {
              _containers[closestMessageId - 1] = ChatBlocLoadMore(
                fromMessageId: objId,
                older: loadMore.older,
              );
            }
          } else if (closestMessageId < _containers.length - 1) {
            final loadMore = _containers[closestMessageId + 1];
            if (loadMore is ChatBlocLoadMore &&
                loadMore.fromMessageId == closestMessage.id) {
              _containers[closestMessageId + 1] = ChatBlocLoadMore(
                fromMessageId: objId,
                older: loadMore.older,
              );
            }
          }
          _containers.insert(closestMessageId, newContainer);
        }
    }

    return _ContainerInsertStatus.insertedNew;
  }

  static const int _kChunkSize = 11;
  Future<void> _loadChunk(
    ChatBlocLoadChunkEvent event,
    Emitter<ChatBlocState> emit,
  ) async =>
      _lock.protect(() async {
        // Load chunk
        final messages = await CurrentAccount.providers.messages.getHistory(
          _chat.id,
          fromMessageId: event.middleMessageId,
          offset: (_kChunkSize - 1) ~/ -2,
          limit: _kChunkSize,
        );

        for (final message in messages) {
          final status = _containerInsert(ChatBlocMessageId(message.id));
          _messagesData[message.id] = message;

          if (status == _ContainerInsertStatus.alreadyExists) {
            _streamController.add(ChatBlocMessageContentUpdated(message));
            continue;
          }

          if (message.id == messages.first.id) {
            _containers.add(ChatBlocLoadMore(
              fromMessageId: message.id,
              older: false,
            ));
          } else if (message.id == messages.last.id) {
            _containers.add(ChatBlocLoadMore(
              fromMessageId: message.id,
              older: true,
            ));
          }
        }

        _streamController.add(ChatBlocMessagesListData(
          _containers,
          focusData: ChatBlocFocusData(
            focusOnMessageId: event.middleMessageId,
          ),
        ));
      });

  static const int _kLoadMoreCount = 10;
  Future<void> _loadMore(
    ChatBlocLoadMoreEvent event,
    Emitter<ChatBlocState> emit,
  ) =>
      _lock.protect(() async {
        final messages = await CurrentAccount.providers.messages.getHistory(
          _chat.id,
          fromMessageId: event.data.fromMessageId,
          limit: _kLoadMoreCount,
          offset: event.data.older ? 0 : -(_kLoadMoreCount - 1),
        );

        bool conflict = false;
        int delta = messages.length;

        final indexBefore =
            _containers.indexOf(event.data) - (event.data.older ? 1 : -1);
        _containers.remove(event.data);
        int indexAfter = indexBefore;
        if (!event.data.older) {
          indexAfter += messages.length;
        }

        // Insert messages
        for (final msg in messages) {
          final status = _containerInsert(ChatBlocMessageId(msg.id));
          _messagesData[msg.id] = msg;

          if (status == _ContainerInsertStatus.alreadyExists) {
            _streamController.add(ChatBlocMessageContentUpdated(msg));
            if (event.data.older) {
              conflict = msg.id == messages.last.id;
            } else {
              conflict = msg.id == messages.first.id;
            }
            if (!event.data.older) {
              indexAfter--;
              delta--;
            }
          }
        }

        // Update LoadMore / NoMoreMessages
        if (!conflict) {
          if (messages.length != _kLoadMoreCount) {
            _containerInsert(ChatBlocNoMoreMessages(older: event.data.older));
          } else {
            _containerInsert(ChatBlocLoadMore(
              fromMessageId:
                  (event.data.older ? messages.last : messages.first).id,
              older: event.data.older,
            ));
          }
          indexAfter++;
          delta++;
        }

        event.setCooldownExpirationDate?.call(DateTime.now().add(
          const Duration(seconds: 3),
        ));
        _streamController.add(ChatBlocMessagesListData(
          _containers,
          whatsChanged: MessageListChange(
            refIndexAfter: indexAfter,
            refIndexBefore: indexBefore,
            delta: delta,
            preservationUnneeded: event.data.older,
          ),
        ));
      });

  static const int _kLoadLatestCount = 10;
  Future<void> _loadLatest(
    ChatBlocLoadLatestMessagesEvent event,
    Emitter<ChatBlocState> emit,
  ) =>
      _lock.protect(() async {
        if (_containers.first is ChatBlocNoMoreMessages) {
          _streamController.add(ChatBlocMessagesListData(
            _containers,
            focusData: ChatBlocFocusData(
              focusOnMessageId: (_containers[1] as ChatBlocMessageId).id,
            ),
          ));
          return;
        }

        late final List<td.Message> messages;

        messages = await CurrentAccount.providers.messages.getHistory(
          _chat.id,
          fromMessageId: _chat.lastMessage?.id ??
              (throw const HandyUiException(
                  tag, "lastMessage wasn't updated!")),
          limit: _kLoadLatestCount,
          offset: 0,
        );

        bool conflict = false;
        int indexAfter = messages.length;

        // Insert messages
        for (final msg in messages) {
          final status = _containerInsert(ChatBlocMessageId(msg.id));
          _messagesData[msg.id] = msg;

          // We've ran into a conflict! Skip updating service containers.
          if (status == _ContainerInsertStatus.alreadyExists) {
            indexAfter--;
            _streamController.add(ChatBlocMessageContentUpdated(msg));
            if (msg == messages.last) {
              conflict = true;
            }
          }
        }

        // Update LoadMore / NoMoreMessages
        if (!conflict) {
          if (_containers.first is ChatBlocLoadMore) {
            _containers.remove(_containers.first);
            indexAfter--;
          }

          if (messages.length != _kLoadMoreCount) {
            _containerInsert(const ChatBlocNoMoreMessages(older: false));
          } else {
            _containerInsert(ChatBlocLoadMore(
              fromMessageId: messages.last.id,
              older: false,
            ));
          }

          indexAfter++;
        }

        _streamController.add(ChatBlocMessagesListData(
          _containers,
          whatsChanged: MessageListChange(
            refIndexBefore: 0,
            refIndexAfter: indexAfter,
            delta: indexAfter,
          ),
        ));
      });

  Future<void> _viewMessage(
    ChatBlocNewFocusedMessageEvent event,
    Emitter<ChatBlocState> emit,
  ) async {
    try {
      await CurrentAccount.providers.messages
          .viewMessage(_chat.id, event.messageId);
      if (event.isContentRead) {
        await CurrentAccount.providers.messages
            .readMessageContent(_chat.id, event.messageId);
      }
    } catch (e, st) {
      // that's not critical exception, log it and do nothing
      l.e(tag, "$e\n$st");
    }
  }

  Future<void> _cleanup(
    ChatBlocCurrentlyFocusedMessagesEvent event,
    Emitter<ChatBlocState> emit,
  ) async =>
      _lock.protect(() async {
        final focused = event.focusedMessagesIds;
        if (focused.isEmpty) return;

        final focusedRange = [
          _getMessageIndex(focused.first),
          _getMessageIndex(focused.last),
        ];
        final distance = [
          focusedRange.first,
          _containers.length - focusedRange.last,
        ];

        if (focusedRange.first == -1 || focusedRange.last == -1) return;

        final cleaningNeeded = distance.first > 15 || distance.last > 15;
        if (debugCleanupDisabled ||
            Settings().get(SettingsEntries.doNotCleanupMessages)) {
          l.i(
              tag,
              "Cleanup disabled! | focused range "
              "${focusedRange.first} -> ${focusedRange.last}, "
              "distance from both ends "
              "${distance.first} -> | ... | <- ${distance.last}. "
              "Cleanup is ${cleaningNeeded ? 'NEEDED' : 'not needed'}.");
          return;
        }

        if (!cleaningNeeded) return;

        int indexBefore, indexAfter, delta;
        if (distance.first > 15) {
          indexBefore = 10;
          indexAfter = 0;
          delta = -10;

          for (int i = 0; i < 10; i++) {
            _messagesData.remove(switch (_containers[i]) {
              ChatBlocMessageId(id: final id) => id,
              _ => -1,
            });
            _containers.removeAt(i);
          }

          switch (_containers.first) {
            case ChatBlocMessageId(id: final id):
              _containers.insert(
                0,
                ChatBlocLoadMore(
                  fromMessageId: id,
                  older: false,
                ),
              );
              indexAfter++;
              delta++;
            case ChatBlocLoadMore(
                older: final older,
                fromMessageId: final messageId,
              ):
              if (!older) break;
              _containers.first = ChatBlocLoadMore(
                fromMessageId: messageId,
                older: false,
              );
            case ChatBlocNoMoreMessages():
              throw const HandyUiException(
                tag,
                "NoMoreMessages block should've been removed, but it's not",
              );
          }
        } else if (distance.last > 15) {
          indexBefore = _containers.length - 11;
          indexAfter = _containers.length - 11;
          delta = -10;

          for (int i = _containers.length - 10; i < _containers.length; i++) {
            _messagesData.remove(switch (_containers[i]) {
              ChatBlocMessageId(id: final id) => id,
              _ => -1,
            });
            _containers.removeAt(i);
          }

          switch (_containers.last) {
            case ChatBlocMessageId(id: final id):
              _containers.add(
                ChatBlocLoadMore(
                  fromMessageId: id,
                  older: true,
                ),
              );
              delta++;
            case ChatBlocLoadMore(
                older: final older,
                fromMessageId: final messageId,
              ):
              if (older) break;
              _containers.last = ChatBlocLoadMore(
                fromMessageId: messageId,
                older: true,
              );
            case ChatBlocNoMoreMessages():
              throw const HandyUiException(
                tag,
                "NoMoreMessages block should've been removed, but it's not",
              );
          }
        } else {
          throw const HandyUiException(tag, "reached unreachable code");
        }

        _streamController.add(ChatBlocMessagesListData(
          _containers,
          whatsChanged: MessageListChange(
            refIndexBefore: indexBefore,
            refIndexAfter: indexAfter,
            preservationUnneeded: distance.last > 15,
            delta: delta,
          ),
        ));
      });

  Future<void> _handleNewMessage(final td.UpdateNewMessage update) =>
      _lock.protect(() async {
        // We're not interested in recent messages if we'd not loaded them
        if (_containers.first is! ChatBlocNoMoreMessages) return;

        final status = _containerInsert(ChatBlocMessageId(update.message.id));
        _messagesData[update.message.id] = update.message;

        if (status == _ContainerInsertStatus.alreadyExists) {
          _streamController.add(ChatBlocMessageContentUpdated(update.message));
        } else {
          _streamController.add(ChatBlocMessagesListData(
            _containers,
            whatsChanged: const MessageListChange(
              refIndexBefore: 0,
              refIndexAfter: 1,
              delta: 1,
            ),
          ));
        }
      });

  Future<void> _handleMessageDelete(final td.UpdateDeleteMessages update) =>
      _lock.protect(() async {
        // Remove messages
        int indexBefore = 0;
        final messageIds = update.messageIds;
        for (int i = 0; messageIds.isEmpty || i < _containers.length; i++) {
          final mid = switch (_containers) {
            ChatBlocMessageId(id: final id) => id,
            _ => null,
          };
          if (!messageIds.contains(mid)) return;
          if (indexBefore == 0) indexBefore = i + messageIds.length;
          messageIds.removeAt(i);
        }

        indexBefore -= messageIds.length;
        int delta = messageIds.length - update.messageIds.length;
        int indexAfter =
            indexBefore - messageIds.length + update.messageIds.length;

        for (final id in update.messageIds) {
          _messagesData.remove(id);
        }

        // Update LoadMore containers if needed
        for (int i = 0; i < _containers.length; i++) {
          final lm = _containers[i];
          if (lm is! ChatBlocLoadMore) continue;
          if (!update.messageIds.contains(lm.fromMessageId)) continue;

          // The only conflict may be
          // ChatBlocLoadMore(older: true)
          // ChatBlocLoadMore(older: false)
          // But it is resolved by looking into ChatBlocLoadMore.older value.
          final msg = lm.older ? _containers[i - 1] : _containers[i + 1];
          assert(
            msg is ChatBlocMessageId,
            "Containers sorting algorithm is broken - tdrk is a stupid ass",
          );

          _containers[i] = ChatBlocLoadMore(
            fromMessageId: (msg as ChatBlocMessageId).id,
            older: lm.older,
          );
        }

        _streamController.add(ChatBlocMessagesListData(
          _containers,
          whatsChanged: MessageListChange(
            refIndexBefore: indexBefore,
            refIndexAfter: indexAfter,
            delta: delta,
          ),
        ));
      });

  Future<void> _replaceTemporaryMessage(
    final int oldMessageId,
    final td.Message newMessage,
  ) =>
      _lock.protect(() async {
        _containers.removeWhere((element) => switch (element) {
              ChatBlocMessageId(id: final id) => id == oldMessageId,
              _ => false,
            });
        _messagesData[newMessage.id] = newMessage;
        final status = _containerInsert(ChatBlocMessageId(newMessage.id));
        if (status == _ContainerInsertStatus.alreadyExists) {
          _streamController.add(ChatBlocMessageContentUpdated(newMessage));
        } else {
          _streamController.add(ChatBlocMessagesListData(_containers));
        }
      });

  Future<void> _onMessagesUpdate(final MessageUpdate data) async {
    // If message is new - handle it
    if (data.update is td.UpdateNewMessage) {
      await _handleNewMessage(data.update as td.UpdateNewMessage);
      return;
    }
    // If message(s) is(are) older and not in our cache - skip this update
    if (!data.messageId.any((e) => messagesData.containsKey(e))) return;

    // Not _messageData updates
    switch (data.update) {
      case td.UpdateDeleteMessages():
        await _handleMessageDelete(data.update as td.UpdateDeleteMessages);
      case td.UpdateMessageSendSucceeded(
          message: final message,
          oldMessageId: final oldMessageId
        ):
        await _replaceTemporaryMessage(oldMessageId, message);
      case td.UpdateMessageSendFailed():
        // TODO: do we need this?
        break;
      default:
        break;
    }

    // Only _messageData updates
    late final td.Message message;
    switch (data.update) {
      case td.UpdateMessageContent(
          messageId: final messageId,
          newContent: final content,
        ):
        message = messagesData[messageId]!.copyWith(
          content: content,
        );
        messagesData[messageId] = message;
      case td.UpdateMessageContentOpened(messageId: final messageId):
        final content = messagesData[messageId]!.content;
        message = messagesData[messageId]!.copyWith(
          content: switch (content) {
            MessageVideoNote() => content.copyWith(
                isViewed: true,
              ),
            MessageVoiceNote() => content.copyWith(
                isListened: true,
              ),
            _ => content,
          },
        );
        messagesData[messageId] = message;
      case td.UpdateMessageEdited(
          messageId: final messageId,
          replyMarkup: final replyMarkup,
          editDate: final editDate,
        ):
        message = messagesData[messageId]!.copyWith(
          replyMarkup: replyMarkup,
          editDate: editDate,
        );
        messagesData[messageId] = message;
      case td.UpdateMessageInteractionInfo(
          messageId: final messageId,
          interactionInfo: final interactionInfo,
        ):
        message = messagesData[messageId]!.copyWith(
          interactionInfo: interactionInfo,
        );
        messagesData[messageId] = message;
      default:
        return;
    }
    _streamController.add(ChatBlocMessageContentUpdated(message));
  }

  int _getMessageIndex(int targetId) {
    return _containers.indexWhere((e) => switch (e) {
          ChatBlocMessageId(id: final id) => id == targetId,
          _ => false,
        });
  }
}
