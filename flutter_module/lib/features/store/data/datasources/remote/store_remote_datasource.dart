import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '/core/dio/dio.dart';
import '../../model/store_model.dart';

abstract class StoreRemoteDataSource {
  Future<StoreModel> getStore();
}

@Named("storeRemoteDataSource")
@LazySingleton(as: StoreRemoteDataSource)
class StoreRemoteDataSourceImpl implements StoreRemoteDataSource {
  final DioClient _client;
  StoreRemoteDataSourceImpl(this._client);

  @override
  Future<StoreModel> getStore() async {
    final result = await _client.get("/store");
    return await compute<String, StoreModel>(
        storeModelFromJson, result.toString());
  }
}
