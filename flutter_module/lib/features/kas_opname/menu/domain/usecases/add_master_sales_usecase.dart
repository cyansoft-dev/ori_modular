import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entities/master_opname.dart';
import '../repositories/menu_opname_repository.dart';

@lazySingleton
class AddMasterSalesUseCase extends UseCase<MasterOpname, String> {
  final MenuOpnameRepository _repository;
  AddMasterSalesUseCase(@Named("menuOpnameRepository") this._repository);

  @override
  Future<Either<Failure, MasterOpname>> call(String params) async {
    return await _repository.addDataMaster(params);
  }
}
