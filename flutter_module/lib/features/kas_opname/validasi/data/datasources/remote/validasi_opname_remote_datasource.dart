import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/dio/dio.dart';
import '../../../../../../core/utils/helpers.dart';
import '../../../../../common/data/models/base_response_model.dart';

abstract class ValidasiOpnameRemoteDataSource {
  Future<BaseResponseModel> validasi(String kdtk, File data);
}

@Named("validasiOpnameRemoteDataSource")
@LazySingleton(as: ValidasiOpnameRemoteDataSource)
class ValidasiOpnameRemoteDataSourceImpl
    implements ValidasiOpnameRemoteDataSource {
  final DioClient _client;
  ValidasiOpnameRemoteDataSourceImpl(this._client);

  @override
  Future<BaseResponseModel> validasi(String kdtk, File data) async {
    final imgRaw =
        await compute<String, Uint8List?>(Helpers.getImageBytesSync, data.path);
    String? imgString = imgRaw == null ? null : base64.encode(imgRaw);

    final params = {
      "kdtk": kdtk,
      "image": imgString,
    };

    final response = await _client.post("/sokas/validasi", data: params);

    final result = await compute<String, BaseResponseModel>(
        baseResponseModelFromJson, response.toString());
    return result;
  }
}
