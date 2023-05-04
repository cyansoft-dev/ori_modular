import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/dio/dio.dart';
import '../../model/faq_model.dart';

typedef TerminateMessage = Function(RemoteMessage);

abstract class HomeRemoteDataSource {
  Future<bool> postLogout(String username);

  Stream<RemoteMessage> onMessage();

  Stream<RemoteMessage> onBackgroundMessage();

  Future<RemoteMessage?> getInitialMessage();

  Future<FaqModel> getFaq();
}

@Named("homeRemoteDataSource")
@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final DioClient _client;
  HomeRemoteDataSourceImpl(this._client);

  @override
  Future<bool> postLogout(String username) async {
    await FirebaseMessaging.instance.deleteToken();

    final params = {
      "username": username,
    };

    final response = await _client.get(
      "/logout",
      queryParams: params,
    );

    if (response.statusCode == 200) {
      return Future.value(true);
    } else {
      return Future.value(false);
    }
  }

  @override
  Stream<RemoteMessage> onBackgroundMessage() {
    return FirebaseMessaging.onMessageOpenedApp;
  }

  @override
  Stream<RemoteMessage> onMessage() {
    return FirebaseMessaging.onMessage;
  }

  @override
  Future<RemoteMessage?> getInitialMessage() async {
    return await FirebaseMessaging.instance.getInitialMessage();
  }

  @override
  Future<FaqModel> getFaq() async {
    final response = await _client.post(
      "/faq",
    );

    final result =
        await compute<String, FaqModel>(faqModelFromJson, response.toString());

    return result;
  }
}
