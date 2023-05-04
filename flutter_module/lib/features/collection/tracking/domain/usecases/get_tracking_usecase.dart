import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entities/tracking.dart';
import '../repositories/tracking_repository.dart';

@lazySingleton
class GetTrackingUseCase extends UseCase<Tracking, String> {
  final TrackingRepository _repository;
  GetTrackingUseCase(@Named("trackingRepository") this._repository);

  @override
  Future<Either<Failure, Tracking>> call(String params) async {
    return await _repository.getTracking(params);
  }
}
