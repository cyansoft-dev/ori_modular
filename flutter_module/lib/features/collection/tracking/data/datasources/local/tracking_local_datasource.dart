import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/constants/file_constants.dart';
import '../../models/detail_tracking_model.dart';
import '../../models/tracking_model.dart';

abstract class TrackingLocalDataSource {
  Future<TrackingModel> getTracking(String kodeToko);

  Future<DetailTrackingModel> getDetailTracking(String idDelivery);
}

@Named("trackingLocalDataSource")
@LazySingleton(as: TrackingLocalDataSource)
class TrackingLocalDataSourceImpl implements TrackingLocalDataSource {
  @override
  Future<TrackingModel> getTracking(String kodeToko) async {
    final data = await rootBundle.loadString(FileConstants.tracking);

    return await compute<String, TrackingModel>(trackingModelFromJson, data);
  }

  @override
  Future<DetailTrackingModel> getDetailTracking(String idDelivery) async {
    final data = await rootBundle.loadString(FileConstants.trackingDetail);

    return await compute<String, DetailTrackingModel>(
        detailTrackingModelFromJson, data);
  }
}
