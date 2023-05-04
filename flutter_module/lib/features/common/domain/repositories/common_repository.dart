import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

import '/core/failure/failure.dart';

abstract class CommonRepository {
  Future<Either<Failure, PermissionStatus>> requestLocationPermission();

  Future<Either<Failure, PermissionStatus>> requestCameraPermission();

  Stream<Position> streamLocation();

  Future<Either<Failure, Position>> getCurrentLocation();

  Future<Either<Failure, PermissionStatus>> requestWriteExternalStorage();
}
