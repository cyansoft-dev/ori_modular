import 'package:package_info_plus/package_info_plus.dart';

import '/features/splash/domain/entities/app_info.dart';

class SplashDataMapper {
  static AppInfo packageInfoMapper(PackageInfo data) {
    return AppInfo(
      appName: data.appName,
      packageName: data.packageName,
      version: data.version,
      signature: data.buildSignature,
    );
  }
}
