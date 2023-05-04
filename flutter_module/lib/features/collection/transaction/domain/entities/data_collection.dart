// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

import '/core/utils/helpers.dart';
import '../../data/model/data_collection_dto.dart';

part 'data_collection.freezed.dart';

enum TransactionStatus {
  initial("Initial Data"),
  setDate("Set Date"),
  setDetail("Set Detail"),
  setSummary("Set Summary"),
  done("Done"),
  sending("Send"),
  ;

  const TransactionStatus(this.message);
  final String message;

  factory TransactionStatus.fromString(String message) =>
      values.firstWhere((e) => e.message.contains(message));

  @override
  String toString() => message;
}

ListDataCollection listTransactionFromDto(List<DataCollectionDto> data) =>
    ListDataCollection.fromDtos(data);

@freezed
class ListDataCollection with _$ListDataCollection {
  const ListDataCollection._();

  const factory ListDataCollection({
    List<DataCollection>? data,
  }) = _ListDataCollection;

  factory ListDataCollection.fromDtos(List<DataCollectionDto> list) {
    return ListDataCollection(
        data: list.map((e) => DataCollection.fromDto(e)).toList());
  }
}

@freezed
class DataCollection with _$DataCollection {
  const DataCollection._();

  const factory DataCollection({
    int? id,
    String? kdtk,
    String? type,
    String? delivery,
    String? idDelivery,
    DateTime? tanggal,
    String? shift,
    int? jumlDetail,
    List<DetailTransaction>? details,
    List<SummaryTransaction>? summary,
    String? pathImage,
    @Default(TransactionStatus.initial) TransactionStatus status,
    double? latitude,
    double? longitude,
  }) = _DataCollection;

  factory DataCollection.fromDto(DataCollectionDto dto) {
    final file = Helpers.getImageFileSync(dto.pathImage, dto.image);
    return DataCollection(
      id: dto.id,
      kdtk: dto.kdtk,
      type: dto.type,
      delivery: dto.delivery,
      idDelivery: dto.idDelivery,
      tanggal: dto.tanggal,
      shift: dto.shift,
      jumlDetail: dto.detail.length,
      details: dto.detail.map((e) => DetailTransaction.fromDto(e)).toList(),
      summary: dto.summary.map((e) => SummaryTransaction.fromDto(e)).toList(),
      pathImage: file?.path,
      status: TransactionStatus.fromString(dto.status!),
    );
  }
}

@freezed
class DetailTransaction with _$DetailTransaction {
  const DetailTransaction._();

  const factory DetailTransaction({
    int? id,
    int? seqno,
    double? nominal,
    String? pathImage,
  }) = _DetailTransaction;

  factory DetailTransaction.fromDto(DetailTransactionDto dto) {
    final file = Helpers.getImageFileSync(dto.pathImage, dto.image);
    return DetailTransaction(
      id: dto.id,
      seqno: dto.seqno,
      nominal: dto.nominal,
      pathImage: file?.path,
    );
  }
}

@freezed
class SummaryTransaction with _$SummaryTransaction {
  const SummaryTransaction._();

  const factory SummaryTransaction({
    int? id,
    int? seqno,
    String? label,
    double? nominal,
    String? description,
  }) = _SummaryTransaction;

  factory SummaryTransaction.fromDto(SummaryTransactionDto dto) {
    return SummaryTransaction(
      id: dto.id,
      seqno: dto.seqno,
      label: dto.label,
      nominal: dto.nominal,
      description: dto.description,
    );
  }
}
