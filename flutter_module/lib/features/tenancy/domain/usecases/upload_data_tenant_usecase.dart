import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../common/domain/entities/base_response.dart';
import '../entities/data_tenant.dart';
import '../repositories/tenancy_repository.dart';

@lazySingleton
class UploadDataTenantUseCase extends UseCase<BaseResponse, List<DataTenant>> {
  final TenancyRepository _repository;
  UploadDataTenantUseCase(@Named("tenancyRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(List<DataTenant> params) async {
    return await _repository.uploadData(params);
  }
}
