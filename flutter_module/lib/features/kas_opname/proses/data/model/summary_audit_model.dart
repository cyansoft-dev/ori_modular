import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'summary_audit_dto.dart';

part 'summary_audit_model.freezed.dart';
part 'summary_audit_model.g.dart';

SummaryAuditModel summaryAuditModelFromJson(String str) => SummaryAuditModel.fromJson(json.decode(str));

@freezed
class SummaryAuditModel with _$SummaryAuditModel {
  const factory SummaryAuditModel ({
    int? code,
    String? message,
    DataSummaryAuditModel? data,
  }) = _SummaryAuditModel;

  factory SummaryAuditModel.fromJson(Map<String, dynamic> json) => _$SummaryAuditModelFromJson(json);
}

@freezed
class DataSummaryAuditModel with _$DataSummaryAuditModel {
  const DataSummaryAuditModel._();

  const factory DataSummaryAuditModel({
    @Default(0) int id,
    String? kdtk,
    DateTime? tanggal,
    @Default(0.0) double summary,
    List<AdjustmentAuditModel>? adjust,
    @Default(AuditStatus.initial) AuditStatus status,
  }) = _DataSummaryAuditModel;

  factory DataSummaryAuditModel.fromJson(Map<String, dynamic> json) => _$DataSummaryAuditModelFromJson(json);
}


@freezed
class AdjustmentAuditModel with _$AdjustmentAuditModel {
  const factory AdjustmentAuditModel({
    @Default(0) int id,
    @Default(0.0) double nominal,
    String? desc,
  }) = _AdjustmentAuditModel;

  factory AdjustmentAuditModel.fromJson(Map<String, dynamic> json) => _$AdjustmentAuditModelFromJson(json);
}
