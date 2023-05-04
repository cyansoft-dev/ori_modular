// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_collect_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MasterCollectModel _$$_MasterCollectModelFromJson(
        Map<String, dynamic> json) =>
    _$_MasterCollectModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      kdtk: json['kdtk'] as String?,
      deliveryInfo: json['delivery_info'] == null
          ? null
          : DeliveryInfoModel.fromJson(
              json['delivery_info'] as Map<String, dynamic>),
      collectionInfo: json['collection_info'] == null
          ? null
          : CollectionInfoModel.fromJson(
              json['collection_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MasterCollectModelToJson(
        _$_MasterCollectModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'kdtk': instance.kdtk,
      'delivery_info': instance.deliveryInfo?.toJson(),
      'collection_info': instance.collectionInfo?.toJson(),
    };

_$_CollectionInfoModel _$$_CollectionInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_CollectionInfoModel(
      deliveryBox: (json['delivery_box'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      datePending: (json['date_pending'] as List<dynamic>?)
          ?.map((e) => DateTime.parse(e as String))
          .toList(),
      currentShift:
          (json['shift'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_CollectionInfoModelToJson(
        _$_CollectionInfoModel instance) =>
    <String, dynamic>{
      'delivery_box': instance.deliveryBox,
      'date_pending':
          instance.datePending?.map((e) => e.toIso8601String()).toList(),
      'shift': instance.currentShift,
    };

_$_DeliveryInfoModel _$$_DeliveryInfoModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryInfoModel(
      driver: json['driver'] as String?,
      vehicleNumber: json['vehicle_number'] as String?,
      arrivalEstimate: json['arrival_time'] == null
          ? null
          : DateTime.parse(json['arrival_time'] as String),
    );

Map<String, dynamic> _$$_DeliveryInfoModelToJson(
        _$_DeliveryInfoModel instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'vehicle_number': instance.vehicleNumber,
      'arrival_time': instance.arrivalEstimate?.toIso8601String(),
    };
