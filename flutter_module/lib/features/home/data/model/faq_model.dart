import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

FaqModel faqModelFromJson(String str) => FaqModel.fromJson(json.decode(str));

String faqModelToJson(FaqModel data) => json.encode(data.toJson());

@freezed
class FaqModel with _$FaqModel {
  const factory FaqModel({
    int? code,
    String? message,
    List<FaqDataModel>? data,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}

@freezed
class FaqDataModel with _$FaqDataModel {
  const factory FaqDataModel({
    String? question,
    String? answer,
  }) = _FaqDataModel;

  factory FaqDataModel.fromJson(Map<String, dynamic> json) =>
      _$FaqDataModelFromJson(json);
}
