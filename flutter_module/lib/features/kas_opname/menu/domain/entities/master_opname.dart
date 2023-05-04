import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_opname.freezed.dart';

@freezed
class MasterOpname with _$MasterOpname {
  const factory MasterOpname({
    @Default(0) int id,
    String? toko,
    DateTime? tanggal,
    double? danaKas,
    double? salesCurrent,
    List<KurangSetor>? kurangSetor,
    double? notaRrak,
  }) = _MasterOpname;
}


@freezed
class KurangSetor with _$KurangSetor {
  const factory KurangSetor({
    DateTime? tanggal,
    double? nominal,
  }) = _KurangSetor;
}