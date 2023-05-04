import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/utils/connection_checker.dart';
import '../../domain/entities/store.dart';
import '../../domain/repositories/store_repository.dart';
import '../datasources/remote/store_remote_datasource.dart';
import '../model/store_model.dart';

@Named("storeRepository")
@LazySingleton(as: StoreRepository)
class StoreRepositoryImpl implements StoreRepository {
  final StoreRemoteDataSource _remoteDataSource;
  final ConnectionChecker _checker;

  StoreRepositoryImpl(
    @Named("storeRemoteDataSource") this._remoteDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, ListStore>> getStore() async {
    if (await _checker.status == ConnectionStatus.connected) {
      try {
        final response = await _remoteDataSource.getStore();
        if (response.listStoreModel != null) {
          final result = await compute<List<StoreDataModel>, ListStore>(
              listStoreFromModel, response.listStoreModel!);

          return Right(result);
        } else {
          return const Left(Failure.empty());
        }
      } catch (e) {
        return Left(Failure.fromException(e));
      }
    } else {
      return const Left(Failure.noNetwork());
    }
  }
}
