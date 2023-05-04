import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../repositories/common_repository.dart';

@lazySingleton
class CurrentLocationUseCase implements UseCase<Position, NoParams> {
  final CommonRepository _repository;

  CurrentLocationUseCase(@Named('commonRepository') this._repository);

  @override
  Future<Either<Failure, Position>> call(NoParams params) async {
    return await _repository.getCurrentLocation();
  }
}
