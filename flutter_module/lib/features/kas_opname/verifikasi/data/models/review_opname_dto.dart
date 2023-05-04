import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';

@Entity()
class ReviewOpnameDto {
  @Id()
  int id;

  String? kdtk;

  final fraud = ToOne<MinusFraudDto>();

  final rrak = ToMany<MinusRrakDto>();

  final varian = ToOne<MinusVarianDto>();

  final other = ToOne<MinusOtherDto>();

  ReviewOpnameDto({this.id = 0, this.kdtk});
}

@Entity()
class MinusFraudDto {
  @Id()
  int id;

  String? userId;

  double? nominal;

  String? modus;

  @Property(type: PropertyType.date)
  DateTime? tanggal;

  bool? refundStatus;

  String? description;

  String? sanksi;

  @Property(type: PropertyType.byteVector)
  Uint8List? image;

  MinusFraudDto({
    this.id = 0,
    this.userId,
    this.nominal,
    this.modus,
    this.tanggal,
    this.refundStatus,
    this.description,
    this.sanksi,
  });
}

@Entity()
class MinusRrakDto {
  @Id()
  int id;

  double? nominal;

  String? description;

  MinusRrakDto({
    this.id = 0,
    this.nominal,
    this.description,
  });
}

@Entity()
class MinusVarianDto {
  @Id()
  int id;

  @Property(type: PropertyType.date)
  DateTime? tanggal;

  double? nominal;

  String? status;

  MinusVarianDto({
    this.id = 0,
    this.tanggal,
    this.nominal,
    this.status,
  });
}

@Entity()
class MinusOtherDto {
  @Id()
  int id;

  String? description;

  MinusOtherDto({this.id = 0, this.description,});
}
