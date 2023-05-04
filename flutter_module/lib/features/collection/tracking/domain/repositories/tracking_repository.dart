import 'package:fpdart/fpdart.dart';

import '../../../../../core/failure/failure.dart';
import '../entities/detail_tracking.dart';
import '../entities/tracking.dart';

abstract class TrackingRepository {
  Future<Either<Failure, Tracking>> getTracking(String kodeToko);

  Future<Either<Failure, DetailTracking>> getDetailTracking(String idDelivery);
}
