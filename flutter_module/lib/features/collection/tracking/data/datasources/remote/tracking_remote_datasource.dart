import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../core/dio/dio.dart';
import '../../models/detail_tracking_model.dart';
import '../../models/tracking_model.dart';

abstract class TrackingRemoteDataSource {
  Future<TrackingModel> getTracking(String kodeToko);

  Future<DetailTrackingModel> getDetailTracking(String idDelivery);
}

@Named("trackingRemoteDataSource")
@LazySingleton(as: TrackingRemoteDataSource)
class TrackingRemoteDataSourceImpl implements TrackingRemoteDataSource {
  final DioClient _client;
  TrackingRemoteDataSourceImpl(this._client);

  @override
  Future<DetailTrackingModel> getDetailTracking(String idDelivery) async {
    final params = {"id": idDelivery};

    final response = await _client.post(
      "/collection/detail-tracking",
      data: params,
    );

    final result = await compute<String, DetailTrackingModel>(
        detailTrackingModelFromJson, response.toString());

    return result;
  }

  @override
  Future<TrackingModel> getTracking(String kodeToko) async {
    final params = {"kdtk": kodeToko};

    final response = await _client.post(
      "/collection/tracking",
      data: params,
    );

    final result = await compute<String, TrackingModel>(
        trackingModelFromJson, response.toString());

    return result;
  }
}
