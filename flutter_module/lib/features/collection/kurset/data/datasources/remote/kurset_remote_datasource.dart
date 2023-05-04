import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/dio/dio.dart';
import '../../models/kurset_model.dart';

abstract class KursetRemoteDataSource {
  Future<KursetModel> getKurset(String kdtk);
}

@Named("kursetRemoteDataSource")
@LazySingleton(as: KursetRemoteDataSource)
class KursetRemoteDataSourceImpl implements KursetRemoteDataSource{
  final DioClient _client;
  KursetRemoteDataSourceImpl(this._client);

  @override
  Future<KursetModel> getKurset(String kdtk) async {
    final params = {"kdtk": kdtk};
    final response = await _client.post(
      "/collection/kurset",
      data: params,
    );

    final result = await compute<String, KursetModel>(
        kursetModelFromJson, response.toString());

    return result;
  }
}