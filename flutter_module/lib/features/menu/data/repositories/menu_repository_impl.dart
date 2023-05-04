import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/utils/connection_checker.dart';
import '../../domain/entities/menu.dart';
import '../../domain/repositories/menu_repository.dart';
import '../datasources/remote/menu_remote_datasource.dart';
import '../model/menu_model.dart';

@Named("menuRepository")
@LazySingleton(as: MenuRepository)
class MenuRepositoryImpl implements MenuRepository {
  final MenuRemoteDataSource _remoteDataSource;
  final ConnectionChecker _checker;

  MenuRepositoryImpl(
    @Named("menuRemoteDataSource") this._remoteDataSource,
      this._checker,
  );

  @override
  Future<Either<Failure, Menu>> getMenu() async {
    if (await _checker.status == ConnectionStatus.connected) {
      try {
        final response = await _remoteDataSource.getMenu();
        final result = await compute<MenuModel, Menu>(menuFromModel, response);
        return Right(result);
      } catch (e) {
        return Left(Failure.fromException(e));
      }
    } else {
      return const Left(Failure.noNetwork());
    }
  }
}
