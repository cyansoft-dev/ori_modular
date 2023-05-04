import 'package:fpdart/fpdart.dart';

import '/core/failure/failure.dart';
import '/features/splash/domain/entities/app_info.dart';
import '/features/splash/domain/entities/setting_data.dart';
import '../entities/updater_data.dart';
import '../entities/user.dart';

abstract class SplashRepository {
  Future<Either<Failure, AppInfo>> getAppInfo();

  Future<Either<Failure, SettingData>> getSetting();

  Future<Either<Failure, UpdaterData>> getUpdater();

  Future<Either<Failure, User>> getUser();
}
