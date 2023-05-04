import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '/core/failure/failure.dart';
import '/core/usecase/usecase.dart';
import '/features/common/domain/repositories/common_repository.dart';

@lazySingleton
class RequestCameraUseCase implements UseCase<PermissionStatus, NoParams> {
  final CommonRepository _repository;
  RequestCameraUseCase(@Named('commonRepository') this._repository);

  @override
  Future<Either<Failure, PermissionStatus>> call(NoParams params) async {
    return await _repository.requestCameraPermission();
  }
}
