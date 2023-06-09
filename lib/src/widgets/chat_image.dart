import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class ChatImage extends StatefulWidget {
  const ChatImage({
    super.key,
    required this.id,
    this.title,
    this.image,
    this.isUser,
    this.messageSender,
  }) : assert(isUser != null || messageSender != null);

  final int id;

  // Some widgets may control ChatImage's elements by themselves to
  // increase performance.
  final String? title;
  final Widget? image;
  final bool? isUser;
  final tdlib.MessageSender? messageSender;

  @override
  State<ChatImage> createState() => _ChatImageState();
}

Future<Map<String, dynamic>> getChatInfoForUser(int id, [int? uid]) async {
  tdlib.ChatPhotos? photos;
  try {
    photos = await session.functions.getUserProfilePhotos(uid ?? id);
  } catch (_) {
    return {
      "title": "?",
      "photo": null,
    };
  }
  if (photos == null || photos.totalCount == 0) {
    return {
      "title": "?",
      "photo": null,
    };
  }

  var photo = photos.photos[0].sizes[0].photo;
  var prov = await TgImage(id: photo.remote.id).load(priority: 20);
  String title = "?";
  if (prov != null) {
    try {
      title = (await session.usersInfoCache.get(uid ?? id))?.firstName ?? "?";
    } catch (_) {}
  }

  return {
    "title": title,
    "photo": prov,
    "photo_id": photo.remote.id,
  };
}

Future<Map<String, dynamic>> getChatInfoForChat(int id, [int? cid]) async {
  tdlib.File? photo;
  try {
    photo = (await session.chatsInfoCache.get(cid ?? id))?.photo?.small;
  } catch (_) {
    return {
      "title": "?",
      "photo": null,
    };
  }
  if (photo == null) {
    return {
      "title": session.chatsInfoCache[cid ?? id]?.title ?? "?",
      "photo": null,
    };
  }

  var prov = await TgImage(id: photo.remote.id).load(priority: 20);
  String title = "?";
  if (prov != null) {
    try {
      title = session.chatsInfoCache[cid ?? id]?.title ?? "?";
    } catch (_) {}
  }

  return {
    "title": title,
    "photo": prov,
    "photo_id": photo.remote.id,
  };
}

Future<Map<String, dynamic>> _getChatInfo(
    int id, bool? isUser, tdlib.MessageSender? sender) async {
  Map<String, dynamic> info;
  switch (sender) {
    case tdlib.MessageSenderChat(chatId: var cid):
      info = await getChatInfoForChat(id, cid);
      break;
    case tdlib.MessageSenderUser(userId: var uid):
      info = await getChatInfoForUser(id, uid);
      break;
    case null:
    default:
      if (isUser ?? false) {
        info = await getChatInfoForUser(id);
      } else {
        info = await getChatInfoForChat(id);
      }
      break;
  }

  if (info["title"] != "?" || info["photo"] != null) {
    session.chatPhotos[id] = info;
  }
  return info;
}

class _ChatImageState extends State<ChatImage> {
  late final int id = widget.id;
  late String? title = widget.title;
  late Widget? image = widget.image;
  CancelableOperation? loaderF;

  final List<Color> _colors = const [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.black,
    Colors.amber,
    Colors.teal,
    Colors.indigo,
  ];

  @override
  void dispose() {
    loaderF?.cancel();
    super.dispose();
  }

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    if (image == null) {
      if (session.chatPhotos.containsKey(id)) {
        var val = session.chatPhotos[id]!;
        title ??= val["title"];
        image = val["photo"] != null
            ? Image(
                image: val["photo"],
                fit: BoxFit.cover,
                key: ValueKey<String>(val["photo_id"]),
              )
            : null;
        _isLoading = false;
      } else {
        loaderF = CancelableOperation.fromFuture(
          _getChatInfo(id, widget.isUser, widget.messageSender).then(
            (val) => setState(() {
              title ??= val["title"];
              image = val["photo"] != null
                  ? Image(
                      image: val["photo"],
                      fit: BoxFit.cover,
                      key: ValueKey<String>(val["photo_id"]),
                    )
                  : null;
              _isLoading = false;
            }),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: image == null ? _colors[id % 10] : null,
        ),
        key: ValueKey<int>(id),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 50),
              child: widget.id == 0
                  ? Icon(
                      Icons.error,
                      color: Colors.white.withOpacity(0.5),
                    )
                  : _isLoading
                      ? CircularProgressIndicator(
                          strokeWidth: 8,
                          color: Colors.white.withOpacity(0.5),
                        )
                      : image == null
                          ? Center(
                              child: Text(
                                (title ?? "?").characters.first,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            )
                          : ClipOval(
                              child: image,
                            ),
            ),
            if (settingsStorage.debug)
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  id.toString(),
                  style: const TextStyle(
                    fontSize: 8,
                    backgroundColor: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ));
  }
}
