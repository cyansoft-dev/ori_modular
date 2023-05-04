import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/detail_tracking_model.dart';
import 'tracking.dart';

part 'detail_tracking.freezed.dart';

DetailTracking detailTrackingFromJson(DetailTrackingModel model) =>
    DetailTracking.fromModel(model);

@freezed
class DetailTracking with _$DetailTracking {
  const factory DetailTracking({
    String? idDelivery,
    List<DetailLampiran>? detailLampiran,
    List<DetailDataTracking>? detailTracking,
  }) = _DetailTracking;

  factory DetailTracking.fromModel(DetailTrackingModel model) => DetailTracking(
        idDelivery: model.idDelivery,
        detailLampiran: model.detailLampiran
            ?.map((e) => DetailLampiran.fromModel(e))
            .toList(),
        detailTracking: model.detailTracking
            ?.map((e) => DetailDataTracking.fromModel(e))
            .toList(),
      );
}

@freezed
class DetailLampiran with _$DetailLampiran {
  const DetailLampiran._();

  const factory DetailLampiran({
    String? label,
    int? nominal,
    String? imageUrl,
  }) = _DetailLampiran;

  factory DetailLampiran.fromModel(DetailLampiranModel model) => DetailLampiran(
        label: model.label,
        nominal: model.nominal,
        imageUrl: model.imageUrl,
      );
}

@freezed
class DetailDataTracking with _$DetailDataTracking {
  const DetailDataTracking._();

  const factory DetailDataTracking({
    TrackingStatus? status,
    String? keterangan,
    String? pic,
    DateTime? updateAt,
  }) = _DetailDataTracking;

  factory DetailDataTracking.fromModel(DetailDataTrackingModel model) {
    // final regex = RegExp(r'\[.*\]');
    // final match = regex.firstMatch(model.keterangan);
    // status = model.keterangan.substring(0, match?.start).capitalize();
    // user = match?.group(0)?.replaceAll(RegExp(r'[\[\s][\s\]]'), "");

    return DetailDataTracking(
      status: model.status == null
          ? TrackingStatus.none
          : TrackingStatus.fromString(model.status!),
      pic: model.pic,
      keterangan: model.keterangan,
      updateAt: model.updateAt,
    );
  }
}
