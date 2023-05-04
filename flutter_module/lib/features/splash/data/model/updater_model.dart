import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'updater_model.freezed.dart';
part 'updater_model.g.dart';

UpdaterModel updaterModelFromJson(String str) =>
    UpdaterModel.fromJson(json.decode(str));

String updaterModelToJson(UpdaterModel data) => json.encode(data.toJson());

@freezed
class UpdaterModel with _$UpdaterModel {
  @JsonSerializable(explicitToJson: true)
  const factory UpdaterModel({
    int? code,
    String? message,
    @JsonKey(name: 'version') UpdaterDataModel? updater,
  }) = _UpdaterModel;

  factory UpdaterModel.fromJson(Map<String, dynamic> json) =>
      _$UpdaterModelFromJson(json);
}

@freezed
class UpdaterDataModel with _$UpdaterDataModel {
  @JsonSerializable(explicitToJson: true)
  const factory UpdaterDataModel({
    String? name,
    String? number,
    String? url,
    List<String>? changelog,
    String? signature,
  }) = _UpdaterDataModel;

  factory UpdaterDataModel.fromJson(Map<String, dynamic> json) =>
      _$UpdaterDataModelFromJson(json);
}
