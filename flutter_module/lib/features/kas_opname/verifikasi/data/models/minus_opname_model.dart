import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'minus_opname_model.freezed.dart';
part 'minus_opname_model.g.dart';

String minusFraudModelToJson(MinusFraudModel model) =>
    json.encode(model.toJson());
String minusRrakModelToJson(MinusRrakModel model) =>
    json.encode(model.toJson());
String minusVarianModelToJson(MinusVarianModel model) =>
    json.encode(model.toJson());
String minusOtherModelToJson(MinusOtherModel model) =>
    json.encode(model.toJson());

@freezed
class MinusOpnameModel with _$MinusOpnameModel {
  const factory MinusOpnameModel({
    int? id,
    String? kdtk,
    @JsonKey(name: "fraud_data") MinusFraudModel? fraudData,
    @JsonKey(name: "rrak_data") MinusRrakModel? rrakData,
    @JsonKey(name: "varian_data") MinusVarianModel? varianData,
    @JsonKey(name: "other_data") MinusOtherModel? otherData,
  }) = _MinusOpnameModel;

  factory MinusOpnameModel.fromJson(Map<String, dynamic> json) =>
      _$MinusOpnameModelFromJson(json);
}

@freezed
class MinusFraudModel with _$MinusFraudModel {
  const factory MinusFraudModel({
    int? id,
    String? kdtk,
    @JsonKey(name: "user_id") String? userId,
    double? nominal,
    String? modus,
    DateTime? tanggal,
    @JsonKey(name: "status_refund") String? refundStatus,
    @JsonKey(name: "image_refund") String? imgBukti,
    @JsonKey(name: "komitment") String? commitment,
    String? sanksi,
    @JsonKey(name: "image_sanksi") String? imgSanksi,
  }) = _MinusFraudModel;

  factory MinusFraudModel.fromJson(Map<String, dynamic> json) =>
      _$MinusFraudModelFromJson(json);
}

@freezed
class MinusRrakModel with _$MinusRrakModel {
  const factory MinusRrakModel({
    int? id,
    String? kdtk,
    String? jenis,
    double? nominal,
    @JsonKey(name: "image_nota") String? imgNota,
  }) = _MinusRrakModel;

  factory MinusRrakModel.fromJson(Map<String, dynamic> json) =>
      _$MinusRrakModelFromJson(json);
}

@freezed
class MinusVarianModel with _$MinusVarianModel {
  const factory MinusVarianModel({
    int? id,
    String? kdtk,
    DateTime? tanggal,
    double? nominal,
    @JsonKey(name: "status_varian") String? statusVarian,
  }) = _MinusVarianModel;

  factory MinusVarianModel.fromJson(Map<String, dynamic> json) =>
      _$MinusVarianModelFromJson(json);
}

@freezed
class MinusOtherModel with _$MinusOtherModel {
  const factory MinusOtherModel({
    int? id,
    String? kdtk,
    double? nominal,
    String? keterangan,
  }) = _MinusOtherModel;

  factory MinusOtherModel.fromJson(Map<String, dynamic> json) =>
      _$MinusOtherModelFromJson(json);
}
