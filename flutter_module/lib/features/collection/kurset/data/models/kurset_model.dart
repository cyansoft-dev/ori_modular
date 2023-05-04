import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'kurset_model.freezed.dart';
part 'kurset_model.g.dart';

KursetModel kursetModelFromJson(String str) =>
    KursetModel.fromJson(json.decode(str));

@freezed
class KursetModel with _$KursetModel {
  const factory KursetModel({
    int? code,
    String? message,
    List<DataKursetModel>? data,
  }) = _KursetModel;

  factory KursetModel.fromJson(Map<String, dynamic> json) =>
      _$KursetModelFromJson(json);
}

@freezed
class DataKursetModel with _$DataKursetModel {
  const factory DataKursetModel({
    int? id,
    String? kdtk,
    DateTime? tanggal,
    double? nominal,
    String? keterangan,
  }) = _DataKursetModel;

  factory DataKursetModel.fromJson(Map<String, dynamic> json) =>
      _$DataKursetModelFromJson(json);
}
