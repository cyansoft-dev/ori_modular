// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StoreModel _$$_StoreModelFromJson(Map<String, dynamic> json) =>
    _$_StoreModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      listStoreModel: (json['result'] as List<dynamic>?)
          ?.map((e) => StoreDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_StoreModelToJson(_$_StoreModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'result': instance.listStoreModel?.map((e) => e.toJson()).toList(),
    };

_$_StoreDataModel _$$_StoreDataModelFromJson(Map<String, dynamic> json) =>
    _$_StoreDataModel(
      username: json['username'] as String?,
      namalengkap: json['namalengkap'] as String?,
      kodetoko: json['kodetoko'] as String?,
      namatoko: json['namatoko'] as String?,
      groupname: json['groupname'] as String?,
      kodecabang: json['kodecabang'] as String?,
      namacabang: json['namacabang'] as String?,
      longDecimal: json['long_decimal'] as String?,
      latDecimal: json['lat_decimal'] as String?,
      longRadians: json['long_radians'] as String?,
      latRadians: json['lat_radians'] as String?,
    );

Map<String, dynamic> _$$_StoreDataModelToJson(_$_StoreDataModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'namalengkap': instance.namalengkap,
      'kodetoko': instance.kodetoko,
      'namatoko': instance.namatoko,
      'groupname': instance.groupname,
      'kodecabang': instance.kodecabang,
      'namacabang': instance.namacabang,
      'long_decimal': instance.longDecimal,
      'lat_decimal': instance.latDecimal,
      'long_radians': instance.longRadians,
      'lat_radians': instance.latRadians,
    };
