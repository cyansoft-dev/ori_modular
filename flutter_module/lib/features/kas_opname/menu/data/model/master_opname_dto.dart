import 'package:objectbox/objectbox.dart';

@Entity()
class MasterOpnameDto {
  @Id()
  int id;

  String? toko;

  @Property(type: PropertyType.date)
  DateTime? tanggal;

  double? danaKas;

  double? salesCurrent;

  @Backlink()
  final kurangSetor = ToMany<KurangSetorDto>();

  double? notaRrak;

  MasterOpnameDto({
    this.id = 0,
    this.toko,
    this.tanggal,
    this.danaKas,
    this.salesCurrent,
    this.notaRrak,
  });
}

@Entity()
class KurangSetorDto {
  @Id()
  int id;

  @Property(type: PropertyType.date)
  DateTime? tanggal;

  double? nominal;

  final summary = ToOne<MasterOpnameDto>();

  KurangSetorDto({
    this.id = 0,
    this.tanggal,
    this.nominal,
  });
}
