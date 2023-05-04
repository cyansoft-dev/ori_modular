import 'package:injectable/injectable.dart';

import '../../../../../../core/database/database.dart';
import '../../../../../../core/database/objectbox.g.dart';
import '../../model/data_collection_dto.dart';

abstract class KodelLocalDataSource {
  Future<List<DataCollectionDto>?> fetchTransaction(String kdtk);
  Future<List<DataCollectionDto>?> deleteTransaction(int id);
  Future<List<DataCollectionDto>?> deleteBatchTransaction(List<int> ids);
  Future<List<DataCollectionDto>?> addTransaction(DataCollectionDto data);
  Future<List<DataCollectionDto>?> addManyTransaction(List<DataCollectionDto> data);
  Future<List<DataCollectionDto>?> truncateTransaction();
}

@Named("kodelLocalDataSource")
@LazySingleton(as: KodelLocalDataSource)
class KodelLocalDataSourceImpl implements KodelLocalDataSource {
  final Database _database;
  KodelLocalDataSourceImpl(@Named("database") this._database);

  @override
  Future<List<DataCollectionDto>?> addTransaction(DataCollectionDto data) async {
    if (data.kdtk == null) {
      return null;
    }

    final box = _database.store.box<DataCollectionDto>();
    box.put(data);
    return await fetchTransaction(data.kdtk!);
  }

  @override
  Future<List<DataCollectionDto>?> fetchTransaction(String kdtk) async {
    final box = _database.store.box<DataCollectionDto>();
    final condition = DataCollectionDto_.kdtk.contains(kdtk);
    final builder = box.query(condition).build();
    return builder.find();
  }

  @override
  Future<List<DataCollectionDto>?> deleteTransaction(int id) async {
    return await _database.deleteData<DataCollectionDto>(id);
  }

  @override
  Future<List<DataCollectionDto>?> truncateTransaction() async {
    return await _database.deleteAllData<DataCollectionDto>();
  }

  @override
  Future<List<DataCollectionDto>?> deleteBatchTransaction(List<int> ids) async {
    return await _database.deleteBatch<DataCollectionDto>(ids);
  }

  @override
  Future<List<DataCollectionDto>?> addManyTransaction(List<DataCollectionDto> data) async {
    if (data.first.kdtk == null) {
      return null;
    }

    final box = _database.store.box<DataCollectionDto>();
    box.putMany(data);
    return await fetchTransaction(data.first.kdtk!);
  }
}
