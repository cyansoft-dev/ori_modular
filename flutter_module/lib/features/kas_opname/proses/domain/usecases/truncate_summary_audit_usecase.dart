import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../repositories/proses_opname_repository.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';

@lazySingleton
class TruncateSummaryAuditUseCase extends UseCase<bool, NoParams> {
  final ProsesOpnameRepository _repository;
  TruncateSummaryAuditUseCase(
      @Named("prosesOpnameRepository") this._repository);

  @override
  Future<Either<Failure, bool>> call(NoParams params) async {
    return await _repository.truncateSummary();
  }
}
