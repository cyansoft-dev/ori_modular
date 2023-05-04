// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeliveryMasterModel _$$_DeliveryMasterModelFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryMasterModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      kdtk: json['kdtk'] as String?,
      dataMaster: json['data_master'] == null
          ? null
          : DataMasterModel.fromJson(
              json['data_master'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeliveryMasterModelToJson(
        _$_DeliveryMasterModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'kdtk': instance.kdtk,
      'data_master': instance.dataMaster?.toJson(),
    };

_$_DataMasterModel _$$_DataMasterModelFromJson(Map<String, dynamic> json) =>
    _$_DataMasterModel(
      deliveryInfo: (json['delivery_info'] as List<dynamic>?)
          ?.map((e) => DeliveryInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      salesDate: (json['sales_date'] as List<dynamic>?)
          ?.map((e) => SalesDateModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      senderInfo: (json['sender_info'] as List<dynamic>?)
          ?.map((e) => SenderInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      masterBst: (json['master_bst'] as List<dynamic>?)
          ?.map((e) => MasterBstModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataMasterModelToJson(_$_DataMasterModel instance) =>
    <String, dynamic>{
      'delivery_info': instance.deliveryInfo?.map((e) => e.toJson()).toList(),
      'sales_date': instance.salesDate?.map((e) => e.toJson()).toList(),
      'sender_info': instance.senderInfo?.map((e) => e.toJson()).toList(),
      'master_bst': instance.masterBst?.map((e) => e.toJson()).toList(),
    };

_$_DeliveryInfoModel _$$_DeliveryInfoModelFromJson(Map<String, dynamic> json) =>
    _$_DeliveryInfoModel(
      jenis: json['jenis'] as String?,
      id: json['id'] as String?,
      driver: json['driver'] as String?,
      nopol: json['nopol'] as String?,
      estimasi: json['estimasi'] == null
          ? null
          : DateTime.parse(json['estimasi'] as String),
    );

Map<String, dynamic> _$$_DeliveryInfoModelToJson(
        _$_DeliveryInfoModel instance) =>
    <String, dynamic>{
      'jenis': instance.jenis,
      'id': instance.id,
      'driver': instance.driver,
      'nopol': instance.nopol,
      'estimasi': instance.estimasi?.toIso8601String(),
    };

_$_SalesDateModel _$$_SalesDateModelFromJson(Map<String, dynamic> json) =>
    _$_SalesDateModel(
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      setoran: json['setoran'] as String?,
      shift:
          (json['shift'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SalesDateModelToJson(_$_SalesDateModel instance) =>
    <String, dynamic>{
      'tanggal': instance.tanggal?.toIso8601String(),
      'setoran': instance.setoran,
      'shift': instance.shift,
    };

_$_SenderInfoModel _$$_SenderInfoModelFromJson(Map<String, dynamic> json) =>
    _$_SenderInfoModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      keterangan: json['keterangan'] as String?,
    );

Map<String, dynamic> _$$_SenderInfoModelToJson(_$_SenderInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'keterangan': instance.keterangan,
    };

_$_MasterBstModel _$$_MasterBstModelFromJson(Map<String, dynamic> json) =>
    _$_MasterBstModel(
      id: json['id'] as int?,
      label: json['label'] as String?,
      hint: json['hint'] as String?,
      nominal: json['nominal'] as int?,
      isDesc: json['need_desc'] as bool?,
      description: json['keterangan'] as String?,
    );

Map<String, dynamic> _$$_MasterBstModelToJson(_$_MasterBstModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'hint': instance.hint,
      'nominal': instance.nominal,
      'need_desc': instance.isDesc,
      'keterangan': instance.description,
    };
