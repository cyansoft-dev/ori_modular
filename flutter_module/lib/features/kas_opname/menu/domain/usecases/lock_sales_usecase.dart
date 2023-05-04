import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/failure/failure.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../common/domain/entities/base_response.dart';
import '../repositories/menu_opname_repository.dart';

@lazySingleton
class LockSalesUseCase extends UseCase<BaseResponse, LockSalesParams> {
  final MenuOpnameRepository _repository;

  LockSalesUseCase(@Named("menuOpnameRepository") this._repository);

  @override
  Future<Either<Failure, BaseResponse>> call(LockSalesParams params) async {
    return await _repository.lockDataSales(
      params.kodeToko,
      params.station,
    );
  }
}

class LockSalesParams {
  final String kodeToko;
  final String station;

  LockSalesParams({
    required this.kodeToko,
    required this.station,
  });
}
