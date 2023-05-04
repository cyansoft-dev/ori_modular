
import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '/core/dio/dio.dart';
import '../../../../splash/domain/entities/app_info.dart';
import '../../model/user_model.dart';

abstract class LoginRemoteDataSource {
  Future<UserModel> postLogin(
    String username,
    String password,
    AppInfo info,
  );
}

@Named("loginRemoteDataSource")
@LazySingleton(as: LoginRemoteDataSource)
class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  LoginRemoteDataSourceImpl(this._client);

  final DioClient _client;

  @override
  Future<UserModel> postLogin(
    String username,
    String password,
    AppInfo info,
  ) async {
    final firebaseToken = await FirebaseMessaging.instance.getToken();
    debugPrint("firebase token : $firebaseToken");

    final params = {
      "username": username,
      "password": password,
      "token_firebase": firebaseToken
    };

    final options = Options(
      headers: {
        "id": info.deviceId,
        "device": info.model,
        "version": info.version,
      },
    );

    final response = await _client.post(
      "/login",
      data: params,
      options: options,
    );

    final result = await compute<String, UserModel>(
        userModelFromJson, response.toString());

    return result;
  }
}
