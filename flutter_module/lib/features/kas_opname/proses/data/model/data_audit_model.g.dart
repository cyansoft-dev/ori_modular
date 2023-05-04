// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_audit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataAuditModel _$$_DataAuditModelFromJson(Map<String, dynamic> json) =>
    _$_DataAuditModel(
      kdtk: json['kdtk'] as String?,
      danaCurrent: json['dana_current'] == null
          ? null
          : DanaCurrentModel.fromJson(
              json['dana_current'] as Map<String, dynamic>),
      danaLastDay: json['dana_last'] == null
          ? null
          : DanaLastDayModel.fromJson(
              json['dana_last'] as Map<String, dynamic>),
      danaKas: json['dana_kas'] == null
          ? null
          : DanaKasModel.fromJson(json['dana_kas'] as Map<String, dynamic>),
      danaRrak: json['dana_rrak'] == null
          ? null
          : DanaRrakModel.fromJson(json['dana_rrak'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataAuditModelToJson(_$_DataAuditModel instance) =>
    <String, dynamic>{
      'kdtk': instance.kdtk,
      'dana_current': instance.danaCurrent?.toJson(),
      'dana_last': instance.danaLastDay?.toJson(),
      'dana_kas': instance.danaKas?.toJson(),
      'dana_rrak': instance.danaRrak?.toJson(),
    };

_$_DanaCurrentModel _$$_DanaCurrentModelFromJson(Map<String, dynamic> json) =>
    _$_DanaCurrentModel(
      salesComputer: (json['sales_computer'] as num?)?.toDouble(),
      salesFisik: (json['sales_fisik'] as num?)?.toDouble(),
      selisih: (json['selisih'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DanaCurrentModelToJson(_$_DanaCurrentModel instance) =>
    <String, dynamic>{
      'sales_computer': instance.salesComputer,
      'sales_fisik': instance.salesFisik,
      'selisih': instance.selisih,
    };

_$_DanaLastDayModel _$$_DanaLastDayModelFromJson(Map<String, dynamic> json) =>
    _$_DanaLastDayModel(
      salesComputer: (json['sales_computer'] as num?)?.toDouble(),
      salesFisik: (json['sales_fisik'] as List<dynamic>?)
          ?.map((e) => KurangSetorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selisih: (json['selisih'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DanaLastDayModelToJson(_$_DanaLastDayModel instance) =>
    <String, dynamic>{
      'sales_computer': instance.salesComputer,
      'sales_fisik': instance.salesFisik?.map((e) => e.toJson()).toList(),
      'selisih': instance.selisih,
    };

_$_DanaKasModel _$$_DanaKasModelFromJson(Map<String, dynamic> json) =>
    _$_DanaKasModel(
      kasFinance: (json['kas_finance'] as num?)?.toDouble(),
      kasBrankas: (json['kas_brankas'] as num?)?.toDouble(),
      kasKasir: (json['kas_kasir'] as num?)?.toDouble(),
      uangKoin: (json['koin'] as num?)?.toDouble(),
      selisih: (json['selisih'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DanaKasModelToJson(_$_DanaKasModel instance) =>
    <String, dynamic>{
      'kas_finance': instance.kasFinance,
      'kas_brankas': instance.kasBrankas,
      'kas_kasir': instance.kasKasir,
      'koin': instance.uangKoin,
      'selisih': instance.selisih,
    };

_$_DanaRrakModel _$$_DanaRrakModelFromJson(Map<String, dynamic> json) =>
    _$_DanaRrakModel(
      rencanaRrak: (json['dana_rrak'] as num?)?.toDouble(),
      fisikDanaRrak: (json['fisik_dana'] as num?)?.toDouble(),
      notaRrak: (json['nota'] as num?)?.toDouble(),
      selisih: (json['selisih'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DanaRrakModelToJson(_$_DanaRrakModel instance) =>
    <String, dynamic>{
      'dana_rrak': instance.rencanaRrak,
      'fisik_dana': instance.fisikDanaRrak,
      'nota': instance.notaRrak,
      'selisih': instance.selisih,
    };
