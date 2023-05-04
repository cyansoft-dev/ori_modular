import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entities/kurset.dart';
import '../repositories/kurset_repository.dart';

@lazySingleton
class GetKursetUseCase extends UseCase<List<Kurset>, String> {
  final KursetRepository _repository;
  GetKursetUseCase(@Named("kursetRepository") this._repository);

  @override
  Future<Either<Failure, List<Kurset>>> call(String params) async {
    return await _repository.getKurset(params);
  }
}
