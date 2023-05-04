import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/message.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetInitialMessageUseCase extends UseCase<Message, NoParams> {
  final HomeRepository _repository;

  GetInitialMessageUseCase(@Named("homeRepository") this._repository);

  @override
  Future<Either<Failure, Message>> call(NoParams params) {
    return _repository.getInitialMessage();
  }
}
