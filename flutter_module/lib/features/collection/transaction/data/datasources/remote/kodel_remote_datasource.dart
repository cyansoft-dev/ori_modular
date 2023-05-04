import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../common/data/models/base_response_model.dart';
import '/core/dio/dio.dart';
import '../../model/transaction_request_model.dart';

abstract class KodelRemoteDataSource {
  Future<BaseResponseModel> upload(TransactionRequestModels request);
}

@Named("kodelRemoteDataSource")
@LazySingleton(as: KodelRemoteDataSource)
class KodelRemoteDataSourceImpl implements KodelRemoteDataSource {
  final DioClient _client;
  KodelRemoteDataSourceImpl(this._client);

  @override
  Future<BaseResponseModel> upload(
      TransactionRequestModels request) async {
    String params = await compute<TransactionRequestModels, String>(
        transactionRequestModelToJson, request);

    final response = await _client.post(
      "/collection/save",
      data: params,
    );

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());

    return result;
  }
}
