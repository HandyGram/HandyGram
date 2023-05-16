import 'package:flutter/material.dart';
import 'package:handygram/src/tdlib/td_api.dart' as tdlib;
import 'session.dart';

class TgUserInfoCache extends ChangeNotifier {
  final Map<int, tdlib.User> _users = {};
  tdlib.User? _me;
  final List<int> _loading = [];
  bool _loadingMe = false;

  TgUserInfoCache._i();

  Future<void> _asyncInit() async {
    // _users = await SuperBox.initialize<int, tdlib.User>(
    //   "cache-userinfo",
    //   (json) => tdlib.User.fromJson(json),
    //   (value) => Map<String, dynamic>.from(value.toJson()),
    // );
  }

  static Future<TgUserInfoCache> initialize() async {
    TgUserInfoCache cache = TgUserInfoCache._i();
    await cache._asyncInit();
    return cache;
  }

  tdlib.User? get me {
    if (_loadingMe) {
      return null;
    }
    if (_me == null) {
      _loadingMe = true;
      session.functions.getMe().then((u) {
        if (u == null) return;
        _me = u;
        add(_me!);
        _loadingMe = false;
        notifyListeners();
      });
      return null;
    }
    return _me;
  }

  void add(tdlib.User user) {
    _users[user.id] = user;
    notifyListeners();
  }

  void update(
    int id, {
    tdlib.UserStatus? status,
  }) async {
    if (_users.containsKey(id)) {
      _users[id] = _users[id]!.copyWith(
        status: status,
      );
    }
    notifyListeners();
  }

  void updateFully(tdlib.User user) =>
      _users.containsKey(user.id) ? add(user) : null;

  Future<tdlib.User?> _get(int id) async {
    _loading.add(id);
    var tduser = await session.functions.getUser(id);
    if (tduser != null) {
      add(tduser);
    }
    _loading.remove(id);
    return tduser;
  }

  Future<tdlib.User?> get(int id) async {
    // Sth like a mutex for every user
    if (_loading.contains(id)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(id)),
      );
    }

    if (_users[id] == null) {
      return _get(id);
    }
    return _users[id];
  }

  tdlib.User? maybeGet(int id) {
    if (_users[id] == null) {
      get(id);
      return null;
    }
    return _users[id];
  }

  void clear() {
    _users.clear();
  }

  tdlib.User? operator [](int id) {
    return maybeGet(id);
  }
}

class TgUserFullInfoCache extends ChangeNotifier {
  final Map<int, tdlib.UserFullInfo> _usersFullInfo = {};
  final List<int> _loading = [];

  TgUserFullInfoCache._i();

  Future<void> _asyncInit() async {
    // _usersFullInfo = await SuperBox.initialize(
    //   "cache-userfullinfo",
    //   (json) => tdlib.UserFullInfo.fromJson(json),
    //   (value) => Map<String, dynamic>.from(value.toJson()),
    // );
  }

  static Future<TgUserFullInfoCache> initialize() async {
    TgUserFullInfoCache cache = TgUserFullInfoCache._i();
    await cache._asyncInit();
    return cache;
  }

  void add(int userId, tdlib.UserFullInfo userFullInfo) {
    _usersFullInfo[userId] = userFullInfo;
    notifyListeners();
  }

  void updateFully(int userId, tdlib.UserFullInfo userFullInfo) =>
      _usersFullInfo.containsKey(userId) ? add(userId, userFullInfo) : null;

  Future<tdlib.UserFullInfo?> _get(int id) async {
    _loading.add(id);
    var tduserfull = await session.functions.getUserFullInfo(id);
    if (tduserfull != null) {
      add(id, tduserfull);
    }
    _loading.remove(id);
    return tduserfull;
  }

  Future<tdlib.UserFullInfo?> get(int id) async {
    // Sth like a mutex for every user
    if (_loading.contains(id)) {
      await Future.doWhile(
        () => Future.delayed(
          const Duration(seconds: 1),
        ).then((_) => _loading.contains(id)),
      );
    }

    if (_usersFullInfo[id] == null) {
      return _get(id);
    }
    return _usersFullInfo[id];
  }

  tdlib.UserFullInfo? maybeGet(int id) {
    if (_usersFullInfo[id] == null) {
      get(id);
      return null;
    }
    return _usersFullInfo[id];
  }

  void clear() {
    _usersFullInfo.clear();
  }

  tdlib.UserFullInfo? operator [](int id) {
    return maybeGet(id);
  }
}

void usersHandler(tdlib.TdObject object, TgSession session) {
  switch (object) {
    case tdlib.UpdateUser(user: var u):
      session.usersInfoCache.updateFully(u);
      break;
    case tdlib.UpdateUserStatus(userId: var id, status: var status):
      session.usersInfoCache.update(id, status: status);
      break;
    case tdlib.UpdateUserFullInfo(userId: var id, userFullInfo: var fi):
      session.usersFullInfoCache.updateFully(id, fi);
      break;
    default:
      return;
  }
}

String userToUsername(tdlib.User u) {
  if (u.firstName.isEmpty) {
    if (u.phoneNumber.isEmpty) {
      if (u.usernames == null) {
        return "UID ${u.id}";
      } else {
        return u.usernames!.activeUsernames[0];
      }
    } else {
      return u.phoneNumber;
    }
  } else {
    if (u.lastName.isEmpty) {
      return u.firstName;
    } else {
      return "${u.firstName} ${u.lastName}";
    }
  }
}
