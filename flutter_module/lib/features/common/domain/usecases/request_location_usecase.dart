import 'package:injectable/injectable.dart';

import '/core/failure/failure.dart';
import 'package:fpdart/fpdart.dart';
import '/core/usecase/usecase.dart';
import '/features/common/domain/repositories/common_repository.dart';
import 'package:permission_handler/permission_handler.dart';

@lazySingleton
class RequestLocationUseCase implements UseCase<PermissionStatus, NoParams> {
  final CommonRepository _repository;
  RequestLocationUseCase(@Named('commonRepository') this._repository);
  @override
  Future<Either<Failure, PermissionStatus>> call(NoParams params) async {
    return await _repository.requestLocationPermission();
  }
}
