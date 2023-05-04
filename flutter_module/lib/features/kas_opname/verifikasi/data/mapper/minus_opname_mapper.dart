import 'dart:convert';
import 'dart:io';

import '../../../../../core/utils/helpers.dart';
import '../../domain/entities/minus_opname.dart';
import '../models/minus_opname_model.dart';

class MinusOpnameMapper {
  static MinusFraud minusFraudFromModel(MinusFraudModel model) {
    return MinusFraud(
      id: model.id,
      kdtk: model.kdtk,
      userId: model.userId,
      nominal: model.nominal,
      modus: model.modus,
      tanggal: model.tanggal,
      refundStatus: RefundStatus.fromString(model.refundStatus),
      imgBukti: model.imgBukti == null ? null : File(model.imgBukti!),
      commitment: model.commitment,
      sanksi: JenisSanksi.fromString(model.sanksi),
      imgSanksi: model.imgSanksi == null ? null : File(model.imgSanksi!),
    );
  }

  static MinusFraudModel minusFraudToModel(MinusFraud entity) {
    final imgBukti = entity.imgBukti == null
        ? null
        : Helpers.getImageBytesSync(entity.imgBukti!.path);
    final imgSanksi = entity.imgSanksi == null
        ? null
        : Helpers.getImageBytesSync(entity.imgSanksi!.path);

    return MinusFraudModel(
      id: entity.id,
      kdtk: entity.kdtk,
      userId: entity.userId,
      nominal: entity.nominal,
      modus: entity.modus,
      tanggal: entity.tanggal,
      refundStatus: entity.refundStatus.toString(),
      imgBukti: imgBukti == null ? null : base64.encode(imgBukti),
      commitment: entity.commitment,
      sanksi: entity.sanksi.toString(),
      imgSanksi: entity.imgSanksi == null ? null : base64.encode(imgSanksi!),
    );
  }

  static MinusRrak minusRrakFromModel(MinusRrakModel model) {
    return MinusRrak(
      id: model.id,
      kdtk: model.kdtk,
      jenis: model.jenis,
      imgNota: model.imgNota == null ? null : File(model.imgNota!),
    );
  }

  static MinusRrakModel minusRrakToModel(MinusRrak entity) {
    final imgNota = entity.imgNota == null
        ? null
        : Helpers.getImageBytesSync(entity.imgNota!.path);

    return MinusRrakModel(
      id: entity.id,
      kdtk: entity.kdtk,
      jenis: entity.jenis,
      imgNota: imgNota == null ? null : base64.encode(imgNota),
    );
  }

  static MinusVarian minusVarianFromModel(MinusVarianModel model) {
    return MinusVarian(
        id: model.id,
        kdtk: model.kdtk,
        tanggal: model.tanggal,
        nominal: model.nominal,
        statusVarian: VarianStatus.fromString(model.statusVarian));
  }

  static MinusVarianModel minusVarianToModel(MinusVarian entity) {
    return MinusVarianModel(
      id: entity.id,
      kdtk: entity.kdtk,
      tanggal: entity.tanggal,
      nominal: entity.nominal,
      statusVarian: entity.statusVarian.toString(),
    );
  }

  static MinusOther minusOtherFromModel(MinusOtherModel model) {
    return MinusOther(
      id: model.id,
      kdtk: model.kdtk,
      nominal: model.nominal,
      keterangan: model.keterangan,
    );
  }

  static MinusOtherModel minusOtherToModel(MinusOther entity) {
    return MinusOtherModel(
        id: entity.id,
        kdtk: entity.kdtk,
        nominal: entity.nominal,
        keterangan: entity.keterangan);
  }
}
