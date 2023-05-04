// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updater_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdaterModel _$$_UpdaterModelFromJson(Map<String, dynamic> json) =>
    _$_UpdaterModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      updater: json['version'] == null
          ? null
          : UpdaterDataModel.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdaterModelToJson(_$_UpdaterModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'version': instance.updater?.toJson(),
    };

_$_UpdaterDataModel _$$_UpdaterDataModelFromJson(Map<String, dynamic> json) =>
    _$_UpdaterDataModel(
      name: json['name'] as String?,
      number: json['number'] as String?,
      url: json['url'] as String?,
      changelog: (json['changelog'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      signature: json['signature'] as String?,
    );

Map<String, dynamic> _$$_UpdaterDataModelToJson(_$_UpdaterDataModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
      'url': instance.url,
      'changelog': instance.changelog,
      'signature': instance.signature,
    };
