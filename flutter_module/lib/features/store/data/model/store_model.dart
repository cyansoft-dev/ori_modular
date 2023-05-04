import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_model.freezed.dart';
part 'store_model.g.dart';

StoreModel storeModelFromJson(String str) =>
    StoreModel.fromJson(json.decode(str));

String storeModelToJson(StoreModel data) => json.encode(data.toJson());

@freezed
class StoreModel with _$StoreModel {
  @JsonSerializable(explicitToJson: true)
  const factory StoreModel({
    int? code,
    String? message,
    @JsonKey(name: 'result') List<StoreDataModel>? listStoreModel,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}

@freezed
class StoreDataModel with _$StoreDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory StoreDataModel({
    String? username,
    String? namalengkap,
    String? kodetoko,
    String? namatoko,
    String? groupname,
    String? kodecabang,
    String? namacabang,
    @JsonKey(name: 'long_decimal') String? longDecimal,
    @JsonKey(name: 'lat_decimal') String? latDecimal,
    @JsonKey(name: 'long_radians') String? longRadians,
    @JsonKey(name: 'lat_radians') String? latRadians,
  }) = _StoreDataModel;

  factory StoreDataModel.fromJson(Map<String, dynamic> json) =>
      _$StoreDataModelFromJson(json);
}
