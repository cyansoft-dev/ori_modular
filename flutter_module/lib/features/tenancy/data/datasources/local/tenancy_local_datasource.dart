import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/database/database.dart';
import '../../../../../core/database/objectbox.g.dart';
import '../../model/data_tenant_dto.dart';
import '../../model/master_tenant_model.dart';

abstract class TenancyLocalDataSource {
  Future<ListMasterTenantModel> getMasterTenant();

  Future<List<DataTenantDto>?> putData(DataTenantDto data);

  Future<List<DataTenantDto>?> putManyData(List<DataTenantDto> data);

  Future<List<DataTenantDto>?> fetchData(String kdtk);

  Future<List<DataTenantDto>?> deleteData(int id);

  Future<List<DataTenantDto>?> truncateData();
}

@Named("tenancyLocalDataSource")
@LazySingleton(as: TenancyLocalDataSource)
class TenancyLocalDataSourceImpl implements TenancyLocalDataSource {
  final Database _database;
  TenancyLocalDataSourceImpl(@Named("database") this._database);

  @override
  Future<ListMasterTenantModel> getMasterTenant() async {
    final result =
        await rootBundle.loadString("assets/data/tenant_master.json");
    final data =
        await compute<String, ListMasterTenantModel>(masterTenantModelFromJson, result);
    return data;
  }

  @override
  Future<List<DataTenantDto>?> putData(DataTenantDto data) async {
    if (data.kdtk == null) {
      return null;
    }

    final box = _database.store.box<DataTenantDto>();
    box.put(data);
    return await fetchData(data.kdtk!);
  }

  @override
  Future<List<DataTenantDto>?> fetchData(String kdtk) async {
    final box = _database.store.box<DataTenantDto>();
    final condition = DataTenantDto_.kdtk.contains(kdtk);
    final builder = box.query(condition).build();
    return builder.find();
  }

  @override
  Future<List<DataTenantDto>?> deleteData(int id) async {
    return await _database.deleteData<DataTenantDto>(id);
  }

  @override
  Future<List<DataTenantDto>?> truncateData() async {
    return await _database.deleteAllData<DataTenantDto>();
  }

  @override
  Future<List<DataTenantDto>?> putManyData(List<DataTenantDto> data) async {
    if (data.first.kdtk == null) {
      return null;
    }

    final box = _database.store.box<DataTenantDto>();
    box.putMany(data);
    return await fetchData(data.first.kdtk!);
  }
}
