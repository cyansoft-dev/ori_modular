import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetLocationUseCase extends UseCase<Position, NoParams> {
  final HomeRepository _repository;
  GetLocationUseCase(@Named("homeRepository") this._repository);

  @override
  Future<Either<Failure, Position>> call(NoParams params) async {
    return _repository.getCurrentPosition();
  }
}
