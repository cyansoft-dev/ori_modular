import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/installer_source.dart';
import '/core/failure/failure.dart';
import '/core/utils/connection_checker.dart';
import '/features/splash/data/datasources/remote/splash_remote_datasource.dart';
import '/features/splash/domain/entities/app_info.dart';
import '/features/splash/domain/entities/setting_data.dart';
import '/features/splash/domain/entities/updater_data.dart';
import '/features/splash/domain/repositories/splash_repository.dart';
import '../../domain/entities/user.dart';
import '../datasources/local/splash_local_datasource.dart';
import '../mapper/app_info_mapper.dart';
import '../model/setting_model.dart';
import '../model/updater_model.dart';
import '../model/user_dto.dart';

@Named('splashRepository')
@LazySingleton(as: SplashRepository)
class SplashRepositoryImpl implements SplashRepository {
  final SplashLocalDataSource _localDataSource;
  final SplashRemoteDataSource _remoteDataSource;
  final ConnectionChecker _checker;

  SplashRepositoryImpl(
    @Named('splashLocalDataSource') this._localDataSource,
    @Named('splashRemoteDataSource') this._remoteDataSource,
    this._checker,
  );

  @override
  Future<Either<Failure, AppInfo>> getAppInfo() async {
    try {
      AppInfo info = const AppInfo();
      final packageInfo = await _localDataSource.getPackageInfo();
      final deviceInfo = await _localDataSource.getAppInfo();
      info = SplashDataMapper.packageInfoMapper(packageInfo);

      /*
      if (Platform.isAndroid) {
        final isRooted = await _localDataSource.getRootStatus();
        final isCloned = await _localDataSource.getClonedStatus();
        final source = await _localDataSource.getInstallerSource();
        final signature =
            dotenv.get('APP_SIGNATURE', fallback: 'Missing var name');

        info = info.copyWith(
          isRooted: isRooted ?? false,
          isCloned: isCloned ?? false,
          installerStore: source,
          isValid: (signature == packageInfo.buildSignature),
        );
      }
      */

      info = info.copyWith(
        isRooted: false,
        isCloned: false,
        deviceId: deviceInfo.deviceId,
        model: deviceInfo.model,
        installerStore: InstallerSource.googlePackageInstaller,
        isValid: true,
      );


      return Right(info);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, SettingData>> getSetting() async {
    if (await _checker.status != ConnectionStatus.connected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final response = await _remoteDataSource.getSetting();

      if (response.setting != null) {
        final result = await compute<SettingDataModel, SettingData>(
            settingDataFromModel, response.setting!);

        return Right(result);
      } else {
        return const Left(Failure.cache());
      }
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, UpdaterData>> getUpdater() async {
    if (await _checker.status != ConnectionStatus.connected) {
      return const Left(Failure.noNetwork());
    }

    try {
      final response = await _remoteDataSource.getUpdater();

      if (response.updater != null) {
        final result = await compute<UpdaterDataModel, UpdaterData>(
            updaterDataFromModel, response.updater!);

        return Right(result);
      } else {
        return const Left(Failure.empty());
      }
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }

  @override
  Future<Either<Failure, User>> getUser() async {
    try {
      final userDto = await _localDataSource.getLastUser();

      if (userDto != null) {
        final result = await compute<UserDto, User>(userFromDto, userDto);

        return Right(result);
      } else {
        return const Left(Failure.empty());
      }
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
