import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/summary_audit.dart';
import '../repositories/proses_opname_repository.dart';
import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';

@lazySingleton
class GetSummaryAuditUseCase extends UseCase<SummaryAudit, String> {
  final ProsesOpnameRepository _repository;
  GetSummaryAuditUseCase(@Named("prosesOpnameRepository") this._repository);

  @override
  Future<Either<Failure, SummaryAudit>> call(String params) async {
    return await _repository.getSummaryByStore(params);
  }
}
