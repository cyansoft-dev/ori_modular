import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import 'package:fpdart/fpdart.dart';
import '/core/usecase/usecase.dart';
import '/features/splash/domain/entities/setting_data.dart';
import '/features/splash/domain/repositories/splash_repository.dart';

@lazySingleton
class GetSettingUseCase implements UseCase<SettingData, NoParams> {
  final SplashRepository _repository;

  GetSettingUseCase(@Named('splashRepository') this._repository);

  @override
  Future<Either<Failure, SettingData>> call(NoParams params) async {
    return await _repository.getSetting();
  }
}
