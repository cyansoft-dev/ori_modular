import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '/core/utils/app_secure.dart';
import '../../../../../core/database/database.dart';
import '../../../../../core/utils/installer_source.dart';
import '../../../domain/entities/app_info.dart';
import '../../model/user_dto.dart';

abstract class SplashLocalDataSource {
  Future<AppInfo> getAppInfo();

  Future<PackageInfo> getPackageInfo();

  Future<UserDto?> getLastUser();

  Future<bool?> getRootStatus();

  Future<bool?> getClonedStatus();

  Future<InstallerSource?> getInstallerSource();
}

@Named('splashLocalDataSource')
@LazySingleton(as: SplashLocalDataSource)
class SplashLocalDataSourceImpl implements SplashLocalDataSource {
  final DeviceInfoPlugin _deviceInfo;
  final Database _database;
  SplashLocalDataSourceImpl(
    this._deviceInfo,
    @Named("database") this._database,
  );

  @override
  Future<PackageInfo> getPackageInfo() async {
    return await PackageInfo.fromPlatform();
  }

  @override
  Future<UserDto?> getLastUser() async {
    return await _database.getLastData<UserDto>();
  }

  @override
  Future<bool?> getRootStatus() async {
    return await AppSecure.isRooted();
  }

  @override
  Future<AppInfo> getAppInfo() async {
    AppInfo appInfo = const AppInfo();
    if (Platform.isAndroid) {
      final data = await _deviceInfo.androidInfo;
      appInfo = appInfo.copyWith(deviceId: data.id, model: data.model);
    }

    if (Platform.isIOS) {
      final data = await _deviceInfo.iosInfo;
      appInfo = appInfo.copyWith(
          deviceId: data.identifierForVendor, model: data.model);
    }

    return appInfo;
  }

  @override
  Future<bool?> getClonedStatus() async {
    return await AppSecure.isCloned();
  }

  @override
  Future<InstallerSource?> getInstallerSource() async {
    if (kReleaseMode) {
      final result = await AppSecure.installSourceInfo();
      return InstallerSource.fromString(result);
    }
    return null;
  }
}
