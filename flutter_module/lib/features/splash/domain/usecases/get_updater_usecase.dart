import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import 'package:fpdart/fpdart.dart';
import '/core/usecase/usecase.dart';
import '/features/splash/domain/entities/updater_data.dart';

import '../repositories/splash_repository.dart';

@lazySingleton
class GetUpdaterUseCase implements UseCase<UpdaterData, NoParams> {
  final SplashRepository _repository;

  GetUpdaterUseCase(@Named('splashRepository') this._repository);

  @override
  Future<Either<Failure, UpdaterData>> call(NoParams params) async {
    return await _repository.getUpdater();
  }
}
