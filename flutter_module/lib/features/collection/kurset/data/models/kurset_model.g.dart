// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kurset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KursetModel _$$_KursetModelFromJson(Map<String, dynamic> json) =>
    _$_KursetModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataKursetModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_KursetModelToJson(_$_KursetModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_DataKursetModel _$$_DataKursetModelFromJson(Map<String, dynamic> json) =>
    _$_DataKursetModel(
      id: json['id'] as int?,
      kdtk: json['kdtk'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      nominal: (json['nominal'] as num?)?.toDouble(),
      keterangan: json['keterangan'] as String?,
    );

Map<String, dynamic> _$$_DataKursetModelToJson(_$_DataKursetModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kdtk': instance.kdtk,
      'tanggal': instance.tanggal?.toIso8601String(),
      'nominal': instance.nominal,
      'keterangan': instance.keterangan,
    };
