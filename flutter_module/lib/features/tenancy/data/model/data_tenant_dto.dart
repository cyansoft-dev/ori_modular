import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';

@Entity()
class DataTenantDto {
  @Id()
  int id;

  String? kdtk;

  String? noPsm;

  String? jenisProduk;

  String? status;

  bool? isActive;

  String? tenantPath;

  @Property(type: PropertyType.byteVector)
  Uint8List? tenantImage;

  String? storePath;

  @Property(type: PropertyType.byteVector)
  Uint8List? storeImage;

  double? latitude;

  double? longitude;

  @Property(type: PropertyType.date)
  DateTime? addTime;

  DataTenantDto(
      {this.id = 0,
      this.kdtk,
      this.noPsm,
      this.jenisProduk,
      this.status,
      this.isActive,
      this.tenantPath,
      this.tenantImage,
      this.storePath,
      this.storeImage,
      this.latitude,
      this.longitude,
      this.addTime});
}
