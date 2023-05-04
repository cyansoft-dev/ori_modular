// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingModel _$$_SettingModelFromJson(Map<String, dynamic> json) =>
    _$_SettingModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      setting: json['setting'] == null
          ? null
          : SettingDataModel.fromJson(json['setting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SettingModelToJson(_$_SettingModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'setting': instance.setting,
    };

_$_SettingDataModel _$$_SettingDataModelFromJson(Map<String, dynamic> json) =>
    _$_SettingDataModel(
      distanceMeter: json['distance_meter'] as String?,
      blockMockLocation: json['block_mock_location'] as String?,
      imageQuality: json['quality_image'] as int?,
    );

Map<String, dynamic> _$$_SettingDataModelToJson(_$_SettingDataModel instance) =>
    <String, dynamic>{
      'distance_meter': instance.distanceMeter,
      'block_mock_location': instance.blockMockLocation,
      'quality_image': instance.imageQuality,
    };
