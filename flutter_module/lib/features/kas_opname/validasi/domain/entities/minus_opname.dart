import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'minus_enum.dart';
part 'minus_opname.freezed.dart';

@freezed
class MinusOpname with _$MinusOpname {
  const factory MinusOpname({
    int? id,
    String? kdtk,
    List<MinusFraud>? fraudData,
    List<MinusRrak>? rrakData,
    List<MinusVarian>? varianData,
    List<MinusOther>? otherData,
    InputStatus? inputStatus,
  }) = _MinusOpname;
}

@freezed
class MinusFraud with _$MinusFraud {
  const factory MinusFraud({
    int? id,
    String? kdtk,
    String? userId,
    double? nominal,
    String? modus,
    DateTime? tanggal,
    RefundStatus? refundStatus,
    File? imgBukti,
    String? commitment,
    JenisSanksi? sanksi,
    File? imgSanksi,
  }) = _MinusFraud;
}

@freezed
class MinusRrak with _$MinusRrak {
  const factory MinusRrak(
      {int? id,
      String? kdtk,
      String? jenis,
      double? nominal,
      File? imgNota}) = _MinusRrak;
}

@freezed
class MinusVarian with _$MinusVarian {
  const factory MinusVarian({
    int? id,
    String? kdtk,
    DateTime? tanggal,
    double? nominal,
    VarianStatus? statusVarian,
  }) = _MinusVarian;
}

@freezed
class MinusOther with _$MinusOther {
  const factory MinusOther({
    int? id,
    String? kdtk,
    double? nominal,
    String? keterangan,
  }) = _MinusOther;
}
