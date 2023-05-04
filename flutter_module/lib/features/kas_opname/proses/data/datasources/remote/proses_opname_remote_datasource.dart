import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/dio/dio.dart';
import '../../model/data_audit_model.dart';
import '../../model/kas_master_model.dart';
import '../../model/summary_audit_model.dart';

abstract class ProsesOpnameRemoteDataSource {
  Future<KasMasterModel> getKasMaster(String kodeToko);
  Future<SummaryAuditModel> uploadKasOpname(DataAuditModel model);
}

@Named("prosesOpnameRemoteDataSource")
@LazySingleton(as: ProsesOpnameRemoteDataSource)
class ProsesOpnameRemoteDataSourceImpl implements ProsesOpnameRemoteDataSource {
  final DioClient _client;
  ProsesOpnameRemoteDataSourceImpl(this._client);

  @override
  Future<KasMasterModel> getKasMaster(String kodeToko) async {
    final params = {"kdtk": kodeToko};
    final response = await _client.post(
      "/collection/delivery_master",
      data: params,
    );

    final result = await compute<String, KasMasterModel>(
        kasMasterModelFromJson, response.toString());

    return result;
  }

  @override
  Future<SummaryAuditModel> uploadKasOpname(DataAuditModel model) async {
    final params =
        await compute<DataAuditModel, String>(dataAuditModelToJson, model);
    final response = await _client.post("/sokas/save", data: params);

    final result = await compute<String, SummaryAuditModel>(
        summaryAuditModelFromJson, response.toString());

    return result;
  }
}
