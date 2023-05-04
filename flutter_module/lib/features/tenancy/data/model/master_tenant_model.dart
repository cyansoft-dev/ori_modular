import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_tenant_model.freezed.dart';
part 'master_tenant_model.g.dart';

ListMasterTenantModel masterTenantModelFromJson(String str) =>
    ListMasterTenantModel.fromJson(json.decode(str));

@freezed
class ListMasterTenantModel with _$ListMasterTenantModel {
  @JsonSerializable(explicitToJson: true)
  const factory ListMasterTenantModel({
    int? code,
    String? message,
    @JsonKey(name: "data") List<MasterTenantModel>? master,
  }) = _ListMasterTenantModel;

  factory ListMasterTenantModel.fromJson(Map<String, dynamic> json) =>
      _$ListMasterTenantModelFromJson(json);
}

@freezed
class MasterTenantModel with _$MasterTenantModel {
  const factory MasterTenantModel({
    String? kdcab,
    String? kdtk,
    @JsonKey(name: "id_tenant") String? idTenant,
    @JsonKey(name: "jenis_produk") String? jenisProduk,
    @JsonKey(name: "nama_penyewa") String? penyewa,
    @JsonKey(name: "no_psm") String? noPsm,
    @JsonKey(name: "sewa_gerobak") double? sewaGerobak,
    @JsonKey(name: "sewa_psm") double? sewaByPsm,
    @JsonKey(name: "sewa_bayar") double? sewaBayar,
    @JsonKey(name: "bulan") String? bulan,
    @JsonKey(name: "nota_bayar") String? notaPembayaran,
    @JsonKey(name: "tanggal_bayar") DateTime? tanggalBayar,
  }) = _MasterTenantModel;

  factory MasterTenantModel.fromJson(Map<String, dynamic> json) =>
      _$MasterTenantModelFromJson(json);
}
