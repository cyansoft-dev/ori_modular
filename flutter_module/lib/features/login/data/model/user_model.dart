import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserModel({
    int? code,
    String? message,
    @JsonKey(name: 'result') UserDataModel? userData,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserDataModel with _$UserDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory UserDataModel({
    String? username,
    String? namalengkap,
    String? kodecabang,
    String? namacabang,
    String? jabatan,
    String? departement,
    @JsonKey(name: 'is_store') bool? isStore,
    String? token,
    String? refreshToken,
  }) = _UserDataModel;

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
