import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_tenant.freezed.dart';

@freezed
class DataTenant with _$DataTenant {
  const factory DataTenant({
    int? id,
    String? kdtk,
    String? jenisProduk,
    String? noPsm,
    String? status,
    bool? isActive,
    File? tenantImage,
    File? storeImage,
    double? latitude,
    double? longitude,
    DateTime? addTime,
  }) = _DataTenant;
}
