import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/data_tenant.dart';

import '../repositories/tenancy_repository.dart';

@lazySingleton
class FetchDataTenantUseCase extends UseCase<List<DataTenant>, String> {
  final TenancyRepository _repository;

  FetchDataTenantUseCase(@Named("tenancyRepository") this._repository);

  @override
  Future<Either<Failure, List<DataTenant>>> call(String params) async {
    return await _repository.fetchData(params);
  }
}
