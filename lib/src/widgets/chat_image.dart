import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:handygram/src/misc/log.dart';
import 'package:handygram/src/misc/settings_db.dart';
import 'package:handygram/src/telegram/images.dart';
import 'package:handygram/src/telegram/session.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;

class ChatImage extends ConsumerStatefulWidget {
  const ChatImage({
    super.key,
    required this.id,
    this.title,
    this.image,
  });

  final int id;

  // Some widgets may control ChatImage's elements by themselves to
  // increase performance.
  final String? title;
  final Widget? image;

  @override
  ConsumerState<ChatImage> createState() => _ChatImageState();
}

Future<Map<String, dynamic>> getChatInfo(int id, [int retries = 0]) async {
  tdlib.Chat? chat;
  tdlib.User? user;
  if (id == session.usersInfoCache.me?.id) {
    user = session.usersInfoCache.me;
  } else if (retries < 10) {
    try {
      chat = await session.chatsInfoCache.get(id);
    } catch (e) {
      try {
        user = await session.usersInfoCache.get(id);
      } catch (e) {
        return Future.delayed(const Duration(seconds: 2)).then(
          (_) => getChatInfo(id, retries + 1),
        );
      }
    }
    l.d("getChatInfo", "[$id] $chat | $user");
    if (chat == null && user == null) {
      return Future.delayed(const Duration(seconds: 2)).then(
        (_) => getChatInfo(id, retries + 1),
      );
    }
  }

  if (chat != null) {
    Widget? image;
    if (chat.photo != null && session.chatPhotos[id] == null) {
      var provimage = await TgImage(
        id: chat.photo!.small.remote.id,
      ).load(priority: 1);
      if (provimage != null) {
        image = Image(
          fit: BoxFit.cover,
          image: provimage,
        );
        session.chatPhotos[id] = image;
      }
    }
    return {
      "title": chat.title,
      "photo": image ?? session.chatPhotos[id],
    };
  } else if (user != null) {
    Widget? image;
    if (user.profilePhoto != null && session.chatPhotos[id] == null) {
      var provimage = await TgImage(
        id: user.profilePhoto!.small.remote.id,
        type: const tdlib.FileTypeProfilePhoto(),
      ).load(priority: 1);
      if (provimage != null) {
        image = Image(
          fit: BoxFit.cover,
          image: provimage,
        );
        session.chatPhotos[id] = image;
      }
    }
    return {
      "title": user.firstName.isNotEmpty
          ? user.lastName.isNotEmpty
              ? "${user.firstName} ${user.lastName}"
              : user.firstName
          : "Unnamed user",
      "photo": image ?? session.chatPhotos[id],
    };
  }

  return {
    "title": "?",
    "photo": null,
  };
}

class _ChatImageState extends ConsumerState<ChatImage> {
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
      loaderF = CancelableOperation.fromFuture(
        getChatInfo(id).then(
          (val) => setState(() {
            title = val["title"];
            image = val["photo"];
            _isLoading = false;
          }),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: image == null ? _colors[id % 10] : null,
        ),
        key: UniqueKey(),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
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
