import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/dio/dio.dart';
import '../../model/menu_model.dart';

abstract class MenuRemoteDataSource {
  Future<MenuModel> getMenu();
}

@Named("menuRemoteDataSource")
@LazySingleton(as: MenuRemoteDataSource)
class MenuRemoteDataSourceImpl implements MenuRemoteDataSource {
  final DioClient _client;
  MenuRemoteDataSourceImpl(this._client);

  @override
  Future<MenuModel> getMenu() async {
    final result = await _client.get("/menu");
    return await compute<String, MenuModel>(
        menuModelFromJson, result.toString());
  }
}
