import 'dart:isolate';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '/core/database/database.dart';
import '/core/database/objectbox.g.dart';
import '/core/utils/encryption.dart';
import '../../mapper/menu_opname_mapper.dart';
import '../../model/master_opname_dto.dart';
import '../../model/master_opname_model.dart';

abstract class MenuOpnameLocalDataSource {
  Future<MasterOpnameDto?> addMasterOpname(
      String data, String vectorKey, String secretKey);

  Future<MasterOpnameDto?> updateMasterOpname(MasterOpnameDto dto);

  Future<MasterOpnameDto?> fetchCurrentMaster(String kdtk);
}

@Named("menuOpnameLocalDataSource")
@LazySingleton(as: MenuOpnameLocalDataSource)
class MenuOpnameLocalDataSourceImpl implements MenuOpnameLocalDataSource {
  final Database _database;
  MenuOpnameLocalDataSourceImpl(@Named("database") this._database);

  @override
  Future<MasterOpnameDto?> addMasterOpname(
      String data, String vectorKey, String secretKey) async {
    final decryptString = await Isolate.run(() {
      return decrypt(data, vectorKey: vectorKey, secretKey: secretKey);
    });

    final MasterOpnameModel dataModel =
        await compute<String, MasterOpnameModel>(
            masterOpnameModelFromJson, decryptString);

    final dto = KasOpnameMapper.modelToDto(dataModel);
    final box = _database.store.box<MasterOpnameDto>();

    MasterOpnameDto? result;
    if (dto.toko != null) {
      final query = box.query(MasterOpnameDto_.toko.equals(dto.toko!));
      Query<MasterOpnameDto> builder = query.build();
      builder.remove();
      final count = box.put(dto);
      if (count > 0) {
        result = builder.findFirst();
      }
    }
    return result;
  }

  @override
  Future<MasterOpnameDto?> fetchCurrentMaster(String kdtk) async {
    final box = _database.store.box<MasterOpnameDto>();
    final now = DateTime.now();
    final curDate =
        DateTime(now.year, now.month, now.day).millisecondsSinceEpoch;

    final condition = MasterOpnameDto_.toko
        .equals(kdtk)
        .and(MasterOpnameDto_.tanggal.equals(curDate));

    final builder = box.query(condition).build();
    final result = builder.findFirst();
    return result;
  }

  @override
  Future<MasterOpnameDto?> updateMasterOpname(MasterOpnameDto dto) async {
    if (dto.toko != null) {
      final box = _database.store.box<MasterOpnameDto>();
      box.put(dto);
      return await fetchCurrentMaster(dto.toko!);
    }
    return null;
  }
}
