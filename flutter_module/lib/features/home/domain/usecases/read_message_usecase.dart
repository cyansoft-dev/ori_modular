import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/home_repository.dart';

@lazySingleton
class ReadMessageUseCase extends UseCase<bool, int> {
  final HomeRepository _repository;
  ReadMessageUseCase(@Named("homeRepository") this._repository);

  @override
  Future<Either<Failure, bool>> call(int params) async {
    return _repository.readMessage(params);
  }
}
