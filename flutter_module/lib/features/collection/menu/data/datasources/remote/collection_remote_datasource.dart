import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../../core/dio/dio.dart';

import '../../model/delivery_master_model.dart';

abstract class CollectionRemoteDataSource {
  Future<DeliveryMasterModel> getMasterCollection(
      String kodeToko, String typeMenu);
}

@Named("collectionRemoteDataSource")
@LazySingleton(as: CollectionRemoteDataSource)
class CollectionRemoteDataSourceImpl implements CollectionRemoteDataSource {
  final DioClient _client;
  CollectionRemoteDataSourceImpl(this._client);

  @override
  Future<DeliveryMasterModel> getMasterCollection(
      String kodeToko, String typeMenu) async {
    final params = {
      "kdtk": kodeToko,
      "type": typeMenu,
    };
    final response = await _client.post(
      "/collection/delivery_master",
      data: params,
    );

    final result = await compute<String, DeliveryMasterModel>(
        deliveryMasterModelFromJson, response.toString());

    return result;
  }
}
