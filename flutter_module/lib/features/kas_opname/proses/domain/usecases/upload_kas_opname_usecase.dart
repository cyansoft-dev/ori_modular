import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/summary_audit.dart';
import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '../entities/data_audit.dart';
import '../repositories/proses_opname_repository.dart';

@lazySingleton
class UploadKasOpnameUseCase extends UseCase<SummaryAudit, DataAudit> {
  final ProsesOpnameRepository _repository;
  UploadKasOpnameUseCase(@Named("prosesOpnameRepository") this._repository);

  @override
  Future<Either<Failure, SummaryAudit>> call(DataAudit params) async {
    return await _repository.uploadData(params);
  }
}
