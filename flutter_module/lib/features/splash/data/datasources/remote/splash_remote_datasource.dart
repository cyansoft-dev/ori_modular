import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '/core/dio/dio.dart';
import '../../model/setting_model.dart';
import '../../model/updater_model.dart';

abstract class SplashRemoteDataSource {
  Future<SettingModel> getSetting();

  Future<UpdaterModel> getUpdater();
}

@Named('splashRemoteDataSource')
@LazySingleton(as: SplashRemoteDataSource)
class SplashRemoteDataSourceImpl implements SplashRemoteDataSource {
  final DioClient _dioClient;

  SplashRemoteDataSourceImpl(
    this._dioClient,
  );

  @override
  Future<SettingModel> getSetting() async {
    final response = await _dioClient.get("/setting");
    return await compute<String, SettingModel>(
        settingModelFromJson, response.toString());
  }

  @override
  Future<UpdaterModel> getUpdater() async {
    final response = await _dioClient.get("/version");
    return await compute<String, UpdaterModel>(
        updaterModelFromJson, response.toString());
  }
}
