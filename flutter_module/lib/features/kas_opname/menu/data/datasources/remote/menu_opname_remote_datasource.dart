import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/dio/dio.dart';
import '../../../../../common/data/models/base_response_model.dart';
import '../../model/lock_opname_model.dart';

abstract class MenuOpnameRemoteDataSource {
  Future<BaseResponseModel> checkCollection(String kodeToko);

  Future<BaseResponseModel> lockOpname(String kodeToko, String station);

  Future<LockOpnameModel> scanBarcode(String kodeToko);

  Future<void> cancelRequest();
}

@Named("menuOpnameRemoteDataSource")
@LazySingleton(as: MenuOpnameRemoteDataSource)
class MenuOpnameRemoteDataSourceImpl implements MenuOpnameRemoteDataSource {
  MenuOpnameRemoteDataSourceImpl(this._client);

  final DioClient _client;
  CancelToken? token;

  @override
  Future<BaseResponseModel> lockOpname(String kodeToko, String station) async {
    final params = {"kdtk": kodeToko, "station": station};

    token ??= CancelToken();

    final response = await _client.post(
      "/sokas/lock",
      data: params,
      cancelToken: token,
    );

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());

    return result;
  }

  @override
  Future<LockOpnameModel> scanBarcode(String kodeToko) async {
    final params = {"kdtk": kodeToko};

    final response = await _client.post(
      "/sokas/scan",
      data: params,
    );

    final result = await compute<String, LockOpnameModel>(
        lockOpnameModelFromModel, response.toString());

    return result;
  }

  @override
  Future<void> cancelRequest() async {
    _client.cancelRequests(cancelToken: token);
    token = null;
  }

  @override
  Future<BaseResponseModel> checkCollection(String kodeToko) async {
    final params = {"kdtk": kodeToko};

    token ??= CancelToken();

    final response = await _client.post(
      "/sokas/check-collection",
      data: params,
      cancelToken: token,
    );

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());

    return result;
  }
}
