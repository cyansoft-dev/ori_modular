import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/delivery_master_model.dart';

part 'delivery_master.freezed.dart';

DeliveryMaster deliveryMasterFromModel(DeliveryMasterModel model) =>
    DeliveryMaster.fromModel(model);

@freezed
class DeliveryMaster with _$DeliveryMaster {
  const DeliveryMaster._();

  const factory DeliveryMaster({
    String? kdtk,
    DataMaster? dataMaster,
  }) = _DeliveryMaster;

  factory DeliveryMaster.fromModel(DeliveryMasterModel model) => DeliveryMaster(
        kdtk: model.kdtk,
        dataMaster: model.dataMaster == null
            ? null
            : DataMaster.fromModel(model.dataMaster!),
      );
}

@freezed
class DataMaster with _$DataMaster {
  const DataMaster._();

  const factory DataMaster({
    List<DeliveryInfo>? deliveryInfo,
    List<SalesDate>? salesDate,
    List<SenderInfo>? senderInfo,
    List<MasterBst>? masterBst,
  }) = _DataMaster;

  factory DataMaster.fromModel(DataMasterModel model) => DataMaster(
        deliveryInfo: model.deliveryInfo == null
            ? null
            : model.deliveryInfo!
                .map((model) => DeliveryInfo.fromModel(model))
                .toList(),
        salesDate: model.salesDate == null
            ? null
            : model.salesDate!
                .map((model) => SalesDate.fromModel(model))
                .toList(),
        senderInfo: model.senderInfo == null
            ? null
            : model.senderInfo!
                .map((model) => SenderInfo.fromModel(model))
                .toList(),
        masterBst: model.masterBst == null
            ? null
            : model.masterBst!
                .map((model) => MasterBst.fromModel(model))
                .toList(),
      );
}

@freezed
class DeliveryInfo with _$DeliveryInfo {
  const DeliveryInfo._();

  const factory DeliveryInfo({
    String? jenis,
    String? id,
    String? driver,
    String? nopol,
    DateTime? estimasi,
  }) = _DeliveryInfo;

  factory DeliveryInfo.fromModel(DeliveryInfoModel model) => DeliveryInfo(
        jenis: model.jenis,
        id: model.id,
        driver: model.driver,
        nopol: model.nopol,
        estimasi: model.estimasi,
      );
}

@freezed
class SalesDate with _$SalesDate {
  const SalesDate._();

  const factory SalesDate({
    DateTime? tanggal,
    String? setoran,
    List<String>? shift,
  }) = _SalesDate;

  factory SalesDate.fromModel(SalesDateModel model) => SalesDate(
        tanggal: model.tanggal,
        setoran: model.setoran,
        shift: model.shift != null
            ? model.shift!.map((e) => e.toUpperCase()).toList()
            : null,
      );
}

@freezed
class SenderInfo with _$SenderInfo {
  const SenderInfo._();

  const factory SenderInfo({
    String? id,
    String? name,
    String? keterangan,
  }) = _SenderInfo;

  factory SenderInfo.fromModel(SenderInfoModel model) => SenderInfo(
        id: model.id,
        name: model.name,
        keterangan: model.keterangan,
      );
}

@freezed
class MasterBst with _$MasterBst {
  const MasterBst._();

  const factory MasterBst({
    int? id,
    String? label,
    String? hint,
    int? nominal,
    @Default(false) bool isDesc,
    String? description,
  }) = _MasterBst;

  factory MasterBst.fromModel(MasterBstModel model) => MasterBst(
        id: model.id,
        label: model.label,
        hint: model.hint,
        nominal: model.nominal,
        isDesc: model.isDesc ?? false,
        description: model.description,
      );
}
