import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/dio/dio.dart';
import '../../../../common/data/models/base_response_model.dart';
import '../../model/data_tenant_model.dart';
import '../../model/master_tenant_model.dart';

abstract class TenancyRemoteDataSource {
  Future<ListMasterTenantModel> getMasterTenant(String kdtk);

  Future<BaseResponseModel> uploadDataTenant(ListDataTenantModel model);
}

@Named("tenancyRemoteDataSource")
@LazySingleton(as: TenancyRemoteDataSource)
class TenancyRemoteDataSourceImpl implements TenancyRemoteDataSource {
  final DioClient _client;
  TenancyRemoteDataSourceImpl(this._client);

  @override
  Future<ListMasterTenantModel> getMasterTenant(String kdtk) async {
    final params = {'kdtk': kdtk};
    final result = await _client.post('/tenant/master', data: params);

    final data = await compute<String, ListMasterTenantModel>(
        masterTenantModelFromJson, result.toString());
    return data;
  }

  @override
  Future<BaseResponseModel> uploadDataTenant(ListDataTenantModel model) async {
    final params =
        await compute<ListDataTenantModel, String>(tenantModelToJson, model);

    final result = await _client.post('/tenant/save', data: params);
    final data = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, result.toString());
    return data;
  }
}
