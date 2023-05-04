// To parse this JSON data, do
//
//     final detailTrackingModel = detailTrackingModelFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_tracking_model.freezed.dart';
part 'detail_tracking_model.g.dart';

DetailTrackingModel detailTrackingModelFromJson(String str) =>
    DetailTrackingModel.fromJson(json.decode(str));

String detailTrackingModelToJson(DetailTrackingModel data) =>
    json.encode(data.toJson());

@freezed
class DetailTrackingModel with _$DetailTrackingModel {
  @JsonSerializable(explicitToJson: true)
  const factory DetailTrackingModel({
    int? code,
    String? message,
    String? idDelivery,
    @JsonKey(name: "detail_lampiran") List<DetailLampiranModel>? detailLampiran,
    @JsonKey(name: "detail_tracking")
        List<DetailDataTrackingModel>? detailTracking,
  }) = _DetailTrackingModel;

  factory DetailTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$DetailTrackingModelFromJson(json);
}

@freezed
class DetailLampiranModel with _$DetailLampiranModel {
  @JsonSerializable(explicitToJson: true)
  const factory DetailLampiranModel({
    String? label,
    int? nominal,
    @JsonKey(name: "image_url") String? imageUrl,
  }) = _DetailLampiranModel;

  factory DetailLampiranModel.fromJson(Map<String, dynamic> json) =>
      _$DetailLampiranModelFromJson(json);
}

@freezed
class DetailDataTrackingModel with _$DetailDataTrackingModel {
  @JsonSerializable(explicitToJson: true)
  const factory DetailDataTrackingModel({
    String? status,
    String? keterangan,
    String? pic,
    @JsonKey(name: "update_at") DateTime? updateAt,
  }) = _DetailDataTrackingModel;

  factory DetailDataTrackingModel.fromJson(Map<String, dynamic> json) =>
      _$DetailDataTrackingModelFromJson(json);
}
