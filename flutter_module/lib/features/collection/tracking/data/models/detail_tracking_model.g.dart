// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_tracking_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailTrackingModel _$$_DetailTrackingModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailTrackingModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      idDelivery: json['idDelivery'] as String?,
      detailLampiran: (json['detail_lampiran'] as List<dynamic>?)
          ?.map((e) => DetailLampiranModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      detailTracking: (json['detail_tracking'] as List<dynamic>?)
          ?.map((e) =>
              DetailDataTrackingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DetailTrackingModelToJson(
        _$_DetailTrackingModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'idDelivery': instance.idDelivery,
      'detail_lampiran':
          instance.detailLampiran?.map((e) => e.toJson()).toList(),
      'detail_tracking':
          instance.detailTracking?.map((e) => e.toJson()).toList(),
    };

_$_DetailLampiranModel _$$_DetailLampiranModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailLampiranModel(
      label: json['label'] as String?,
      nominal: json['nominal'] as int?,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$_DetailLampiranModelToJson(
        _$_DetailLampiranModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'nominal': instance.nominal,
      'image_url': instance.imageUrl,
    };

_$_DetailDataTrackingModel _$$_DetailDataTrackingModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailDataTrackingModel(
      status: json['status'] as String?,
      keterangan: json['keterangan'] as String?,
      pic: json['pic'] as String?,
      updateAt: json['update_at'] == null
          ? null
          : DateTime.parse(json['update_at'] as String),
    );

Map<String, dynamic> _$$_DetailDataTrackingModelToJson(
        _$_DetailDataTrackingModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'keterangan': instance.keterangan,
      'pic': instance.pic,
      'update_at': instance.updateAt?.toIso8601String(),
    };
