import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/data_tenant.dart';

import '../repositories/tenancy_repository.dart';

@lazySingleton
class DeleteDataTenantUseCase extends UseCase<List<DataTenant>, int> {
  final TenancyRepository _repository;

  DeleteDataTenantUseCase(@Named("tenancyRepository") this._repository);

  @override
  Future<Either<Failure, List<DataTenant>>> call(int params) async {
    return await _repository.deleteData(params);
  }
}
