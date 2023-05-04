import 'dart:convert';

import '/core/utils/helpers.dart';
import '../../domain/entities/data_collection.dart';
import '../model/data_collection_dto.dart';
import '../model/transaction_request_model.dart';

class TransactionMapper {
  static DataCollectionDto entityToDto(DataCollection data) {
    final dto = DataCollectionDto(
      kdtk: data.kdtk,
      type: data.type,
      delivery: data.delivery,
      idDelivery: data.idDelivery,
      tanggal: data.tanggal,
      shift: data.shift,
      status: data.status.message,
    );

    final details = data.details?.map((e) {
      return DetailTransactionDto(
          seqno: e.seqno,
          nominal: e.nominal,
          pathImage: e.pathImage,
          image: Helpers.getImageBytesSync(e.pathImage));
    }).toList();

    if (details != null) {
      dto.detail.addAll(details);
    }

    final summary = data.summary?.map((e) {
      return SummaryTransactionDto(
        seqno: e.seqno,
        label: e.label,
        nominal: e.nominal,
        description: e.description,
      );
    }).toList();

    if (summary != null) {
      dto.summary.addAll(summary);
    }
    return dto;
  }

  static TransactionRequestModel dtoToModel(DataCollectionDto dto) {
    TransactionRequestModel model = TransactionRequestModel(
      kdtk: dto.kdtk,
      type: dto.type,
      delivery: dto.delivery,
      idDelivery: dto.idDelivery,
      tanggal: dto.tanggal,
      shift: dto.shift,
      imageString: dto.image == null ? null : base64Encode(dto.image!),
      status: dto.status,
    );

    final lampiran = dto.detail
        .map((e) => LampiranModel(
              label: "lampiran ${e.seqno}",
              nominal: e.nominal,
              imageString: e.image == null ? null : base64Encode(e.image!),
            ))
        .toList();

    final summary = dto.summary
        .map((e) => SummaryModel(
              label: e.label,
              nominal: e.nominal,
              description: e.description,
            ))
        .toList();
    model = model.copyWith(lampiran: lampiran, summary: summary);
    return model;
  }
}
