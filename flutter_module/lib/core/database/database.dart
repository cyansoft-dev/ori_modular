import 'dart:async';

import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

import 'objectbox.g.dart';


class Database {
  Database._(this._store);

  static Completer<Database>? _completer;

  final Store _store;

  Store get store => _store;

  static Future<Database> instance() async {
    if (_completer == null) {
      final Completer<Database> completer = Completer<Database>();

      try {
        final directory = await getApplicationDocumentsDirectory();
        String path = join(directory.path, "BoomBox");

        Store? store;
        if (Store.isOpen(path)) {
          store = Store.attach(getObjectBoxModel(), path);
        } else {
          store = await openStore(directory: path);
        }
        completer.complete(Database._(store));
      } catch (e) {
        completer.completeError(e);
      }
      _completer = completer;
    }
    return _completer!.future;
  }

  Future<List<T>> getAllData<T>() async {
    final box = store.box<T>();
    final listData = box.getAll();

    return listData;
  }

  Future<T?> getData<T>() async {
    final box = store.box<T>();
    final listData = box.getAll();

    if (listData.isNotEmpty) {
      return listData.first;
    }
    return null;
  }

  Future<T?> getLastData<T>() async {
    final box = store.box<T>();
    final listData = box.getAll();

    if (listData.isNotEmpty) {
      return listData.last;
    }
    return null;
  }

  Future<T?> getFirstData<T>() async {
    final box = store.box<T>();
    final listData = box.getAll();

    if (listData.isNotEmpty) {
      return listData.first;
    }
    return null;
  }

  Future<List<T>> putData<T>(T data) async {
    final box = store.box<T>();
    box.put(data);
    final listData = box.getAll();
    return listData;
  }

  Future<List<T>> deleteData<T>(int id) async {
    final box = store.box<T>();
    box.remove(id);

    final listData = box.getAll();
    return listData;
  }

  Future<List<T>> deleteBatch<T>(List<int> ids) async {
    final box = store.box<T>();
    box.removeMany(ids);

    final listData = box.getAll();
    return listData;
  }

  Future<List<T>> deleteAllData<T>() async {
    final box = store.box<T>();
    box.removeAll();

    final listData = box.getAll();
    return listData;
  }

  Stream<List<T>> streamData<T>() async* {
    final box = store.box<T>();
    yield* box
        .query()
        .watch(triggerImmediately: true)
        .map((query) => query.find());
  }
}
