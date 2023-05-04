import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/home_repository.dart';
import '../../../splash/domain/entities/user.dart';

@lazySingleton
class LogoutUseCase implements UseCase<bool, User> {
  final HomeRepository _repository;
  LogoutUseCase(@Named("homeRepository") this._repository);

  @override
  Future<Either<Failure, bool>> call(User params) async {
    return await _repository.logout(params);
  }
}
