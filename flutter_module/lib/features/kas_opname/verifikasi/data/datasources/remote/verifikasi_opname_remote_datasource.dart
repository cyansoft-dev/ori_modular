
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/dio/dio.dart';
import '../../../../../common/data/models/base_response_model.dart';
import '../../models/minus_opname_model.dart';
import '../../models/plus_opname_model.dart';

abstract class VerifikasiOpnameRemoteDataSource {
  Future<BaseResponseModel> uploadFraud(MinusFraudModel data);

  Future<BaseResponseModel> uploadRrak(MinusRrakModel data);

  Future<BaseResponseModel> uploadVarian(MinusVarianModel data);

  Future<BaseResponseModel> uploadOther(MinusOtherModel data);

  Future<BaseResponseModel> uploadPlus(PlusOpnameModel data);
}

@Named("verifikasiOpnameRemoteDataSource")
@LazySingleton(as: VerifikasiOpnameRemoteDataSource)
class VerifikasiOpnameRemoteDataSourceImpl implements VerifikasiOpnameRemoteDataSource {
  final DioClient _client;
  VerifikasiOpnameRemoteDataSourceImpl(this._client);

  @override
  Future<BaseResponseModel> uploadFraud(MinusFraudModel data) async {
    String params =
        await compute<MinusFraudModel, String>(minusFraudModelToJson, data);

    final response = await _client.post("/sokas/minus/fraud", data: params);

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());
    return result;
  }

  @override
  Future<BaseResponseModel> uploadRrak(MinusRrakModel data) async {
    String params =
        await compute<MinusRrakModel, String>(minusRrakModelToJson, data);

    final response = await _client.post("/sokas/minus/rrak", data: params);

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());
    return result;
  }

  @override
  Future<BaseResponseModel> uploadVarian(MinusVarianModel data) async {
    String params =
        await compute<MinusVarianModel, String>(minusVarianModelToJson, data);

    final response = await _client.post("/sokas/minus/varplus", data: params);

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());
    return result;
  }

  @override
  Future<BaseResponseModel> uploadOther(MinusOtherModel data) async {
    String params =
        await compute<MinusOtherModel, String>(minusOtherModelToJson, data);

    final response = await _client.post("/sokas/minus/selisih", data: params);

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());
    return result;
  }

  @override
  Future<BaseResponseModel> uploadPlus(PlusOpnameModel data) async {
    String params =
        await compute<PlusOpnameModel, String>(plusOpnameModelToJson, data);

    final response = await _client.post("/sokas/plus", data: params);

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());
    return result;
  }
}
