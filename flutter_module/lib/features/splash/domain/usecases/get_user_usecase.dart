import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '/features/splash/domain/repositories/splash_repository.dart';
import '../entities/user.dart';

@lazySingleton
class GetUserUseCase implements UseCase<User, NoParams> {
  final SplashRepository _repository;

  GetUserUseCase(@Named('splashRepository') this._repository);

  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await _repository.getUser();
  }
}
