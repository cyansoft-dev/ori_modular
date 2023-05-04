
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_tenant_model.freezed.dart';
part 'data_tenant_model.g.dart';

ListDataTenantModel tenantModelFromJson(String str) => ListDataTenantModel.fromJson(json.decode(str));

String tenantModelToJson(ListDataTenantModel model) => json.encode(model.toJson());

@freezed
class ListDataTenantModel with _$ListDataTenantModel {
  @JsonSerializable(explicitToJson: true)
  const factory ListDataTenantModel({
    @JsonKey(name: "data") List<DataTenantModel>? dataTenants,
  }) = _ListDataTenantModel;

  factory ListDataTenantModel.fromJson(Map<String, dynamic> json) => _$ListDataTenantModelFromJson(json);
}


@freezed
class DataTenantModel with _$DataTenantModel {
  @JsonSerializable(explicitToJson: true)
  const factory DataTenantModel({
    String? kdtk,
    @JsonKey(name: "no_psm") String? noPsm,
    @JsonKey(name: "jenis_produk") String? jenisProduk,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "tenant_image") String? tenantImage,
    @JsonKey(name: "store_image") String? storeImage,
    @JsonKey(name: "latitude") double? latitude,
    @JsonKey(name: "longitude") double? longitude,
    @JsonKey(name: "addtime") DateTime? addTime,
}) = _DataTenantModel;

  factory DataTenantModel.fromJson(Map<String, dynamic> json) => _$DataTenantModelFromJson(json);
}