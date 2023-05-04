import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entities/lock_key.dart';
import '../repositories/menu_opname_repository.dart';

@lazySingleton
class ScanBarcodeUseCase extends UseCase<LockKey, String> {
  final MenuOpnameRepository _repository;

  ScanBarcodeUseCase(@Named("menuOpnameRepository") this._repository);

  @override
  Future<Either<Failure, LockKey>> call(String params) async {
    return await _repository.scanBarcode(params);
  }
}
