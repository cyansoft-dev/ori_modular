// To parse this JSON data, do
//
//     final deliveryMasterModel = deliveryMasterModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_master_model.freezed.dart';
part 'delivery_master_model.g.dart';

DeliveryMasterModel deliveryMasterModelFromJson(String str) =>
    DeliveryMasterModel.fromJson(json.decode(str));

String deliveryMasterModelToJson(DeliveryMasterModel data) =>
    json.encode(data.toJson());

@freezed
class DeliveryMasterModel with _$DeliveryMasterModel {
  @JsonSerializable(explicitToJson: true)
  const factory DeliveryMasterModel({
    int? code,
    String? message,
    String? kdtk,
    @JsonKey(name: 'data_master') DataMasterModel? dataMaster,
  }) = _DeliveryMasterModel;

  factory DeliveryMasterModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMasterModelFromJson(json);
}

@freezed
class DataMasterModel with _$DataMasterModel {
  @JsonSerializable(explicitToJson: true)
  const factory DataMasterModel({
    @JsonKey(name: 'delivery_info') List<DeliveryInfoModel>? deliveryInfo,
    @JsonKey(name: 'sales_date') List<SalesDateModel>? salesDate,
    @JsonKey(name: 'sender_info') List<SenderInfoModel>? senderInfo,
    @JsonKey(name: 'master_bst') List<MasterBstModel>? masterBst,
  }) = _DataMasterModel;

  factory DataMasterModel.fromJson(Map<String, dynamic> json) =>
      _$DataMasterModelFromJson(json);
}

@freezed
class DeliveryInfoModel with _$DeliveryInfoModel {
  const factory DeliveryInfoModel({
    String? jenis,
    String? id,
    String? driver,
    String? nopol,
    DateTime? estimasi,
  }) = _DeliveryInfoModel;

  factory DeliveryInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInfoModelFromJson(json);
}

@freezed
class SalesDateModel with _$SalesDateModel {
  const factory SalesDateModel({
    DateTime? tanggal,
    String? setoran,
    List<String>? shift,
  }) = _SalesDateModel;

  factory SalesDateModel.fromJson(Map<String, dynamic> json) =>
      _$SalesDateModelFromJson(json);
}

@freezed
class SenderInfoModel with _$SenderInfoModel {
  const factory SenderInfoModel({
    String? id,
    String? name,
    String? keterangan,
  }) = _SenderInfoModel;

  factory SenderInfoModel.fromJson(Map<String, dynamic> json) =>
      _$SenderInfoModelFromJson(json);
}

@freezed
class MasterBstModel with _$MasterBstModel {
  const factory MasterBstModel({
    int? id,
    String? label,
    String? hint,
    int? nominal,
    @JsonKey(name: 'need_desc') bool? isDesc,
    @JsonKey(name: 'keterangan') String? description,
  }) = _MasterBstModel;

  factory MasterBstModel.fromJson(Map<String, dynamic> json) =>
      _$MasterBstModelFromJson(json);
}
