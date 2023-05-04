// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_audit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SummaryAuditModel _$$_SummaryAuditModelFromJson(Map<String, dynamic> json) =>
    _$_SummaryAuditModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataSummaryAuditModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SummaryAuditModelToJson(
        _$_SummaryAuditModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$_DataSummaryAuditModel _$$_DataSummaryAuditModelFromJson(
        Map<String, dynamic> json) =>
    _$_DataSummaryAuditModel(
      id: json['id'] as int? ?? 0,
      kdtk: json['kdtk'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      summary: (json['summary'] as num?)?.toDouble() ?? 0.0,
      adjust: (json['adjust'] as List<dynamic>?)
          ?.map((e) => AdjustmentAuditModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: $enumDecodeNullable(_$AuditStatusEnumMap, json['status']) ??
          AuditStatus.initial,
    );

Map<String, dynamic> _$$_DataSummaryAuditModelToJson(
        _$_DataSummaryAuditModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kdtk': instance.kdtk,
      'tanggal': instance.tanggal?.toIso8601String(),
      'summary': instance.summary,
      'adjust': instance.adjust,
      'status': _$AuditStatusEnumMap[instance.status]!,
    };

const _$AuditStatusEnumMap = {
  AuditStatus.initial: 'initial',
  AuditStatus.locked: 'locked',
  AuditStatus.finished: 'finished',
  AuditStatus.uploaded: 'uploaded',
  AuditStatus.review: 'review',
  AuditStatus.completed: 'completed',
};

_$_AdjustmentAuditModel _$$_AdjustmentAuditModelFromJson(
        Map<String, dynamic> json) =>
    _$_AdjustmentAuditModel(
      id: json['id'] as int? ?? 0,
      nominal: (json['nominal'] as num?)?.toDouble() ?? 0.0,
      desc: json['desc'] as String?,
    );

Map<String, dynamic> _$$_AdjustmentAuditModelToJson(
        _$_AdjustmentAuditModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nominal': instance.nominal,
      'desc': instance.desc,
    };
