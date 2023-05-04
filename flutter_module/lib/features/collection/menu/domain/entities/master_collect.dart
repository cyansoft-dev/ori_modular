import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/model/master_collect_model.dart';

part 'master_collect.freezed.dart';

MasterCollect masterCollectFromModel(MasterCollectModel model) =>
    MasterCollect.fromModel(model);

@freezed
class MasterCollect with _$MasterCollect {
  const MasterCollect._();

  const factory MasterCollect({
    String? toko,
    DeliveryInfo? dataDelivery,
    CollectionInfo? dataCollection,
  }) = _MasterCollect;

  factory MasterCollect.fromModel(MasterCollectModel model) => MasterCollect(
        toko: model.kdtk,
        dataCollection: CollectionInfo.fromModel(model.collectionInfo),
        dataDelivery: DeliveryInfo.fromModel(model.deliveryInfo),
      );
}

@freezed
class CollectionInfo with _$CollectionInfo {
  const CollectionInfo._();

  const factory CollectionInfo({
    List<String>? listKodel,
    List<DateTime>? tanggalSales,
    List<String>? shift,
  }) = _CollectionInfo;

  factory CollectionInfo.fromModel(CollectionInfoModel? model) {
    return model == null
        ? const CollectionInfo()
        : CollectionInfo(
      listKodel: model.deliveryBox,
            tanggalSales: model.datePending,
            shift: model.currentShift,
          );
  }
}

@freezed
class DeliveryInfo with _$DeliveryInfo {
  const DeliveryInfo._();

  const factory DeliveryInfo({
    String? driver,
    String? nopolMobil,
    DateTime? estimasiKedatangan,
  }) = _DeliveryInfo;

  factory DeliveryInfo.fromModel(DeliveryInfoModel? model) {
    return model == null
        ? const DeliveryInfo()
        : DeliveryInfo(
            driver: model.driver,
            nopolMobil: model.vehicleNumber,
            estimasiKedatangan: model.arrivalEstimate,
          );
  }
}
