// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionRequestModels _$$_TransactionRequestModelsFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionRequestModels(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              TransactionRequestModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TransactionRequestModelsToJson(
        _$_TransactionRequestModels instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$_TransactionRequestModel _$$_TransactionRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionRequestModel(
      kdtk: json['kdtk'] as String?,
      type: json['type'] as String?,
      delivery: json['delivery'] as String?,
      idDelivery: json['id_delivery'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      shift: json['shift'] as String?,
      lampiran: (json['detail_lampiran'] as List<dynamic>?)
          ?.map((e) => LampiranModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      summary: (json['summary'] as List<dynamic>?)
          ?.map((e) => SummaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageString: json['image'] as String?,
      status: json['status'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TransactionRequestModelToJson(
        _$_TransactionRequestModel instance) =>
    <String, dynamic>{
      'kdtk': instance.kdtk,
      'type': instance.type,
      'delivery': instance.delivery,
      'id_delivery': instance.idDelivery,
      'tanggal': instance.tanggal?.toIso8601String(),
      'shift': instance.shift,
      'detail_lampiran': instance.lampiran?.map((e) => e.toJson()).toList(),
      'summary': instance.summary?.map((e) => e.toJson()).toList(),
      'image': instance.imageString,
      'status': instance.status,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_LampiranModel _$$_LampiranModelFromJson(Map<String, dynamic> json) =>
    _$_LampiranModel(
      seqno: json['seqno'] as int?,
      label: json['label'] as String?,
      nominal: (json['nominal'] as num?)?.toDouble(),
      imageString: json['image'] as String?,
    );

Map<String, dynamic> _$$_LampiranModelToJson(_$_LampiranModel instance) =>
    <String, dynamic>{
      'seqno': instance.seqno,
      'label': instance.label,
      'nominal': instance.nominal,
      'image': instance.imageString,
    };

_$_SummaryModel _$$_SummaryModelFromJson(Map<String, dynamic> json) =>
    _$_SummaryModel(
      seqno: json['seqno'] as int?,
      label: json['label'] as String?,
      nominal: (json['nominal'] as num?)?.toDouble(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_SummaryModelToJson(_$_SummaryModel instance) =>
    <String, dynamic>{
      'seqno': instance.seqno,
      'label': instance.label,
      'nominal': instance.nominal,
      'description': instance.description,
    };
