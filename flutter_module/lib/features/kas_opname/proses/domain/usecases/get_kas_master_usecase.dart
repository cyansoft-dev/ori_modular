import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../entities/kas_master.dart';
import '../repositories/proses_opname_repository.dart';
import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';

@lazySingleton
class GetKasMasterUseCase extends UseCase<KasMaster, String> {
  final ProsesOpnameRepository _repository;
  GetKasMasterUseCase(@Named("prosesOpnameRepository") this._repository);

  @override
  Future<Either<Failure, KasMaster>> call(String params) async {
    return await _repository.getKasMaster(params);
  }
}
