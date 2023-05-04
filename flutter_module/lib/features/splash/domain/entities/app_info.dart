import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/installer_source.dart';

part 'app_info.freezed.dart';

@freezed
class AppInfo with _$AppInfo {
  const factory AppInfo({
    String? appName,
    String? packageName,
    String? version,
    String? deviceId,
    String? model,
    String? signature,
    InstallerSource? installerStore,
    @Default(false) bool isRooted,
    @Default(false) bool isCloned,
    @Default(true) bool isValid,
  }) = _AppInfo;
}
