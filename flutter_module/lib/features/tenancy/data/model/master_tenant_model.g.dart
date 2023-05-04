// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_tenant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListMasterTenantModel _$$_ListMasterTenantModelFromJson(
        Map<String, dynamic> json) =>
    _$_ListMasterTenantModel(
      code: json['code'] as int?,
      message: json['message'] as String?,
      master: (json['data'] as List<dynamic>?)
          ?.map((e) => MasterTenantModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListMasterTenantModelToJson(
        _$_ListMasterTenantModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.master?.map((e) => e.toJson()).toList(),
    };

_$_MasterTenantModel _$$_MasterTenantModelFromJson(Map<String, dynamic> json) =>
    _$_MasterTenantModel(
      kdcab: json['kdcab'] as String?,
      kdtk: json['kdtk'] as String?,
      idTenant: json['id_tenant'] as String?,
      jenisProduk: json['jenis_produk'] as String?,
      penyewa: json['nama_penyewa'] as String?,
      noPsm: json['no_psm'] as String?,
      sewaGerobak: (json['sewa_gerobak'] as num?)?.toDouble(),
      sewaByPsm: (json['sewa_psm'] as num?)?.toDouble(),
      sewaBayar: (json['sewa_bayar'] as num?)?.toDouble(),
      bulan: json['bulan'] as String?,
      notaPembayaran: json['nota_bayar'] as String?,
      tanggalBayar: json['tanggal_bayar'] == null
          ? null
          : DateTime.parse(json['tanggal_bayar'] as String),
    );

Map<String, dynamic> _$$_MasterTenantModelToJson(
        _$_MasterTenantModel instance) =>
    <String, dynamic>{
      'kdcab': instance.kdcab,
      'kdtk': instance.kdtk,
      'id_tenant': instance.idTenant,
      'jenis_produk': instance.jenisProduk,
      'nama_penyewa': instance.penyewa,
      'no_psm': instance.noPsm,
      'sewa_gerobak': instance.sewaGerobak,
      'sewa_psm': instance.sewaByPsm,
      'sewa_bayar': instance.sewaBayar,
      'bulan': instance.bulan,
      'nota_bayar': instance.notaPembayaran,
      'tanggal_bayar': instance.tanggalBayar?.toIso8601String(),
    };
