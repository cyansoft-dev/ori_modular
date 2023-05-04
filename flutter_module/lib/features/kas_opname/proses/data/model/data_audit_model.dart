import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../menu/data/model/master_opname_model.dart';
import '../../domain/entities/data_audit.dart';

part 'data_audit_model.freezed.dart';
part 'data_audit_model.g.dart';

DataAuditModel dataAuditModelFromJson(String str) =>
    DataAuditModel.fromJson(json.decode(str));
String dataAuditModelToJson(DataAuditModel data) => json.encode(data.toJson());

DataAuditModel dataAuditModelFromEntity(DataAudit entity) =>
    DataAuditModel.fromEntity(entity);

@freezed
class DataAuditModel with _$DataAuditModel {
  const DataAuditModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DataAuditModel({
    String? kdtk,
    @JsonKey(name: "dana_current") DanaCurrentModel? danaCurrent,
    @JsonKey(name: "dana_last") DanaLastDayModel? danaLastDay,
    @JsonKey(name: "dana_kas") DanaKasModel? danaKas,
    @JsonKey(name: "dana_rrak") DanaRrakModel? danaRrak,
  }) = _DataAuditModel;

  factory DataAuditModel.fromJson(Map<String, dynamic> json) =>
      _$DataAuditModelFromJson(json);

  factory DataAuditModel.fromEntity(DataAudit entity) => DataAuditModel(
        kdtk: entity.kdtk,
        danaCurrent: entity.danaCurrent == null
            ? null
            : DanaCurrentModel.fromEntity(entity.danaCurrent!),
        danaLastDay: entity.danaLastDay == null
            ? null
            : DanaLastDayModel.fromEntity(entity.danaLastDay!),
        danaKas: entity.danaKas == null
            ? null
            : DanaKasModel.fromEntity(entity.danaKas!),
        danaRrak: entity.danaRrak == null
            ? null
            : DanaRrakModel.fromEntity(entity.danaRrak!),
      );
}

@freezed
class DanaCurrentModel with _$DanaCurrentModel {
  const DanaCurrentModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DanaCurrentModel({
    /*@JsonKey(name: "uang_modal") double? uangModal,*/
    @JsonKey(name: "sales_computer") double? salesComputer,
    @JsonKey(name: "sales_fisik") double? salesFisik,
    @JsonKey(name: "selisih") double? selisih,
  }) = _DanaCurrentModel;

  factory DanaCurrentModel.fromJson(Map<String, dynamic> json) =>
      _$DanaCurrentModelFromJson(json);

  factory DanaCurrentModel.fromEntity(DanaCurrent entity) => DanaCurrentModel(
        /*uangModal: entity.uangModal,*/
        salesComputer: entity.salesComputer,
        salesFisik: entity.salesFisik,
        selisih: entity.selisih,
      );
}

@freezed
class DanaLastDayModel with _$DanaLastDayModel {
  const DanaLastDayModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DanaLastDayModel({
    @JsonKey(name: "sales_computer") double? salesComputer,
    @JsonKey(name: "sales_fisik") List<KurangSetorModel>? salesFisik,
    @JsonKey(name: "selisih") double? selisih,
  }) = _DanaLastDayModel;

  factory DanaLastDayModel.fromJson(Map<String, dynamic> json) =>
      _$DanaLastDayModelFromJson(json);

  factory DanaLastDayModel.fromEntity(DanaLastDay entity) => DanaLastDayModel(
        salesComputer: entity.salesComputer,
        salesFisik: entity.salesFisik
            ?.map((e) => KurangSetorModel(
                  tanggal: e.tanggal,
                  nominal: e.nominal,
                ))
            .toList(),
        selisih: entity.selisih,
      );
}

@freezed
class DanaKasModel with _$DanaKasModel {
  const DanaKasModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DanaKasModel({
    @JsonKey(name: "kas_finance") double? kasFinance,
    @JsonKey(name: "kas_brankas") double? kasBrankas,
    @JsonKey(name: "kas_kasir") double? kasKasir,
    @JsonKey(name: "koin") double? uangKoin,
    @JsonKey(name: "selisih") double? selisih,
  }) = _DanaKasModel;

  factory DanaKasModel.fromJson(Map<String, dynamic> json) =>
      _$DanaKasModelFromJson(json);

  factory DanaKasModel.fromEntity(DanaKas entity) => DanaKasModel(
        kasFinance: entity.kasFinance,
        kasBrankas: entity.kasBrankas,
        kasKasir: entity.kasKasir,
        uangKoin: entity.uangKoin,
        selisih: entity.selisih,
      );
}

@freezed
class DanaRrakModel with _$DanaRrakModel {
  const DanaRrakModel._();

  @JsonSerializable(explicitToJson: true)
  const factory DanaRrakModel({
    @JsonKey(name: "dana_rrak") double? rencanaRrak,
    @JsonKey(name: "fisik_dana") double? fisikDanaRrak,
    @JsonKey(name: "nota") double? notaRrak,
    @JsonKey(name: "selisih") double? selisih,
  }) = _DanaRrakModel;

  factory DanaRrakModel.fromJson(Map<String, dynamic> json) =>
      _$DanaRrakModelFromJson(json);

  factory DanaRrakModel.fromEntity(DanaRrak entity) => DanaRrakModel(
        rencanaRrak: entity.rencanaRrak,
        fisikDanaRrak: entity.fisikDanaRrak,
        notaRrak: entity.notaRrak,
        selisih: entity.selisih,
      );
}
