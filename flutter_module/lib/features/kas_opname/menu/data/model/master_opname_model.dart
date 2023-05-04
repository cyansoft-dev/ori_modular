import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_opname_model.freezed.dart';
part 'master_opname_model.g.dart';

MasterOpnameModel masterOpnameModelFromJson(String str) =>
    MasterOpnameModel.fromJson(json.decode(str));

String masterOpnameModelToJson(MasterOpnameModel data) =>
    json.encode(data.toJson());

@freezed
class MasterOpnameModel with _$MasterOpnameModel {
  @JsonSerializable(explicitToJson: true)
  const factory MasterOpnameModel({
    @JsonKey(name: "kdtk") String? toko,
    DateTime? tanggal,
    @JsonKey(name: "dana_finance") double? danaKas,
    @JsonKey(name: "sales_curdate") double? salesCurrent,
    @JsonKey(name: "kurang_setor") List<KurangSetorModel>? kurangSetor,
    @JsonKey(name: "nota_rrak") double? notaRrak,
  }) = _MasterOpnameModel;

  factory MasterOpnameModel.fromJson(Map<String, dynamic> json) =>
      _$MasterOpnameModelFromJson(json);
}

@freezed
class KurangSetorModel with _$KurangSetorModel {
  @JsonSerializable(explicitToJson: true)
  const factory KurangSetorModel({
    DateTime? tanggal,
    double? nominal,
  }) = _KurangSetorModel;

  factory KurangSetorModel.fromJson(Map<String, dynamic> json) =>
      _$KurangSetorModelFromJson(json);
}
