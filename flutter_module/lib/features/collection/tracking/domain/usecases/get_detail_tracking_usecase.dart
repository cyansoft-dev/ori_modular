import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entities/detail_tracking.dart';
import '../repositories/tracking_repository.dart';

@lazySingleton
class GetDetailTrackingUseCase extends UseCase<DetailTracking, String> {
  final TrackingRepository _repository;
  GetDetailTrackingUseCase(@Named("trackingRepository") this._repository);

  @override
  Future<Either<Failure, DetailTracking>> call(String params) async {
    return await _repository.getDetailTracking(params);
  }
}
