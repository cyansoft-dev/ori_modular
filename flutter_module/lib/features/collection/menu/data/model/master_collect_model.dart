import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_collect_model.freezed.dart';
part 'master_collect_model.g.dart';

MasterCollectModel masterCollectModelFromJson(String str) =>
    MasterCollectModel.fromJson(json.decode(str));

String masterCollectModelToJson(MasterCollectModel data) =>
    json.encode(data.toJson());

@freezed
class MasterCollectModel with _$MasterCollectModel {
  @JsonSerializable(explicitToJson: true)
  const factory MasterCollectModel({
    int? code,
    String? message,
    String? kdtk,
    @JsonKey(name: 'delivery_info') DeliveryInfoModel? deliveryInfo,
    @JsonKey(name: 'collection_info') CollectionInfoModel? collectionInfo,
  }) = _MasterCollectModel;

  factory MasterCollectModel.fromJson(Map<String, dynamic> json) =>
      _$MasterCollectModelFromJson(json);
}

@freezed
class CollectionInfoModel with _$CollectionInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory CollectionInfoModel({
    @JsonKey(name: 'delivery_box') List<String>? deliveryBox,
    @JsonKey(name: 'date_pending') List<DateTime>? datePending,
    @JsonKey(name: 'shift') List<String>? currentShift,
  }) = _CollectionInfoModel;

  factory CollectionInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionInfoModelFromJson(json);
}

@freezed
class DeliveryInfoModel with _$DeliveryInfoModel {
  @JsonSerializable(explicitToJson: true)
  const factory DeliveryInfoModel({
    String? driver,
    @JsonKey(name: 'vehicle_number') String? vehicleNumber,
    @JsonKey(name: 'arrival_time') DateTime? arrivalEstimate,
  }) = _DeliveryInfoModel;

  factory DeliveryInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryInfoModelFromJson(json);
}
