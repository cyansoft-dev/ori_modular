import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/tracking_model.dart';

part "tracking.freezed.dart";

Tracking trackingFromModel(TrackingModel model) => Tracking.fromModel(model);

@freezed
class Tracking with _$Tracking {
  const Tracking._();

  const factory Tracking({
    List<DataTracking>? listTracking,
  }) = _Tracking;

  factory Tracking.fromModel(TrackingModel model) => Tracking(
        listTracking:
            model.data?.map((e) => DataTracking.fromModel(e)).toList(),
      );
}

@freezed
class DataTracking with _$DataTracking {
  const DataTracking._();

  const factory DataTracking({
    String? type,
    String? delivery,
    String? idDelivery,
    DateTime? tglPosting,
    int? lampiran,
    TrackingStatus? status,
    DateTime? updateAt,
    List<SalesDetail>? salesDetail,
  }) = _DataTracking;

  factory DataTracking.fromModel(DataTrackingModel model) => DataTracking(
        type: model.type,
        delivery: model.delivery,
        idDelivery: model.idDelivery,
        tglPosting: model.tglPosting,
        lampiran: model.lampiran,
        status: model.status == null
            ? TrackingStatus.none
            : TrackingStatus.fromString(model.status!),
        updateAt: model.updateAt,
        salesDetail: model.sales?.map((e) => SalesDetail.fromModel(e)).toList(),
      );
}

@freezed
class SalesDetail with _$SalesDetail {
  const SalesDetail._();

  const factory SalesDetail({
    DateTime? tanggal,
    int? lampiran,
    int? nominal,
  }) = _SalesDetail;

  factory SalesDetail.fromModel(SalesModel model) => SalesDetail(
        tanggal: model.tanggal,
        lampiran: model.lampiran,
        nominal: model.nominal,
      );
}

enum TrackingStatus {
  sending("SENDING"),
  onProcess("ON PROCESS"),
  completed("COMPLETED"),
  none("NONE");

  final String status;
  const TrackingStatus(this.status);

  @override
  String toString() => status;

  factory TrackingStatus.fromString(String status) => values.firstWhere(
        (e) => e.status.contains(status),
        orElse: () => TrackingStatus.none,
      );
}
