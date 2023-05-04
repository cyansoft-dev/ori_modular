import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kas_master_model.freezed.dart';
part 'kas_master_model.g.dart';


KasMasterModel kasMasterModelFromJson(String str) =>
    KasMasterModel.fromJson(json.decode(str));

String kasMasterModelToJson(KasMasterModel data) =>
    json.encode(data.toJson());


@freezed
class KasMasterModel with _$KasMasterModel {
  const factory KasMasterModel({
    int? code,
    String? message,
  }) = _KasMasterModel;

  factory KasMasterModel.fromJson(Map<String, dynamic> json) => _$KasMasterModelFromJson(json);
}
