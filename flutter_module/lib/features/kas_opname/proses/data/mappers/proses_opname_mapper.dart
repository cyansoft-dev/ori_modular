import '../../domain/entities/summary_audit.dart';
import '../model/summary_audit_dto.dart';
import '../model/summary_audit_model.dart';

class ProsesOpnameMapper {
  static DataSummaryAuditModel summaryModelFromDto(SummaryAuditDto dto) {
    return DataSummaryAuditModel(
      id: dto.id,
      kdtk: dto.toko,
      tanggal: dto.tanggal,
      summary: dto.values ?? 0.0,
      adjust: dto.adjust
          .map((e) =>
              AdjustmentAuditModel(id: e.id, nominal: e.nominal, desc: e.desc))
          .toList(),
      status: AuditStatus.fromIndex(dto.status),
    );
  }

  static SummaryAuditDto summaryModelToDto(DataSummaryAuditModel model) {
    final dto = SummaryAuditDto(
      id: model.id,
      toko: model.kdtk,
      tanggal: model.tanggal,
      values: model.summary,
      auditStatus: model.status,
    );

    final adjust = model.adjust?.map((e) {
      return AdjustmentAuditDto(id: e.id, nominal: e.nominal, desc: e.desc);
    }).toList();

    if (adjust != null) {
      dto.adjust.addAll(adjust);
    }

    return dto;
  }

  static SummaryAuditDto summaryEntityToDto(SummaryAudit entity) {
    final dto = SummaryAuditDto(
      id: entity.id,
      toko: entity.kdtk,
      tanggal: entity.tanggal,
      values: entity.summary,
      auditStatus: entity.status,
    );

    final adjust = entity.adjust?.map((e) {
      return AdjustmentAuditDto(id: e.id, nominal: e.nominal, desc: e.desc);
    }).toList();

    if (adjust != null) {
      dto.adjust.addAll(adjust);
    }

    return dto;
  }

  static SummaryAudit summaryEntityFromDto(SummaryAuditDto dto) {
    return SummaryAudit(
      id: dto.id,
      kdtk: dto.toko,
      tanggal: dto.tanggal,
      summary: dto.values ?? 0.0,
      adjust: dto.adjust
          .map((e) =>
              AdjustmentAudit(id: e.id, nominal: e.nominal, desc: e.desc))
          .toList(),
      status: AuditStatus.fromIndex(dto.status),
    );
  }

  static SummaryAudit summaryEntityFromModel(DataSummaryAuditModel model) {
    return SummaryAudit(
      id: model.id,
      kdtk: model.kdtk,
      tanggal: model.tanggal,
      summary: model.summary,
      adjust: model.adjust
          ?.map((e) =>
              AdjustmentAudit(id: e.id, nominal: e.nominal, desc: e.desc))
          .toList(),
      status: model.status,
    );
  }
}
