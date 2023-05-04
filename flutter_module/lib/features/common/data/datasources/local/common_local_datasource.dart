import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class CommonLocalDataSource {
  Future<PermissionStatus> requestLocationPermission();

  Future<PermissionStatus> requestCameraPermission();

  Stream<Position> streamLocation();

  Future<Position> getCurrentLocation();

  Future<PermissionStatus> requestWriteExternalStorage();

}

@Named('commonLocalDataSource')
@LazySingleton(as: CommonLocalDataSource)
class CommonLocalDataSourceImpl implements CommonLocalDataSource {
  @override
  Future<PermissionStatus> requestCameraPermission() async {
    final status = await Permission.camera.status;

    if (!status.isGranted) {
      return await Permission.camera.request();
    }

    return status;
  }

  @override
  Future<PermissionStatus> requestLocationPermission() async {
    final status = await Permission.location.status;

    if (!status.isGranted) {
      return await Permission.location.request();
    }

    return status;
  }

  @override
  Stream<Position> streamLocation() {
    return Geolocator.getPositionStream();
  }

  @override
  Future<Position> getCurrentLocation() {
    return Geolocator.getCurrentPosition();
  }

  @override
  Future<PermissionStatus> requestWriteExternalStorage() async {
    final status = await Permission.manageExternalStorage.status;

    if (!status.isGranted) {
      return await Permission.manageExternalStorage.request();
    }

    return status;
  }
}
