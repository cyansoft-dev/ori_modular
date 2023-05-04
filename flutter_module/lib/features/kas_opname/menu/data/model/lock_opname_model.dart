
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lock_opname_model.freezed.dart';
part 'lock_opname_model.g.dart';

LockOpnameModel lockOpnameModelFromModel(String str) => LockOpnameModel.fromJson(json.decode(str));

@freezed
class LockOpnameModel with _$LockOpnameModel {
  const factory LockOpnameModel({
    int? code,
    String? message,
    @JsonKey(name: "key") String? secretKey,
    @JsonKey(name: "vector_key") String? vectorKey,
}) = _LockOpnameModel;

  factory LockOpnameModel.fromJson(Map<String, Object?> json) => _$LockOpnameModelFromJson(json);
}
