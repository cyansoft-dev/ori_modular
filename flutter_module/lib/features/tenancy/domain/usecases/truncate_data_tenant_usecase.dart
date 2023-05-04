import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/data_tenant.dart';

import '../repositories/tenancy_repository.dart';

@lazySingleton
class TruncateDataTenantUseCase extends UseCase<List<DataTenant>, NoParams> {
  final TenancyRepository _repository;

  TruncateDataTenantUseCase(@Named("tenancyRepository") this._repository);

  @override
  Future<Either<Failure, List<DataTenant>>> call(NoParams params) async {
    return await _repository.truncateData();
  }
}
