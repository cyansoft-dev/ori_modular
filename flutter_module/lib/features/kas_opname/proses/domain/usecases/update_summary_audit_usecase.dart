import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/summary_audit.dart';
import '../repositories/proses_opname_repository.dart';
import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';

@lazySingleton
class UpdateSummaryAuditUseCase extends UseCase<SummaryAudit, SummaryAudit> {
  final ProsesOpnameRepository _repository;
  UpdateSummaryAuditUseCase(@Named("prosesOpnameRepository") this._repository);

  @override
  Future<Either<Failure, SummaryAudit>> call(SummaryAudit params) async {
    return await _repository.updateSummary(params);
  }
}
