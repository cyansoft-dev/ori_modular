import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/summary_audit_dto.dart';

part 'summary_audit.freezed.dart';

@freezed
class SummaryAudit with _$SummaryAudit {
  const factory SummaryAudit({
    @Default(0) int id,
    String? kdtk,
    DateTime? tanggal,
    @Default(0.0) double summary,
    List<AdjustmentAudit>? adjust,
    @Default(AuditStatus.initial) AuditStatus status,
  }) = _SummaryAudit;
}


@freezed
class AdjustmentAudit with _$AdjustmentAudit {
  const factory AdjustmentAudit({
    @Default(0) int id,
    @Default(0.0) double nominal,
    String? desc,
  }) = _AdjustmentAudit;


}
