import 'package:fpdart/fpdart.dart';

import '../../../../core/failure/failure.dart';
import '../../../common/domain/entities/base_response.dart';
import '../entities/data_tenant.dart';
import '../entities/master_tenant.dart';

abstract class TenancyRepository {
  Future<Either<Failure, List<MasterTenant>>> getMasterFromNetwork(String kdtk);

  Future<Either<Failure, List<MasterTenant>>> getMasterFromLocal();

  Future<Either<Failure, List<DataTenant>>> putData(DataTenant data);

  Future<Either<Failure, List<DataTenant>>> putManyData(
      List<DataTenant> entities);

  Future<Either<Failure, List<DataTenant>>> fetchData(String kdtk);

  Future<Either<Failure, List<DataTenant>>> deleteData(int id);

  Future<Either<Failure, List<DataTenant>>> truncateData();

  Future<Either<Failure, BaseResponse>> uploadData(List<DataTenant> data);
}
