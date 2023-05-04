import 'dart:typed_data';
import 'package:objectbox/objectbox.dart';

@Entity()
class DataCollectionDto {
  @Id()
  int id;

  String? kdtk;

  String? type;

  String? delivery;

  String? idDelivery;

  @Property(type: PropertyType.date)
  DateTime? tanggal;

  String? shift;

  @Backlink('transaction')
  final detail = ToMany<DetailTransactionDto>();

  @Backlink('transaction')
  final summary = ToMany<SummaryTransactionDto>();

  String? pathImage;

  @Property(type: PropertyType.byteVector)
  Uint8List? image;

  String? status;

  DataCollectionDto({
    this.id = 0,
    this.kdtk,
    this.type,
    this.delivery,
    this.idDelivery,
    this.tanggal,
    this.shift,
    this.pathImage,
    this.image,
    this.status,
  });
}

@Entity()
class DetailTransactionDto {
  @Id()
  int id;

  int? seqno;

  double? nominal;

  String? pathImage;

  @Property(type: PropertyType.byteVector)
  Uint8List? image;

  final transaction = ToOne<DataCollectionDto>();

  DetailTransactionDto({
    this.id = 0,
    this.seqno,
    this.nominal,
    this.pathImage,
    this.image,
  });
}

@Entity()
class SummaryTransactionDto {
  @Id()
  int id;

  int? seqno;

  String? label;

  double? nominal;

  String? description;

  final transaction = ToOne<DataCollectionDto>();

  SummaryTransactionDto({
    this.id = 0,
    this.seqno,
    this.label,
    this.nominal,
    this.description,
  });
}
