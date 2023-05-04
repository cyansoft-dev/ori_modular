import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'setting_model.freezed.dart';
part 'setting_model.g.dart';

SettingModel settingModelFromJson(String str) =>
    SettingModel.fromJson(json.decode(str));

String settingModelToJson(SettingModel data) => json.encode(data.toJson());

@freezed
class SettingModel with _$SettingModel {
  const factory SettingModel({
    int? code,
    String? message,
    SettingDataModel? setting,
  }) = _SettingModel;

  factory SettingModel.fromJson(Map<String, dynamic> json) =>
      _$SettingModelFromJson(json);
}

@freezed
class SettingDataModel with _$SettingDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory SettingDataModel({
    @JsonKey(name: 'distance_meter') String? distanceMeter,
    @JsonKey(name: 'block_mock_location') String? blockMockLocation,
    @JsonKey(name: 'quality_image') int? imageQuality,
  }) = _SettingDataModel;

  factory SettingDataModel.fromJson(Map<String, dynamic> json) =>
      _$SettingDataModelFromJson(json);
}
