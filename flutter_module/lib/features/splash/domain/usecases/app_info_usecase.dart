import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '/features/splash/domain/repositories/splash_repository.dart';

import '../entities/app_info.dart';

@lazySingleton
class AppInfoUseCase implements UseCase<AppInfo, NoParams> {
  final SplashRepository _repository;

  AppInfoUseCase(@Named('splashRepository') this._repository);

  @override
  Future<Either<Failure, AppInfo>> call(NoParams params) async {
    return await _repository.getAppInfo();
  }
}
