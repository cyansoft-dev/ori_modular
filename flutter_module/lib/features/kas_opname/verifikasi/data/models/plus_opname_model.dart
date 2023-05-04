import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'plus_opname_model.freezed.dart';
part 'plus_opname_model.g.dart';

PlusOpnameModel plusOpnameModelFromJson(String str) =>
    PlusOpnameModel.fromJson(json.decode(str));

String plusOpnameModelToJson(PlusOpnameModel model) => json.encode(model.toJson());

@freezed
class PlusOpnameModel with _$PlusOpnameModel {
  const factory PlusOpnameModel({
    int? id,
    String? kdtk,
    double? nominal,
    String? deskripsi,
  }) = _PlusOpnameModel;

  factory PlusOpnameModel.fromJson(Map<String, dynamic> json) =>
      _$PlusOpnameModelFromJson(json);
}
