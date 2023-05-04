
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kurset.freezed.dart';

@freezed
class Kurset with _$Kurset {
  const factory Kurset({
    int? id,
    String? kdtk,
    DateTime? tanggal,
    double? nominal,
    String? keterangan,
  }) = _Kurset;
}
