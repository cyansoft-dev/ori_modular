// To parse this JSON data, do
//
//     final trackingModel = trackingModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tracking_model.freezed.dart';
part 'tracking_model.g.dart';

TrackingModel trackingModelFromJson(String str) =>
    TrackingModel.fromJson(json.decode(str));

String trackingModelToJson(TrackingModel data) => json.encode(data.toJson());

@freezed
class TrackingModel with _$TrackingModel {
  @JsonSerializable(explicitToJson: true)
  const factory TrackingModel({
    int? code,
    String? message,
    @JsonKey(name: "data") List<DataTrackingModel>? data,
  }) = _TrackingModel;

  factory TrackingModel.fromJson(Map<String, dynamic> json) =>
      _$TrackingModelFromJson(json);
}

@freezed
class DataTrackingModel with _$DataTrackingModel {
  @JsonSerializable(explicitToJson: true)
  const factory DataTrackingModel({
    String? type,
    String? delivery,
    @JsonKey(name: "id_delivery") String? idDelivery,
    @JsonKey(name: "tgl_posting") DateTime? tglPosting,
    int? lampiran,
    String? status,
    @JsonKey(name: "update_at") DateTime? updateAt,
    @JsonKey(name: "sales") List<SalesModel>? sales,
  }) = _DataTrackingModel;

  factory DataTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$DataTrackingModelFromJson(json);
}

@freezed
class SalesModel with _$SalesModel {
  const factory SalesModel({
    DateTime? tanggal,
    int? lampiran,
    int? nominal,
  }) = _SalesModel;

  factory SalesModel.fromJson(Map<String, dynamic> json) =>
      _$SalesModelFromJson(json);
}
