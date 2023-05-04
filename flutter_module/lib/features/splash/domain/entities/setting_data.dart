import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/setting_model.dart';

part 'setting_data.freezed.dart';

SettingData settingDataFromModel(SettingDataModel model) =>
    SettingData.fromModel(model);

@freezed
class SettingData with _$SettingData {
  const SettingData._();

  const factory SettingData({
    String? distanceMeter,
    bool? blockMockLocation,
    int? imageQuality,
  }) = _SettingData;

  factory SettingData.fromModel(SettingDataModel model) => SettingData(
      distanceMeter: model.distanceMeter,
      blockMockLocation: model.blockMockLocation == 'true',
      imageQuality: model.imageQuality,
  );
}
