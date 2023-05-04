import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/utils/connection_checker.dart';
import '../../domain/entities/delivery_master.dart';
import '../../domain/repositories/collection_repository.dart';
import '../datasources/local/collection_local_datasource.dart';
import '../datasources/remote/collection_remote_datasource.dart';
import '../model/delivery_master_model.dart';

@Named("collectionRepository")
@LazySingleton(as: CollectionRepository)
class CollectionRepositoryImpl implements CollectionRepository {
  final CollectionRemoteDataSource _remoteDataSource;
  final CollectionLocalDataSource _localDataSource;
  final ConnectionChecker _checker;

  CollectionRepositoryImpl(
    @Named("collectionRemoteDataSource") this._remoteDataSource,
    @Named("collectionLocalDataSource") this._localDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, DeliveryMaster>> getCollectMaster(
      String kodeToko, String typeMenu) async {
    if (await _checker.status == ConnectionStatus.connected) {
      try {
        final data =
            await _remoteDataSource.getMasterCollection(kodeToko, typeMenu);
        final result = await compute<DeliveryMasterModel, DeliveryMaster>(
            deliveryMasterFromModel, data);

        return Right(result);
      } catch (e) {
        return Left(Failure.fromException(e));
      }
    } else {
      return const Left(Failure.noNetwork());
    }
  }

  @override
  Future<Either<Failure, DeliveryMaster>> getCollectionMaster() async {
    try {
      final data = await _localDataSource.getCollectionMaster();
      final result = await compute<DeliveryMasterModel, DeliveryMaster>(
          deliveryMasterFromModel, data);
      return Right(result);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
