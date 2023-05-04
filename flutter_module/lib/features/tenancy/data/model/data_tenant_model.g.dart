// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_tenant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListDataTenantModel _$$_ListDataTenantModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListDataTenantModel(
      dataTenants: (json['data'] as List<dynamic>?)
          ?.map((e) => DataTenantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListDataTenantModelToJson(
        _$_ListDataTenantModel instance) =>
    <String, dynamic>{
      'data': instance.dataTenants?.map((e) => e.toJson()).toList(),
    };

_$_DataTenantModel _$$_DataTenantModelFromJson(Map<String, dynamic> json) =>
    _$_DataTenantModel(
      kdtk: json['kdtk'] as String?,
      noPsm: json['no_psm'] as String?,
      jenisProduk: json['jenis_produk'] as String?,
      status: json['status'] as String?,
      isActive: json['is_active'] as bool?,
      tenantImage: json['tenant_image'] as String?,
      storeImage: json['store_image'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      addTime: json['addtime'] == null
          ? null
          : DateTime.parse(json['addtime'] as String),
    );

Map<String, dynamic> _$$_DataTenantModelToJson(_$_DataTenantModel instance) =>
    <String, dynamic>{
      'kdtk': instance.kdtk,
      'no_psm': instance.noPsm,
      'jenis_produk': instance.jenisProduk,
      'status': instance.status,
      'is_active': instance.isActive,
      'tenant_image': instance.tenantImage,
      'store_image': instance.storeImage,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'addtime': instance.addTime?.toIso8601String(),
    };
