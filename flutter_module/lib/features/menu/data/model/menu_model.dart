import 'dart:convert';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

MenuModel menuModelFromJson(String str) => MenuModel.fromJson(json.decode(str));

String menuModelToJson(MenuModel data) => json.encode(data.toJson());

@freezed
class MenuModel with _$MenuModel {
  @JsonSerializable(explicitToJson: true)
  const factory MenuModel({
    int? code,
    String? message,
    @JsonKey(name: 'menu_main') List<MenuDataModel>? menuUtama,
    @JsonKey(name: 'menu_collection') List<MenuDataModel>? menuCollection,
    @JsonKey(name: 'menu_tenant') List<MenuDataModel>? menuTenant,
    @JsonKey(name: 'menu_sokas') List<MenuDataModel>? menuKasOpname,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
}

@freezed
class MenuDataModel with _$MenuDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory MenuDataModel({
    int? id,
    String? title,
    String? subtitle,
    String? path,
    String? icon,
    @JsonKey(name: 'detect_location') String? lockLocation,
  }) = _MenuDataModel;

  factory MenuDataModel.fromJson(Map<String, dynamic> json) =>
      _$MenuDataModelFromJson(json);
}
