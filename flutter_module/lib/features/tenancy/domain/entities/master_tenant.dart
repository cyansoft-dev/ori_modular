
import 'package:freezed_annotation/freezed_annotation.dart';

part 'master_tenant.freezed.dart';

@freezed
class MasterTenant with _$MasterTenant {
  const factory MasterTenant({
    String? kdcab,
    String? kdtk,
    String? idTenant,
    String? jenisProduk,
    String? penyewa,
    String? noPsm,
    double? sewaGerobak,
    double? sewaByPsm,
    double? sewaBayar,
    String? bulan,
    String? notaPembayaran,
    DateTime? tanggalBayar,
  }) = _MasterTenant;
}