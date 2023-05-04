// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minus_opname_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MinusOpnameModel _$$_MinusOpnameModelFromJson(Map<String, dynamic> json) =>
    _$_MinusOpnameModel(
      id: json['id'] as int?,
      kdtk: json['kdtk'] as String?,
      fraudData: json['fraud_data'] == null
          ? null
          : MinusFraudModel.fromJson(
              json['fraud_data'] as Map<String, dynamic>),
      rrakData: json['rrak_data'] == null
          ? null
          : MinusRrakModel.fromJson(json['rrak_data'] as Map<String, dynamic>),
      varianData: json['varian_data'] == null
          ? null
          : MinusVarianModel.fromJson(
              json['varian_data'] as Map<String, dynamic>),
      otherData: json['other_data'] == null
          ? null
          : MinusOtherModel.fromJson(
              json['other_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MinusOpnameModelToJson(_$_MinusOpnameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kdtk': instance.kdtk,
      'fraud_data': instance.fraudData,
      'rrak_data': instance.rrakData,
      'varian_data': instance.varianData,
      'other_data': instance.otherData,
    };

_$_MinusFraudModel _$$_MinusFraudModelFromJson(Map<String, dynamic> json) =>
    _$_MinusFraudModel(
      id: json['id'] as int?,
      kdtk: json['kdtk'] as String?,
      userId: json['user_id'] as String?,
      nominal: (json['nominal'] as num?)?.toDouble(),
      modus: json['modus'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      refundStatus: json['status_refund'] as String?,
      imgBukti: json['image_refund'] as String?,
      commitment: json['komitment'] as String?,
      sanksi: json['sanksi'] as String?,
      imgSanksi: json['image_sanksi'] as String?,
    );

Map<String, dynamic> _$$_MinusFraudModelToJson(_$_MinusFraudModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kdtk': instance.kdtk,
      'user_id': instance.userId,
      'nominal': instance.nominal,
      'modus': instance.modus,
      'tanggal': instance.tanggal?.toIso8601String(),
      'status_refund': instance.refundStatus,
      'image_refund': instance.imgBukti,
      'komitment': instance.commitment,
      'sanksi': instance.sanksi,
      'image_sanksi': instance.imgSanksi,
    };

_$_MinusRrakModel _$$_MinusRrakModelFromJson(Map<String, dynamic> json) =>
    _$_MinusRrakModel(
      id: json['id'] as int?,
      kdtk: json['kdtk'] as String?,
      jenis: json['jenis'] as String?,
      nominal: (json['nominal'] as num?)?.toDouble(),
      imgNota: json['image_nota'] as String?,
    );

Map<String, dynamic> _$$_MinusRrakModelToJson(_$_MinusRrakModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kdtk': instance.kdtk,
      'jenis': instance.jenis,
      'nominal': instance.nominal,
      'image_nota': instance.imgNota,
    };

_$_MinusVarianModel _$$_MinusVarianModelFromJson(Map<String, dynamic> json) =>
    _$_MinusVarianModel(
      id: json['id'] as int?,
      kdtk: json['kdtk'] as String?,
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      nominal: (json['nominal'] as num?)?.toDouble(),
      statusVarian: json['status_varian'] as String?,
    );

Map<String, dynamic> _$$_MinusVarianModelToJson(_$_MinusVarianModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kdtk': instance.kdtk,
      'tanggal': instance.tanggal?.toIso8601String(),
      'nominal': instance.nominal,
      'status_varian': instance.statusVarian,
    };

_$_MinusOtherModel _$$_MinusOtherModelFromJson(Map<String, dynamic> json) =>
    _$_MinusOtherModel(
      id: json['id'] as int?,
      kdtk: json['kdtk'] as String?,
      nominal: (json['nominal'] as num?)?.toDouble(),
      keterangan: json['keterangan'] as String?,
    );

Map<String, dynamic> _$$_MinusOtherModelToJson(_$_MinusOtherModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kdtk': instance.kdtk,
      'nominal': instance.nominal,
      'keterangan': instance.keterangan,
    };
