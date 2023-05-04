import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '/core/failure/failure.dart';
import '../../domain/repositories/common_repository.dart';
import '../datasources/local/common_local_datasource.dart';

@Named('commonRepository')
@LazySingleton(as: CommonRepository)
class CommonRepositoryImpl implements CommonRepository {
  final CommonLocalDataSource _localDataSource;
  CommonRepositoryImpl(@Named('commonLocalDataSource') this._localDataSource);

  @override
  Future<Either<Failure, PermissionStatus>> requestCameraPermission() async {
    try {
      final status = await _localDataSource.requestCameraPermission();
      return Right(status);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, PermissionStatus>> requestLocationPermission() async {
    try {
      final status = await _localDataSource.requestLocationPermission();
      return Right(status);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Stream<Position> streamLocation() {
    return _localDataSource.streamLocation();
  }

  @override
  Future<Either<Failure, Position>> getCurrentLocation() async {
    try {
      final status = await _localDataSource.getCurrentLocation();
      return Right(status);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, PermissionStatus>> requestWriteExternalStorage() async {
    try{
      PermissionStatus status = await _localDataSource.requestWriteExternalStorage();
      return Right(status);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
