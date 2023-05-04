import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/database.dart';
import '../../../../../core/database/objectbox.g.dart';
import '../../../../splash/data/model/user_dto.dart';
import '../../model/message_dto.dart';

abstract class HomeLocalDataSource {
  Future<bool?> deleteUser(String userName);

  Future<Position> getCurrentPosition();

  Stream<Position> getStreamPosition();

  Future<List<MessageDto>> update(RemoteMessage message);

  Stream<List<MessageDto>> fetch();

  Future<bool> updateMessage(int id);
}

@Named("homeLocalDataSource")
@LazySingleton(as: HomeLocalDataSource)
class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final Database _database;
  HomeLocalDataSourceImpl(@Named("database") this._database);

  @override
  Future<bool?> deleteUser(String userName) async {
    final box = _database.store.box<UserDto>();
    final condition = UserDto_.username.contains(userName);
    final builder = box.query(condition).build();
    builder.remove();

    return Future.value(true);
  }

  @override
  Future<Position> getCurrentPosition() {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Future<List<MessageDto>> update(RemoteMessage message) async {
    final dto = MessageDto.fromModel(message);
    final box = _database.store.box<MessageDto>();
    box.put(dto);
    final query = box.query()
      ..order(MessageDto_.id, flags: 1);
    final builder = query.build();
    builder.offset = 10;
    final ids = builder.findIds();
    if (ids.isNotEmpty) {
      box.removeMany(ids);
    }

    return box.getAll();
  }

  @override
  Stream<List<MessageDto>> fetch() async* {
    final box = _database.store.box<MessageDto>();
    final query = box.query()
      ..order(MessageDto_.id, flags: 1);
    yield* query.watch(triggerImmediately: true).map((q) => q.find());
  }

  @override
  Future<bool> updateMessage(int id) {
    final box = _database.store.box<MessageDto>();
    final builder = box.query(MessageDto_.id.equals(id)).build();
    final data = builder.findFirst();
    if (data == null) {
      return Future.value(false);
    }
    data.read = true;
    box.put(data);
    return Future.value(true);
  }

  @override
  Stream<Position> getStreamPosition() {
    const LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    return Geolocator.getPositionStream(locationSettings: locationSettings);
  }
}
