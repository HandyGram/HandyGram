import 'package:handy_tdlib/api.dart' as td;
import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/tdlib/client/structures/tdlib_toolbox.dart';
import 'package:handygram/src/common/tdlib/providers/chat_lists/chat_list.dart';
import 'package:handygram/src/common/tdlib/providers/templates/events_provider.dart';

class ChatListsProvider extends TdlibDataEventsProvider {
  static const String tag = "ChatListsProvider";

  int _mainChatPosition = 0;
  List<ChatList<td.ChatListFolder>> chatListsFolders = [];
  late ChatList<td.ChatListMain> chatListMain;
  late ChatList<td.ChatListArchive> chatListArchive;

  List<ChatList> get chatLists =>
      [...chatListsFolders]..insert(_mainChatPosition, chatListMain);

  ChatList getFolder(int id) =>
      chatListsFolders.firstWhere((e) => e.chatList.chatFolderId == id);

  @override
  Future<void> attach(TdlibToolbox toolbox) async {
    super.attach(toolbox);
    chatListMain = ChatList(
      chatList: const td.ChatListMain(),
      clientId: box.clientId,
    );
    chatListArchive = ChatList(
      chatList: const td.ChatListArchive(),
      clientId: box.clientId,
    );
  }

  Future<void> requestLoadingMoreChats({
    td.ChatList? list,
    int limit = 20,
  }) async {
    final result = await box.invoke(td.LoadChats(
      limit: limit,
      chatList: list,
    ));

    if (result is! td.Ok) {
      if (result is td.TdError) {
        throw TdlibCoreException.fromTd(tag, result);
      } else {
        throw const TdlibCoreException(tag, "Can't load chats anymore");
      }
    }
  }

  @override
  void updatesListener(td.TdObject update) {
    switch (update) {
      case td.UpdateChatFolders(
          mainChatListPosition: final mainPos,
          chatFolders: final folders,
        ):
        _mainChatPosition = mainPos;
        chatListsFolders = folders.map((e) {
          final index =
              chatListsFolders.indexWhere((cl) => cl.folderInfo?.id == e.id);
          if (index == -1) {
            return ChatList(
              clientId: box.clientId,
              chatList: td.ChatListFolder(chatFolderId: e.id),
              folderInfo: e,
            );
          } else {
            return chatListsFolders[index];
          }
        }).toList();
        notifyListeners();
      case td.UpdateChatAction():
      case td.UpdateChatPosition():
      case td.UpdateChatLastMessage():
      case td.UpdateChatDraftMessage():
        break;
      default:
        return;
    }

    for (final list in chatLists) {
      list.processUpdate(update);
    }
  }
}
