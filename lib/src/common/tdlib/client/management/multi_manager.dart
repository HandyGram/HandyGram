import 'dart:io';

import 'package:handygram/src/common/exceptions/tdlib_core_exception.dart';
import 'package:handygram/src/common/log/log.dart';
import 'package:handygram/src/common/tdlib/client/management/user_manager.dart';
import 'package:handygram/src/common/tdlib/client/td/parameters.dart';

class TdlibMultiManager {
  static const String tag = "TdlibMultiManager";

  final List<int> _runningDatabases = [];
  final Map<int, TdlibUserManager> _users = {};
  static const maxClients = 10;

  Iterable<int> get clientIds => _users.keys;
  Iterable<int> get databaseIds => _runningDatabases;

  TdlibUserManager? fromClientId(int clid) => _users[clid];
  TdlibUserManager? fromDatabaseId(int dbid) =>
      _users.values.firstWhere((u) => u.databaseId == dbid);

  Future<void> destroy({
    int? databaseId,
    int? clientId,
  }) async {
    if (databaseId != null) {
      if (!_runningDatabases.contains(databaseId)) {
        throw const TdlibCoreException(tag, "No such database");
      }
      clientId = _users.values
          .firstWhere(
            (c) => c.databaseId == databaseId,
          )
          .clientId;
    } else if (clientId != null) {
      if (!_users.containsKey(clientId)) {
        throw const TdlibCoreException(tag, "No such clientId");
      }
      databaseId = _users[clientId]!.databaseId;
    } else {
      throw const TdlibCoreException(
        tag,
        "destroy: no id was provided",
      );
    }

    await _users[clientId]!.destroy();
    _users.remove(clientId);
    _runningDatabases.remove(databaseId);
  }

  Future<void> delete({
    int? databaseId,
    int? clientId,
  }) async {
    if (databaseId != null) {
      if (!_runningDatabases.contains(databaseId)) {
        throw const TdlibCoreException(tag, "No such database");
      }
      clientId = _users.values
          .firstWhere(
            (c) => c.databaseId == databaseId,
          )
          .clientId;
    } else if (clientId != null) {
      if (!_users.containsKey(clientId)) {
        throw const TdlibCoreException(tag, "No such clientId");
      }
      databaseId = _users[clientId]!.databaseId;
    } else {
      throw const TdlibCoreException(
        tag,
        "delete: no id was provided",
      );
    }

    final rootPath = await TdlibParameters.getDatabasesRoot();
    await destroy(databaseId: databaseId);
    await Directory("$rootPath/db-$databaseId").delete(recursive: true);
  }

  Future<int> create([int? id]) async {
    int db = -1;
    if (id == null) {
      for (int i = 0; i < maxClients; i++) {
        if (!_runningDatabases.contains(i)) {
          db = i;
        }
      }
    } else {
      if (_runningDatabases.contains(id)) {
        throw TdlibCoreException(
          tag,
          "DB $id is already running",
        );
      }
      db = id;
    }
    if (db == -1) {
      throw const TdlibCoreException(tag, "Too many clients");
    }

    final m = await TdlibUserManager.start(db);
    _users[m.clientId] = m;
    _runningDatabases.add(db);

    return m.clientId;
  }

  Future<int> createLite(int dbId, int clientId) async {
    final m = await TdlibUserManager.startLite(
      databaseId: dbId,
      clientId: clientId,
    );
    _users[m.clientId] = m;
    _runningDatabases.add(dbId);
    return m.clientId;
  }

  // Very simple way to restore existing database ids.
  Future<List<int>> restoreDatabaseIds() async {
    final rootPath = await TdlibParameters.getDatabasesRoot();
    final root = Directory(rootPath);
    if (!await root.exists()) {
      l.e(tag, "$rootPath doesn't exist");
      return [];
    }

    final List<int> ids = [];
    await for (final e in root.list().map((e) => e.path.split('/').last)) {
      if (!e.startsWith("db-")) {
        l.d(tag, "Not a database $e");
        continue;
      }
      ids.add(
        int.parse(e.substring(3, 4)),
      );
    }
    if (ids.isEmpty) {
      l.d(tag, "No databases restored");
    } else {
      l.d(tag, "Restored databases ${ids.join(", ")}");
    }
    return ids;
  }

  static final TdlibMultiManager instance = TdlibMultiManager._();

  TdlibMultiManager._();

  /// Singleton
  factory TdlibMultiManager() {
    return instance;
  }
}
