import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/utils/connection_checker.dart';
import '../../domain/entities/detail_tracking.dart';
import '../../domain/entities/tracking.dart';
import '../../domain/repositories/tracking_repository.dart';
import '../datasources/remote/tracking_remote_datasource.dart';
import '../models/detail_tracking_model.dart';
import '../models/tracking_model.dart';

@Named("trackingRepository")
@LazySingleton(as: TrackingRepository)
class TrackingRepositoryImpl implements TrackingRepository {
  final TrackingRemoteDataSource _remoteDataSource;
  final ConnectionChecker _checker;

  TrackingRepositoryImpl(
      @Named("trackingRemoteDataSource") this._remoteDataSource, this._checker);

  @override
  Future<Either<Failure, Tracking>> getTracking(String kodeToko) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final result = await _remoteDataSource.getTracking(kodeToko);
      final data =
          await compute<TrackingModel, Tracking>(trackingFromModel, result);

      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, DetailTracking>> getDetailTracking(
      String idDelivery) async {
    if (await _checker.status == ConnectionStatus.disconnected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final result = await _remoteDataSource.getDetailTracking(idDelivery);
      final data = await compute<DetailTrackingModel, DetailTracking>(
          detailTrackingFromJson, result);

      return Right(data);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
