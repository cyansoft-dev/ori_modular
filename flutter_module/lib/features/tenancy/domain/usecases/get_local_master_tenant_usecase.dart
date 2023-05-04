import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/master_tenant.dart';

import '../repositories/tenancy_repository.dart';

@lazySingleton
class GetLocalMasterTenantUseCase extends UseCase<List<MasterTenant>, String> {
  final TenancyRepository _repository;

  GetLocalMasterTenantUseCase(@Named("tenancyRepository") this._repository);

  @override
  Future<Either<Failure, List<MasterTenant>>> call(String params) async {
    return await _repository.getMasterFromLocal();
  }
}
