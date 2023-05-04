import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entities/master_opname.dart';
import '../repositories/menu_opname_repository.dart';

@lazySingleton
class UpdateMasterSalesUseCase extends UseCase<MasterOpname, MasterOpname> {
  final MenuOpnameRepository _repository;
  UpdateMasterSalesUseCase(@Named("menuOpnameRepository") this._repository);

  @override
  Future<Either<Failure, MasterOpname>> call(MasterOpname params) async {
    return await _repository.updateCurrentMaster(params);
  }
}
