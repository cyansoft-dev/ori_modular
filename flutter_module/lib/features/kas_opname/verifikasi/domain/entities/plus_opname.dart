
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plus_opname.freezed.dart';

@freezed
class PlusOpname with _$PlusOpname {
  const factory PlusOpname({
    int? id,
    String? kdtk,
    double? nominal,
    String? deskripsi,
  }) = _PlusOpname;
}