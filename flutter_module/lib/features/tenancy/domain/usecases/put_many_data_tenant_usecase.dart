import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/data_tenant.dart';

import '../repositories/tenancy_repository.dart';

@lazySingleton
class PutManyDataTenantUseCase
    extends UseCase<List<DataTenant>, List<DataTenant>> {
  final TenancyRepository _repository;

  PutManyDataTenantUseCase(@Named("tenancyRepository") this._repository);

  @override
  Future<Either<Failure, List<DataTenant>>> call(
      List<DataTenant> params) async {
    return await _repository.putManyData(params);
  }
}
