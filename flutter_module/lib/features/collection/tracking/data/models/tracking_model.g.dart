// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrackingModel _$$_TrackingModelFromJson(Map<String, dynamic> json) =>
    _$_TrackingModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTrackingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TrackingModelToJson(_$_TrackingModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$_DataTrackingModel _$$_DataTrackingModelFromJson(Map<String, dynamic> json) =>
    _$_DataTrackingModel(
      type: json['type'] as String?,
      delivery: json['delivery'] as String?,
      idDelivery: json['id_delivery'] as String?,
      tglPosting: json['tgl_posting'] == null
          ? null
          : DateTime.parse(json['tgl_posting'] as String),
      lampiran: json['lampiran'] as int?,
      status: json['status'] as String?,
      updateAt: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
      sales: (json['sales'] as List<dynamic>?)
          ?.map((e) => SalesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataTrackingModelToJson(
        _$_DataTrackingModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'delivery': instance.delivery,
      'id_delivery': instance.idDelivery,
      'tgl_posting': instance.tglPosting?.toIso8601String(),
      'lampiran': instance.lampiran,
      'status': instance.status,
      'update_at': instance.updateAt?.toIso8601String(),
      'sales': instance.sales?.map((e) => e.toJson()).toList(),
    };

_$_SalesModel _$$_SalesModelFromJson(Map<String, dynamic> json) =>
    _$_SalesModel(
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      lampiran: json['lampiran'] as int?,
      nominal: json['nominal'] as int?,
    );

Map<String, dynamic> _$$_SalesModelToJson(_$_SalesModel instance) =>
    <String, dynamic>{
      'tanggal': instance.tanggal?.toIso8601String(),
      'lampiran': instance.lampiran,
      'nominal': instance.nominal,
    };
