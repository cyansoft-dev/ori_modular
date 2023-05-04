import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entities/master_opname.dart';
import '../repositories/menu_opname_repository.dart';

@lazySingleton
class GetCurrentMasterUseCase extends UseCase<MasterOpname, String> {
  final MenuOpnameRepository _repository;

  GetCurrentMasterUseCase(@Named("menuOpnameRepository") this._repository);

  @override
  Future<Either<Failure, MasterOpname>> call(String params) async {
    return await _repository.getCurrentMaster(params);
  }
}
