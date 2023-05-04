import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/data_tenant.dart';

import '../repositories/tenancy_repository.dart';

@lazySingleton
class PutDataTenantUseCase extends UseCase<List<DataTenant>, DataTenant> {
  final TenancyRepository _repository;

  PutDataTenantUseCase(@Named("tenancyRepository") this._repository);

  @override
  Future<Either<Failure, List<DataTenant>>> call(DataTenant params) async {
    return await _repository.putData(params);
  }
}
