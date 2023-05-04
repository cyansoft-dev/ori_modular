import 'package:fpdart/fpdart.dart';
import '../entities/summary_audit.dart';

import '../entities/data_audit.dart';
import '../entities/kas_master.dart';
import '/core/failure/failure.dart';

abstract class ProsesOpnameRepository {
  Future<Either<Failure, KasMaster>> getKasMaster(String kodeToko);

  Future<Either<Failure, SummaryAudit>> uploadData(DataAudit data);

  Future<Either<Failure, SummaryAudit>> putSummary(SummaryAudit data);

  Future<Either<Failure, SummaryAudit>> updateSummary(SummaryAudit data);

  Future<Either<Failure, SummaryAudit>> getSummaryByStore(String store);

  Future<Either<Failure, bool>> truncateSummary();
}
