import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/faq.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class GetFaqUseCase extends UseCase<List<FaqData>, NoParams> {
  final HomeRepository _repository;

  GetFaqUseCase(@Named("homeRepository") this._repository);

  @override
  Future<Either<Failure, List<FaqData>>> call(NoParams params) {
    return _repository.getFaq();
  }
}
