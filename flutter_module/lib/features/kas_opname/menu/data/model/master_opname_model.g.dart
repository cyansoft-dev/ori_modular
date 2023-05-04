// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_opname_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MasterOpnameModel _$$_MasterOpnameModelFromJson(Map<String, dynamic> json) =>
    _$_MasterOpnameModel(
      toko: json['kdtk'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      danaKas: (json['dana_finance'] as num?)?.toDouble(),
      salesCurrent: (json['sales_curdate'] as num?)?.toDouble(),
      kurangSetor: (json['kurang_setor'] as List<dynamic>?)
          ?.map((e) => KurangSetorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      notaRrak: (json['nota_rrak'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_MasterOpnameModelToJson(
        _$_MasterOpnameModel instance) =>
    <String, dynamic>{
      'kdtk': instance.toko,
      'tanggal': instance.tanggal?.toIso8601String(),
      'dana_finance': instance.danaKas,
      'sales_curdate': instance.salesCurrent,
      'kurang_setor': instance.kurangSetor?.map((e) => e.toJson()).toList(),
      'nota_rrak': instance.notaRrak,
    };

_$_KurangSetorModel _$$_KurangSetorModelFromJson(Map<String, dynamic> json) =>
    _$_KurangSetorModel(
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      nominal: (json['nominal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_KurangSetorModelToJson(_$_KurangSetorModel instance) =>
    <String, dynamic>{
      'tanggal': instance.tanggal?.toIso8601String(),
      'nominal': instance.nominal,
    };
