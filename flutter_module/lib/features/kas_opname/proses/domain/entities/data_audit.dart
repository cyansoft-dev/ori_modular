import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../menu/domain/entities/master_opname.dart';
import '../../data/model/summary_audit_dto.dart';

part 'data_audit.freezed.dart';


@freezed
class DataAudit with _$DataAudit {
  const factory DataAudit({
    String? kdtk,
    @Default(AuditStatus.initial) AuditStatus status,
    DanaCurrent? danaCurrent,
    DanaLastDay? danaLastDay,
    DanaKas? danaKas,
    DanaRrak? danaRrak,
  }) = _DataAudit;

}

@freezed
class DanaCurrent with _$DanaCurrent {
  const factory DanaCurrent({
    double? salesComputer,
    double? salesFisik,
    double? selisih,
  }) = _DanaCurrent;
}

@freezed
class DanaLastDay with _$DanaLastDay {
  const factory DanaLastDay({
    double? salesComputer,
    List<KurangSetor>? salesFisik,
    double? selisih,
  }) = _DanaLastDay;
}

@freezed
class DanaKas  with  _$DanaKas {
  const factory DanaKas({
    double? kasFinance,
    double? kasBrankas,
    double? kasKasir,
    double? uangKoin,
    double? selisih,
  }) = _DanaKas;
}


@freezed
class DanaRrak  with  _$DanaRrak {
  const factory DanaRrak({
    double? rencanaRrak,
    double? fisikDanaRrak,
    double? notaRrak,
    double? selisih,
  }) = _DanaRrak;
}
